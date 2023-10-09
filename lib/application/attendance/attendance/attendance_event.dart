part of 'attendance_bloc.dart';

@freezed
class AttendanceEvent with _$AttendanceEvent {
  const factory AttendanceEvent.tabSelected({required int index}) =
      _TabSelected;
  const factory AttendanceEvent.scansFetched(
      {required EventCategory category}) = _ScansFetched;
  const factory AttendanceEvent.allScansFetched() = _AllScansFetched;
}
