import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:parse_server_sdk/parse_server_sdk.dart';
import 'package:student/application/attendance/attendance/attendance_bloc.dart';
import 'package:student/application/auth/auth/auth_bloc.dart';
import 'package:student/domain/core/config/injectable.core.dart';
import 'package:student/domain/attendance/attendance.facade.dart';
import 'package:student/domain/attendance/attendance.failure.dart';
import 'package:student/domain/core/enums/types.enum.dart';
import 'package:student/domain/core/extensions/string.ext.dart';
import 'package:student/infrastructure/attendance/models/gathering.object.dart';
import 'package:student/infrastructure/attendance/models/gathering_type.object.dart';
import 'package:student/infrastructure/attendance/models/scan.object.dart';

@Injectable(as: AttendanceFacade)
class AttendanceRepo implements AttendanceFacade {
  @override
  Future<Either<AttendanceFailure, QueryBuilder<ScanObject>>> getScanQuery(
      {required GatheringType gatheringType}) async {
    final user = await ParseUser.currentUser();

    if (user == null) {
      return const Left(AttendanceFailure.serverError());
    }

    final gatheringQuery = QueryBuilder<GatheringObject>(GatheringObject())
      ..whereEqualTo(GatheringObject.kName, gatheringType.name);
    final query = QueryBuilder<ScanObject>(ScanObject())
      ..whereEqualTo(ScanObject.kUser, user.toPointer())
      ..whereMatchesQuery(ScanObject.kGathering, gatheringQuery)
      ..includeObject([ScanObject.kGathering])
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
    final gatheringList = [
      GatheringType.vision,
      GatheringType.pillar,
      GatheringType.live,
      GatheringType.experience,
    ];

    for (GatheringType gathering in gatheringList) {
      list.add(getQuery(user: user, gatheringType: gathering));
    }

    return Right(list);
  }

  @override
  QueryBuilder<ScanObject> getQuery(
      {required ParseUser user, required GatheringType gatheringType}) {
    // Get gathering type of given category
    final gatheringTypeQuery =
        QueryBuilder<GatheringTypeObject>(GatheringTypeObject())
          ..whereEqualTo(GatheringTypeObject.kCategory, "category")
          ..keysToReturn(
              [GatheringTypeObject.kName, GatheringTypeObject.kCategory]);

    // Get all gatherings of the given type
    final gatheringQuery = QueryBuilder<GatheringObject>(GatheringObject())
      ..whereMatchesQuery(GatheringObject.kGatheringType, gatheringTypeQuery)
      ..includeObject([GatheringObject.kGatheringType])
      ..excludeKeys([GatheringObject.kExcluded]);

    // get all scans of the above gatherings
    final query = QueryBuilder<ScanObject>(ScanObject())
      ..whereEqualTo(ScanObject.kUser, user.toPointer())
      ..whereMatchesQuery(ScanObject.kGathering, gatheringQuery)
      ..includeObject([ScanObject.kGathering])
      ..orderByDescending(ScanObject.kScannedInAt)
      ..excludeKeys([ScanObject.kSelfie]);

    return query;
  }

  static QueryBuilder<ScanObject> scanQuery(
      {required GatheringCategory category}) {
    final ParseUser user = getIt<AuthBloc>()
        .state
        .currentUserOption
        .getOrElse(() => ParseUser(null, null, null));

    // Get gathering type of given category
    final gatheringTypeQuery = QueryBuilder<GatheringTypeObject>(
        GatheringTypeObject())
      ..whereEqualTo(GatheringTypeObject.kCategory, category.name.capitalize);

    // Get all gatherings of the given type
    final gatheringQuery = QueryBuilder<GatheringObject>(GatheringObject())
      ..whereMatchesQuery(GatheringObject.kGatheringType, gatheringTypeQuery);

    // get all scans of the above gatherings
    final query = QueryBuilder<ScanObject>(ScanObject())
      ..includeObject([ScanObject.kGathering, "gathering.gatheringType"])
      ..orderByDescending(ScanObject.kScannedInAt)
      ..excludeKeys([ScanObject.kSelfie])
      ..setLimit(100)
      ..whereEqualTo(ScanObject.kUser, user.toPointer())
      ..whereMatchesQuery(ScanObject.kGathering, gatheringQuery);

    return query;
  }

  static QueryBuilder<ScanObject> getQueryBuilder(
      {required EventType eventType}) {
    switch (eventType) {
      case EventType.vision:
        return getIt<AttendanceBloc>().state.visionQueryOption;
      case EventType.pillar:
        return getIt<AttendanceBloc>().state.pillarQueryOption;
      case EventType.live:
        return getIt<AttendanceBloc>().state.aLiveQueryOption;
      case EventType.experience:
        return getIt<AttendanceBloc>().state.flExpQueryOption;
      default:
        return QueryBuilder(ScanObject());
    }
  }
}
