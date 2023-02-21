import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:parse_server_sdk/parse_server_sdk.dart';
import 'package:student/application/attendance/attendance/attendance_bloc.dart';
import 'package:student/domain/core/config/injectable.core.dart';
import 'package:student/domain/attendance/attendance.facade.dart';
import 'package:student/domain/attendance/attendance.failure.dart';
import 'package:student/domain/core/enums/types.enum.dart';
import 'package:student/domain/core/extensions/string.ext.dart';
import 'package:student/infrastructure/attendance/models/event.object.dart';
import 'package:student/infrastructure/attendance/models/event_type.model.dart';
import 'package:student/infrastructure/attendance/models/scan.object.dart';

@Injectable(as: AttendanceFacade)
class AttendanceRepo implements AttendanceFacade {
  @override
  Future<Either<AttendanceFailure, QueryBuilder<ScanObject>>> getScanQuery(
      {required EventType eventType}) async {
    final user = await ParseUser.currentUser();

    if (user == null) {
      return const Left(AttendanceFailure.serverError());
    }

    final eventQuery = QueryBuilder<EventObject>(EventObject())
      ..whereEqualTo(EventObject.kName, eventType.name);
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
    final eventList = [
      EventType.vision,
      EventType.pillar,
      EventType.live,
      EventType.experience,
    ];

    for (EventType event in eventList) {
      list.add(getQuery(user: user, eventType: event));
    }

    return Right(list);
  }

  @override
  QueryBuilder<ScanObject> getQuery(
      {required ParseUser user, required EventType eventType}) {
    // Get event type of given category
    final eventTypeQuery = QueryBuilder<EventTypeObject>(EventTypeObject())
      ..whereEqualTo(EventTypeObject.kCategory, "category")
      ..keysToReturn([EventTypeObject.kName, EventTypeObject.kCategory]);

    // Get all events of the given type
    final eventQuery = QueryBuilder<EventObject>(EventObject())
      ..whereMatchesQuery(EventObject.kType, eventTypeQuery)
      ..includeObject(["type"])
      ..excludeKeys([EventObject.kExcluded]);

    // get all scans of the above events
    final query = QueryBuilder<ScanObject>(ScanObject())
      ..whereEqualTo(ScanObject.kUser, user.toPointer())
      ..whereMatchesQuery(ScanObject.kEvent, eventQuery)
      ..includeObject(["event"])
      ..orderByDescending(ScanObject.kScannedInAt)
      ..excludeKeys([ScanObject.kSelfie]);

    return query;
  }

  static QueryBuilder<ScanObject> scanQuery({required EventCategory category}) {
    // Get event type of given category
    final eventTypeQuery = QueryBuilder<EventTypeObject>(EventTypeObject())
      ..whereEqualTo(EventTypeObject.kCategory, category.name.capitalize)
      ..keysToReturn([EventTypeObject.kName, EventTypeObject.kCategory]);

    // Get all events of the given type
    final eventQuery = QueryBuilder<EventObject>(EventObject())
      ..whereMatchesQuery(EventObject.kType, eventTypeQuery)
      ..includeObject(["type"])
      ..excludeKeys([EventObject.kExcluded]);

    // get all scans of the above events
    final query = QueryBuilder<ScanObject>(ScanObject())
      ..whereEqualTo(ScanObject.kUser, getIt<ParseUser>().toPointer())
      ..whereMatchesQuery(ScanObject.kEvent, eventQuery)
      ..includeObject(["event"])
      ..orderByDescending(ScanObject.kScannedInAt)
      ..excludeKeys([ScanObject.kSelfie]);

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
