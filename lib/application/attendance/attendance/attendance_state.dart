part of 'attendance_bloc.dart';

@freezed
class AttendanceState with _$AttendanceState {
  const factory AttendanceState({
    required bool isLoading,
    required int selectedTab,
    required Either<AttendanceFailure, List<ScanObject>> failureOrLectureScans,
    required Either<AttendanceFailure, List<ScanObject>> failureOrChurchScans,
    required Either<AttendanceFailure, List<ScanObject>> failureOrOtherScans,
  }) = _AttendanceState;

  factory AttendanceState.initial() => const AttendanceState(
        isLoading: false,
        selectedTab: TabIndex.lecture,
        failureOrLectureScans: Right([]),
        failureOrChurchScans: Right([]),
        failureOrOtherScans: Right([]),
      );
}
