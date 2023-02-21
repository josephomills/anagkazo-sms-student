part of 'attendance_bloc.dart';

@freezed
class AttendanceEvent with _$AttendanceEvent {
  const factory AttendanceEvent.tabSelected({required EventType eventType}) =
      _TabSelected;

  const factory AttendanceEvent.getAllQueries() = _GetAllQueries;
}
