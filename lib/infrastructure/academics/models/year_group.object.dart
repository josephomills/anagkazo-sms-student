import 'package:parse_server_sdk_flutter/parse_server_sdk_flutter.dart';

class YearGroupObject extends ParseObject implements ParseCloneable {
  YearGroupObject() : super(_kTableName);
  YearGroupObject.clone() : super.clone(_kTableName);

  static const String _kTableName = 'YearGroup';

  @override
  clone(Map<String, dynamic> map) => YearGroupObject.clone()..fromJson(map);

  static const String kName = 'name';

  String? get name => get<String>(kName);
  set name(String? name) => set<String?>(kName, name);

  static const String kAdmittedAt = 'admittedAt';

  DateTime? get admittedAt => get<DateTime>(kAdmittedAt);
  set admittedAt(DateTime? admittedAt) =>
      set<DateTime?>(kAdmittedAt, admittedAt);
}
