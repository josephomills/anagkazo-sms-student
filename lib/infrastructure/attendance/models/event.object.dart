import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';

class EventObject extends ParseObject implements ParseCloneable {
  EventObject() : super(_kTableName);
  EventObject.clone() : super.clone(_kTableName);

  static const String _kTableName = 'Event';
  static const String kName = 'name';
  static const String kShortname = 'shortname';
  static const String kType = 'type';
  static const String kStartsAt = 'startsAt';
  static const String kLatenessRule = 'latenessRule';

  @override
  clone(Map<String, dynamic> map) => EventObject.clone()..fromJson(map);

  String? get name => get<String>(kName);
  set name(String? name) => set<String?>(kName, name);

  String? get shortname => get<String>(kShortname);
  set shortname(String? shortname) => set<String?>(kShortname, shortname);

  String? get type => get<String>(kType);
  set type(String? type) => set<String?>(kType, type);

  DateTime? get startsAt => get<DateTime>(kStartsAt);
  set startsAt(DateTime? startsAt) => set<DateTime?>(kStartsAt, startsAt);

  int? get latenessRule => get<int>(kLatenessRule);
  set latenessRule(int? latenessRule) => set<int?>(kLatenessRule, latenessRule);
}
