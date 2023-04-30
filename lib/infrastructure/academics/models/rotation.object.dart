import 'package:parse_server_sdk_flutter/parse_server_sdk_flutter.dart';

class RotationObject extends ParseObject implements ParseCloneable {
  RotationObject() : super(_kTableName);
  RotationObject.clone() : super.clone(_kTableName);

  static const String _kTableName = 'Rotation';

  @override
  clone(Map<String, dynamic> map) => RotationObject.clone()..fromJson(map);

  static const String kName = 'name';

  String? get name => get<String>(kName);
  set name(String? name) => set<String?>(kName, name);

  static const String kShort = 'shortName';

  String? get shortName => get<String>(kShort);
  set shortName(String? shortName) => set<String?>(kShort, shortName);

  static const String kDescription = 'description';

  String? get description => get<String>(kDescription);
  set description(String? description) =>
      set<String?>(kDescription, description);
}
