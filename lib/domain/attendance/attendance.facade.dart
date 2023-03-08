import 'package:dartz/dartz.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';
import 'package:student/domain/attendance/attendance.failure.dart';
import 'package:student/domain/core/enums/types.enum.dart';
import 'package:student/infrastructure/attendance/models/scan.object.dart';

abstract class AttendanceFacade {
  Future<Either<AttendanceFailure, QueryBuilder<ScanObject>>> getScanQuery(
      {required GatheringType gatheringType});
  Future<Either<AttendanceFailure, List<QueryBuilder<ScanObject>>>>
      getAllScanQueries();
  QueryBuilder<ScanObject> getQuery(
      {required ParseUser user, required GatheringType gatheringType});
}
