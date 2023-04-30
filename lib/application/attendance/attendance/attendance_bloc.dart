import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk_flutter.dart';
import 'package:student/domain/attendance/attendance.facade.dart';
import 'package:student/domain/attendance/attendance.failure.dart';
import 'package:student/domain/core/enums/types.enum.dart';
import 'package:student/infrastructure/attendance/models/scan.object.dart';

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
          emit(state.copyWith(isLoading: true));

          final failureOrQuery =
              await _attFacade.getScanQuery(eventType: e.eventType);

          emit(state.copyWith(
            isLoading: false,
            failureOrQueryOption: some(failureOrQuery),
          ));
        },
        getAllQueries: (e) async {
          emit(state.copyWith(isLoading: true));
          final user = await ParseUser.currentUser();

          final failureOrQueriesList = await _attFacade.getAllScanQueries();

          final visionQuery =
              _attFacade.getQuery(user: user, eventType: EventType.vision);
          final pillarQuery =
              _attFacade.getQuery(user: user, eventType: EventType.pillar);
          final aLiveQuery =
              _attFacade.getQuery(user: user, eventType: EventType.live);
          final flExpQuery =
              _attFacade.getQuery(user: user, eventType: EventType.experience);

          emit(state.copyWith(
            isLoading: false,
            failureOrQueriesList: some(failureOrQueriesList),
            visionQueryOption: visionQuery,
            pillarQueryOption: pillarQuery,
            aLiveQueryOption: aLiveQuery,
            flExpQueryOption: flExpQuery,
          ));
        },
      );
    });
  }
}
