import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';

class EventObject extends ParseObject implements ParseCloneable {
  EventObject() : super(_kTableName);
  EventObject.clone() : super.clone(_kTableName);

  static const String _kTableName = 'Event';
  static const String kName = 'name';
  static const String kShortname = 'shortname';
  static const String kType = 'type';
  static const String kDate = 'date';
  static const String kLatenessRule = 'latenessRule';

  @override
  clone(Map<String, dynamic> map) => EventObject.clone()..fromJson(map);

  String? get name => get<String>(kName);
  set setName(String name) => set<String>(kName, name);

  String? get shortname => get<String>(kShortname);
  set setShortname(String shortname) => set<String>(kShortname, shortname);

  String? get type => get<String>(kType);
  set setType(String type) => set<String>(kType, type);

  DateTime? get date => get<DateTime>(kDate);
  set setDate(DateTime date) => set<DateTime>(kDate, date);

  num? get latenessRule => get<num>(kLatenessRule);
  set setLatenessRule(num latenessRule) =>
      set<num>(kLatenessRule, latenessRule);
}
