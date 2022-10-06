import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';

class YearGroupObject extends ParseObject implements ParseCloneable {
  YearGroupObject() : super(_kTableName);
  YearGroupObject.clone() : super.clone(_kTableName);

  static const String _kTableName = 'YearGroup';
  static const String kName = 'name';
  static const String kAdmittedAt = 'admittedAt';

  @override
  clone(Map<String, dynamic> map) => YearGroupObject.clone()..fromJson(map);

  String? get name => get<String>(kName);
  set setName(String name) => set<String>(kName, name);

  DateTime? get admittedAt => get<DateTime>(kAdmittedAt);
  set setAdmittedAt(DateTime admittedAt) =>
      set<DateTime>(kAdmittedAt, admittedAt);
}
