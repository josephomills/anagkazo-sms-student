part of 'attendance_bloc.dart';

@freezed
class AttendanceState with _$AttendanceState {
  const factory AttendanceState({
    required bool isLoading,
    required Option<Either<AttendanceFailure, QueryBuilder<ScanObject>>>
        failureOrQueryOption,
    required Option<Either<AttendanceFailure, List<QueryBuilder<ScanObject>>>>
        failureOrQueriesList,
  }) = _AttendanceState;

  factory AttendanceState.initial() => AttendanceState(
        isLoading: false,
        failureOrQueryOption: none(),
        failureOrQueriesList: none(),
      );
}
