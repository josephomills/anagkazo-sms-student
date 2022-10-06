import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';
import 'package:student/infrastructure/attendance/models/event.object.dart';

class ScanObject extends ParseObject implements ParseCloneable {
  ScanObject() : super(_kTableName);
  ScanObject.clone() : super.clone(_kTableName);

  static const String _kTableName = 'Scan';

  @override
  clone(Map<String, dynamic> map) => ScanObject.clone()..fromJson(map);

  static const String kDateTime = 'dateTime';
  static const String kUser = 'user';
  static const String kIsLate = 'isLate';
  static const String kEvent = 'event';
  static const String kType = 'type';

  DateTime? get dateTime => get<DateTime>(kDateTime);
  set setDateTime(DateTime dateTime) => set<DateTime>(kDateTime, dateTime);

  ParseUser? get user => get<ParseUser>(kUser);
  set setUser(ParseUser user) => set<ParseUser>(kUser, user);

  EventObject? get event => get<EventObject>(kEvent);
  set setEvent(EventObject event) => set<EventObject>(kEvent, event);

  bool? get isLate => get<bool>(kIsLate);
  set setIsLate(bool isLate) => set<bool>(kIsLate, isLate);

  String? get type => get<String>(kType);
  set setType(String type) => set<String>(kType, type);
}
