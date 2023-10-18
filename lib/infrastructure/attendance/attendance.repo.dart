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
import 'package:student/infrastructure/attendance/models/event.object.dart';
import 'package:student/infrastructure/attendance/models/event_type.object.dart';
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
      ..includeObject([ScanObject.kEvent])
      ..orderByDescending(ScanObject.kScannedInAt);

    return Right(query);
  }

  @override
  QueryBuilder<ScanObject> getQuery(
      {required ParseUser user, required EventType eventType}) {
    // Get event type of given category
    final eventTypeQuery = QueryBuilder<EventTypeObject>(EventTypeObject())
      ..whereEqualTo(EventTypeObject.kCategory, eventType.name.capitalize);

    // Get all events of the given type
    final eventQuery = QueryBuilder<EventObject>(EventObject())
      ..whereMatchesQuery(EventObject.kEventType, eventTypeQuery);

    // get all scans of the above events
    final query = QueryBuilder<ScanObject>(ScanObject())
      ..whereEqualTo(ScanObject.kUser, user.toPointer())
      ..whereMatchesQuery(ScanObject.kEvent, eventQuery)
      ..includeObject([ScanObject.kEvent])
      ..orderByDescending(ScanObject.kScannedInAt)
      ..excludeKeys([ScanObject.kSelfie]);

    return query;
  }

  static QueryBuilder<ScanObject> scanQuery({required EventCategory category}) {
    final ParseUser user = getIt<AuthBloc>()
        .state
        .currentUserOption
        .getOrElse(() => ParseUser(null, null, null));

    // Get event type of given category
    final eventTypeQuery = QueryBuilder<EventTypeObject>(EventTypeObject())
      ..whereEqualTo(EventTypeObject.kCategory, category.name.capitalize);

    // Get all events of the given type
    final eventQuery = QueryBuilder<EventObject>(EventObject())
      ..whereMatchesQuery(EventObject.kEventType, eventTypeQuery);

    // get all scans of the above events
    final query = QueryBuilder<ScanObject>(ScanObject())
      ..whereEqualTo(ScanObject.kUser, user.toPointer())
      ..whereMatchesQuery(ScanObject.kEvent, eventQuery)
      ..includeObject(
          [ScanObject.kEvent, "${ScanObject.kEvent}.${EventObject.kEventType}"])
      ..orderByDescending(ScanObject.kScannedInAt)
      ..excludeKeys([ScanObject.kSelfie])
      ..setLimit(50);

    return query;
  }

  @override
  Future<Either<AttendanceFailure, List<ScanObject>>> getAllScans(
      {EventCategory? category}) async {
    final query = buildQuery(category: category);
    final resp = await query.query();
    if (resp.success) {
      return Right(
          resp.results == null ? [] : resp.results!.cast<ScanObject>());
    } else {
      return Left(AttendanceFailure.serverError(
          message: resp.error?.message ?? "Server error"));
    }
  }

  QueryBuilder<ScanObject> buildQuery({EventCategory? category}) {
    var query = QueryBuilder<ScanObject>(ScanObject())
      ..whereEqualTo(ScanObject.kUser, getIt<ParseUser>().toPointer())
      ..includeObject([
        ScanObject.kEvent,
        "${ScanObject.kEvent}.${EventObject.kEventType}",
      ])
      ..orderByDescending(ScanObject.kScannedInAt)
      ..excludeKeys([ScanObject.kSelfie])
      ..setLimit(50);

    if (category != null) {
      query.whereMatchesQuery(
        ScanObject.kEvent,
        QueryBuilder<EventObject>(EventObject())
          ..whereMatchesQuery(
            EventObject.kEventType,
            QueryBuilder<EventTypeObject>(EventTypeObject())
              ..whereEqualTo(
                EventTypeObject.kCategory,
                category.name.capitalize,
              ),
          ),
      );
    }

    return query;
  }
}
