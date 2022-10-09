import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';
import 'package:student/infrastructure/attendance/models/event.object.dart';

class ScanObject extends ParseObject implements ParseCloneable {
  ScanObject() : super(_kTableName);
  ScanObject.clone() : super.clone(_kTableName);

  static const String _kTableName = 'Scan';

  @override
  clone(Map<String, dynamic> map) => ScanObject.clone()..fromJson(map);

  static const String kScannedInAt = 'scannedInAt';
  static const String kScannedOutAt = 'scannedOutAt';
  static const String kUser = 'user';
  static const String kEvent = 'event';

  DateTime? get scannedInAt => get<DateTime>(kScannedInAt);
  set scannedInAt(DateTime? scannedInAt) =>
      set<DateTime?>(kScannedInAt, scannedInAt);

  DateTime? get scannedOutAt => get<DateTime>(kScannedOutAt);
  set scannedOutAt(DateTime? scannedOutAt) =>
      set<DateTime?>(kScannedOutAt, scannedOutAt);

  ParseUser? get user => get<ParseUser>(kUser);
  set user(ParseUser? user) => set<ParseUser?>(kUser, user);

  EventObject? get event => get<EventObject>(kEvent);
  set event(EventObject? event) => set<EventObject?>(kEvent, event);
}
