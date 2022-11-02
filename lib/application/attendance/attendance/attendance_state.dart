part of 'attendance_bloc.dart';

@freezed
class AttendanceState with _$AttendanceState {
  const factory AttendanceState({
    required bool isLoading,
    required Option<Either<AttendanceFailure, QueryBuilder<ScanObject>>>
        failureOrQueryOption,
    required Option<Either<AttendanceFailure, List<QueryBuilder<ScanObject>>>>
        failureOrQueriesList,
    required Option<QueryBuilder<ScanObject>> visionQueryOption,
    required Option<QueryBuilder<ScanObject>> pillarQueryOption,
    required Option<QueryBuilder<ScanObject>> aLiveQueryOption,
    required Option<QueryBuilder<ScanObject>> flExpQueryOption,
  }) = _AttendanceState;

  factory AttendanceState.initial() => AttendanceState(
        isLoading: false,
        failureOrQueryOption: none(),
        failureOrQueriesList: none(),
        visionQueryOption: none(),
        pillarQueryOption: none(),
        aLiveQueryOption: none(),
        flExpQueryOption: none(),
      );
}
