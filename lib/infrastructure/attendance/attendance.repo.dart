import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:parse_server_sdk/parse_server_sdk.dart';
import 'package:student/domain/attendance/attendance.facade.dart';
import 'package:student/domain/attendance/attendance.failure.dart';
import 'package:student/domain/attendance/lectureType.enum.dart';
import 'package:student/infrastructure/attendance/models/event.object.dart';
import 'package:student/infrastructure/attendance/models/scan.object.dart';

@Injectable(as: AttendanceFacade)
class AttendanceRepo implements AttendanceFacade {
  @override
  Future<Either<AttendanceFailure, QueryBuilder<ScanObject>>> getScans(
      {required LectureType lectureType}) async {
    final user = await ParseUser.currentUser();

    if (user == null) {
      return const Left(AttendanceFailure.serverError());
    }

    final eventQuery = QueryBuilder<EventObject>(EventObject())
      ..whereEqualTo(EventObject.kShortname, lectureType.shortname);
    final query = QueryBuilder<ScanObject>(ScanObject())
      ..whereEqualTo(ScanObject.kUser, user.toPointer())
      ..whereMatchesQuery(ScanObject.kEvent, eventQuery);

    query.includeObject(["Event"]);
    query.orderByDescending(ScanObject.kDateTime);
    return Right(query);
  }
}
