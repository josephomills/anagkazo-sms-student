import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';

class EventTypeObject extends ParseObject implements ParseCloneable {
  EventTypeObject() : super(_kTableName);
  EventTypeObject.clone() : super.clone(_kTableName);

  static const String _kTableName = 'EventType';

  @override
  clone(Map<String, dynamic> map) => EventTypeObject.clone()..fromJson(map);

  static const String kName = 'name';

  String? get name => get<String>(kName);
  set name(String? name) => set<String?>(kName, name);

  static const String kCategory = 'category';

  String? get category => get<String>(kCategory);
  set category(String? category) => set<String?>(kCategory, category);
}
