import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';
import 'package:student/domain/attendance/attendance.facade.dart';
import 'package:student/domain/attendance/attendance.failure.dart';
import 'package:student/domain/attendance/lectureType.enum.dart';
import 'package:student/infrastructure/attendance/models/scan.object.dart';

part 'attendance_event.dart';
part 'attendance_state.dart';
part 'attendance_bloc.freezed.dart';

@injectable
class AttendanceBloc extends Bloc<AttendanceEvent, AttendanceState> {
  final AttendanceFacade _attFacade;

  AttendanceBloc(this._attFacade) : super(AttendanceState.initial()) {
    on<AttendanceEvent>((event, emitter) async {
      await event.map<FutureOr<void>>(
        getScans: (e) async {
          emitter.call(state.copyWith(isLoading: true));

          final failureOrQuery =
              await _attFacade.getScans(lectureType: e.lectureType);

          emitter.call(state.copyWith(
            isLoading: false,
            failureOrQueryOption: some(failureOrQuery),
          ));

          // final query =
          //     failureOrQuery.getOrElse(() => QueryBuilder(ScanObject()));
        },
      );
    });
  }
}
