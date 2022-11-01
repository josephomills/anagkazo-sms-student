part of 'attendance_bloc.dart';

@freezed
class AttendanceEvent with _$AttendanceEvent {
  const factory AttendanceEvent.tabSelected(
      {required LectureType lectureType}) = _TabSelected;
}
