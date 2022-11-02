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
  Future<Either<AttendanceFailure, QueryBuilder<ScanObject>>> getScanQuery(
      {required LectureType lectureType}) async {
    final user = await ParseUser.currentUser();

    if (user == null) {
      return const Left(AttendanceFailure.serverError());
    }

    final eventQuery = QueryBuilder<EventObject>(EventObject())
      ..whereEqualTo(EventObject.kShortname, lectureType.shortname);
    final query = QueryBuilder<ScanObject>(ScanObject())
      ..whereEqualTo(ScanObject.kUser, user.toPointer())
      ..whereMatchesQuery(ScanObject.kEvent, eventQuery)
      ..includeObject(["event"])
      ..orderByDescending(ScanObject.kScannedInAt);

    return Right(query);
  }

  @override
  Future<Either<AttendanceFailure, List<QueryBuilder<ScanObject>>>>
      getAllScanQueries() async {
    final user = await ParseUser.currentUser();

    if (user == null) {
      return const Left(AttendanceFailure.serverError());
    }

    List<QueryBuilder<ScanObject>> list = [];
    final lectureList = [
      LectureType.vision,
      LectureType.pillar,
      LectureType.anagkazoLive,
      LectureType.firstLoveExperience,
    ];

    for (LectureType lecture in lectureList) {
      list.add(getQuery(user: user, lectureType: lecture));
    }

    return Right(list);
  }

  @override
  QueryBuilder<ScanObject> getQuery(
      {required ParseUser user, required LectureType lectureType}) {
    final eventQuery = QueryBuilder<EventObject>(EventObject())
      ..whereEqualTo(EventObject.kShortname, lectureType.shortname);
    final query = QueryBuilder<ScanObject>(ScanObject())
      ..whereEqualTo(ScanObject.kUser, user.toPointer())
      ..whereMatchesQuery(ScanObject.kEvent, eventQuery)
      ..includeObject(["event"])
      ..orderByDescending(ScanObject.kScannedInAt);

    return query;
  }
}
