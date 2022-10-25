part of 'attendance_bloc.dart';

@freezed
class AttendanceState with _$AttendanceState {
  const factory AttendanceState({
    required bool isLoading,
    required Option<Either<AttendanceFailure, QueryBuilder<ScanObject>>>
        failureOrQueryOption,
  }) = _AttendanceState;

  factory AttendanceState.initial() => AttendanceState(
        isLoading: false,
        failureOrQueryOption: none(),
      );
}
