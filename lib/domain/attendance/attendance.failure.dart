import 'package:freezed_annotation/freezed_annotation.dart';

part 'attendance.failure.freezed.dart';

@freezed
abstract class AttendanceFailure with _$AttendanceFailure {
  const factory AttendanceFailure.serverError({String? message}) = _ServerError;
}
