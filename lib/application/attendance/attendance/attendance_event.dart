part of 'attendance_bloc.dart';

@freezed
class AttendanceEvent with _$AttendanceEvent {
  const factory AttendanceEvent.getScans({required LectureType lectureType}) =
      _GetScans;
}
