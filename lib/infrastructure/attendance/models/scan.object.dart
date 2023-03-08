import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';
import 'package:student/infrastructure/attendance/models/gathering.object.dart';

class ScanObject extends ParseObject implements ParseCloneable {
  ScanObject() : super(_kTableName);
  ScanObject.clone() : super.clone(_kTableName);

  static const String _kTableName = 'Scan';

  @override
  clone(Map<String, dynamic> map) => ScanObject.clone()..fromJson(map);

  static const String kScannedInAt = 'scannedInAt';

  DateTime? get scannedInAt => get<DateTime>(kScannedInAt);
  set scannedInAt(DateTime? scannedInAt) =>
      set<DateTime?>(kScannedInAt, scannedInAt);

  static const String kScannedOutAt = 'scannedOutAt';

  DateTime? get scannedOutAt => get<DateTime>(kScannedOutAt);
  set scannedOutAt(DateTime? scannedOutAt) =>
      set<DateTime?>(kScannedOutAt, scannedOutAt);

  static const String kUser = 'user';

  ParseUser? get user => get<ParseUser>(kUser);
  set user(ParseUser? user) => set<ParseUser?>(kUser, user);

  static const String kGathering = 'gathering';

  GatheringObject? get gathering => get<GatheringObject>(kGathering);
  set gathering(GatheringObject? gathering) =>
      set<GatheringObject?>(kGathering, gathering);

  static const String kSelfie = 'selfie';

  ParseFileBase? get selfie => get<ParseFileBase>(kSelfie);
  set selfie(ParseFileBase? selfie) => set<ParseFileBase?>(kSelfie, selfie);
}
