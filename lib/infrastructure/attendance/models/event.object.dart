import 'package:parse_server_sdk_flutter/parse_server_sdk_flutter.dart';
import 'package:student/infrastructure/academics/models/year_group.object.dart';
import 'package:student/infrastructure/attendance/models/event_type.object.dart';

class EventObject extends ParseObject implements ParseCloneable {
  EventObject() : super(_kTableName);
  EventObject.clone() : super.clone(_kTableName);

  static const String _kTableName = 'Event';

  @override
  clone(Map<String, dynamic> map) => EventObject.clone()..fromJson(map);

  static const String kName = 'name';

  String? get name => get<String>(kName);
  set name(String? name) => set<String?>(kName, name);

  static const String kEventType = 'eventType';

  EventTypeObject? get eventType => get<EventTypeObject>(kEventType);
  set eventType(EventTypeObject? eventType) =>
      set<EventTypeObject?>(kEventType, eventType);

  static const String kStartsAt = 'startsAt';

  DateTime? get startsAt => get<DateTime>(kStartsAt);
  set startsAt(DateTime? startsAt) => set<DateTime?>(kStartsAt, startsAt);

  static const String kLatenessRule = 'latenessRule';

  int? get latenessRule => get<int>(kLatenessRule);
  set latenessRule(int? latenessRule) => set<int?>(kLatenessRule, latenessRule);

  static const String kExcluded = 'excluded';

  List<YearGroupObject>? get excluded => get<List<YearGroupObject>>(kExcluded);
  set excluded(List<YearGroupObject>? excluded) =>
      set<List<YearGroupObject>?>(kExcluded, excluded);
}
