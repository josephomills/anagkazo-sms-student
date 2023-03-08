part of 'attendance_bloc.dart';

@freezed
class AttendanceEvent with _$AttendanceEvent {
  const factory AttendanceEvent.tabSelected(
      {required GatheringType gatheringType}) = _TabSelected;

  const factory AttendanceEvent.getAllQueries() = _GetAllQueries;
}
