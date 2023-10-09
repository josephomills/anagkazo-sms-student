import 'package:dartz/dartz.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk_flutter.dart';
import 'package:student/domain/attendance/attendance.failure.dart';
import 'package:student/domain/core/enums/types.enum.dart';
import 'package:student/infrastructure/attendance/models/scan.object.dart';

abstract class AttendanceFacade {
  Future<Either<AttendanceFailure, QueryBuilder<ScanObject>>> getScanQuery(
      {required EventType eventType});
  Future<Either<AttendanceFailure, List<ScanObject>>> getAllScans(
      {EventCategory? category});
  QueryBuilder<ScanObject> getQuery(
      {required ParseUser user, required EventType eventType});
}
