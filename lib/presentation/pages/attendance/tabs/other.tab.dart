import 'package:flutter/material.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';
import 'package:student/domain/core/config/injectable.core.dart';
import 'package:student/domain/core/enums/types.enum.dart';
import 'package:student/domain/core/extensions/string.ext.dart';
import 'package:student/infrastructure/attendance/models/event.object.dart';
import 'package:student/infrastructure/attendance/models/event_type.model.dart';
import 'package:student/infrastructure/attendance/models/scan.object.dart';
import 'package:student/presentation/widgets/lists/scan_list.widget.dart';

class OtherTabPage extends StatelessWidget {
  const OtherTabPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScanListWidget(
      category: EventCategory.other,
      query: query(category: EventCategory.other),
    );
  }
}

QueryBuilder<ScanObject> query({required EventCategory category}) {
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
