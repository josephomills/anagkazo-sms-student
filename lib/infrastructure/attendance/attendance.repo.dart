import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:parse_server_sdk/parse_server_sdk.dart';
import 'package:student/application/attendance/attendance/attendance_bloc.dart';
import 'package:student/core/config/injectable.core.dart';
import 'package:student/domain/attendance/attendance.facade.dart';
import 'package:student/domain/attendance/attendance.failure.dart';
import 'package:student/core/enums/lecture_type.enum.dart';
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

  static QueryBuilder<ScanObject> getQueryBuilder(
      {required LectureType lectureType}) {
    switch (lectureType) {
      case LectureType.vision:
        return getIt<AttendanceBloc>().state.visionQueryOption;
      case LectureType.pillar:
        return getIt<AttendanceBloc>().state.pillarQueryOption;
      case LectureType.anagkazoLive:
        return getIt<AttendanceBloc>().state.aLiveQueryOption;
      case LectureType.firstLoveExperience:
        return getIt<AttendanceBloc>().state.flExpQueryOption;
      default:
        return QueryBuilder(ScanObject());
    }
  }
}
