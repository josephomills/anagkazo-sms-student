import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk_flutter.dart';
import 'package:student/domain/attendance/attendance.facade.dart';
import 'package:student/domain/attendance/attendance.failure.dart';
import 'package:student/domain/core/config/injectable.core.dart';
import 'package:student/domain/core/enums/types.enum.dart';
import 'package:student/domain/core/extensions/string.ext.dart';
import 'package:student/infrastructure/attendance/models/event.object.dart';
import 'package:student/infrastructure/attendance/models/event_type.object.dart';
import 'package:student/infrastructure/attendance/models/scan.object.dart';
import 'package:student/presentation/pages/index.page.dart';

part 'attendance_event.dart';
part 'attendance_state.dart';
part 'attendance_bloc.freezed.dart';

@injectable
class AttendanceBloc extends Bloc<AttendanceEvent, AttendanceState> {
  final AttendanceFacade _attFacade;

  AttendanceBloc(this._attFacade) : super(AttendanceState.initial()) {
    on<AttendanceEvent>((event, emit) async {
      await event.map<FutureOr<void>>(
        tabSelected: (e) async {
          emit(state.copyWith(selectedTab: e.index));
        },
        scansFetched: (e) async {
          emit(state.copyWith(isLoading: true));

          // Load scans for specified category
          final failureOrScans =
              await _attFacade.getAllScans(category: e.category);

          // refresh appropriate list
          switch (e.category) {
            case EventCategory.church:
              emit(state.copyWith(
                isLoading: false,
                failureOrChurchScans: failureOrScans,
              ));
              break;
            case EventCategory.other:
              emit(state.copyWith(
                isLoading: false,
                failureOrOtherScans: failureOrScans,
              ));
              break;
            case EventCategory.lecture:
              emit(state.copyWith(
                isLoading: false,
                failureOrLectureScans: failureOrScans,
              ));
              break;
          }
        },
        allScansFetched: (e) async {
          emit(state.copyWith(isLoading: true));

          // Load scans for each category
          final failureOrScans = await _attFacade.getAllScans();
          var churchScans = <ScanObject>[];
          var lectureScans = <ScanObject>[];
          var otherScans = <ScanObject>[];

          // filter scans into category lists
          if (failureOrScans.isRight()) {
            failureOrScans.getOrElse(() => []).map((scan) {
              if (scan.event!.eventType!.category ==
                  EventCategory.church.name.capitalize) {
                churchScans.add(scan);
              } else if (scan.event!.eventType!.category ==
                  EventCategory.lecture.name.capitalize) {
                lectureScans.add(scan);
              } else if (scan.event!.eventType!.category ==
                  EventCategory.other.name.capitalize) {
                otherScans.add(scan);
              }
            });
          }

          emit(state.copyWith(
            isLoading: false,
            failureOrChurchScans:
                failureOrScans.isLeft() ? failureOrScans : Right(churchScans),
            failureOrLectureScans:
                failureOrScans.isLeft() ? failureOrScans : Right(lectureScans),
            failureOrOtherScans:
                failureOrScans.isLeft() ? failureOrScans : Right(otherScans),
          ));
        },
      );
    });
  }

  EventCategory getCategory({required int index}) {
    switch (index) {
      case TabIndex.lecture:
        return EventCategory.church;
      case TabIndex.church:
        return EventCategory.other;
      case TabIndex.otherEvents:
      default:
        return EventCategory.lecture;
    }
  }
}
