import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';

class GatheringTypeObject extends ParseObject implements ParseCloneable {
  GatheringTypeObject() : super(_kTableName);
  GatheringTypeObject.clone() : super.clone(_kTableName);

  static const String _kTableName = 'GatheringType';

  @override
  clone(Map<String, dynamic> map) => GatheringTypeObject.clone()..fromJson(map);

  static const String kName = 'name';

  String? get name => get<String>(kName);
  set name(String? name) => set<String?>(kName, name);

  static const String kCategory = 'category';

  String? get category => get<String>(kCategory);
  set category(String? category) => set<String?>(kCategory, category);
}
