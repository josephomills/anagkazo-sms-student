import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';

class MemberObject extends ParseObject implements ParseCloneable {
  MemberObject() : super(_kTableName);
  MemberObject.clone() : super.clone(_kTableName);

  static const String _kTableName = 'Member';

  @override
  clone(Map<String, dynamic> map) => MemberObject.clone()..fromJson(map);

  static const String kFirstName = 'firstName';
  static const String kLastName = 'lastname';
  static const String kCountry = 'country';
  static const String kGender = 'gender';
  static const String kDob = 'dob';
  static const String kEmail = 'email';
  static const String kPhone = 'phone';
  static const String kPhotoUrl = 'photoUrl';
  static const String kWhatsapp = 'whatsapp';

  String? get firstName => get<String>(kFirstName);
  set setFirstName(String firstName) => set<String>(kFirstName, firstName);

  String? get lastname => get<String>(kLastName);
  set setLastName(String lastname) => set<String>(kLastName, lastname);

  String? get country => get<String>(kCountry);
  set setCountry(String country) => set<String>(kCountry, country);

  String? get gender => get<String>(kGender);
  set setGender(String gender) => set<String>(kGender, gender);

  DateTime? get dob => get<DateTime>(kDob);
  set setDob(DateTime dob) => set<DateTime>(kDob, dob);

  String? get email => get<String>(kEmail);
  set setEmail(String email) => set<String>(kEmail, email);

  String? get phone => get<String>(kPhone);
  set setPhone(String phone) => set<String>(kPhone, phone);

  String? get photoUrl => get<String>(kPhotoUrl);
  set setPhotoUrl(String photoUrl) => set<String>(kPhotoUrl, photoUrl);

  String? get whatsapp => get<String>(kWhatsapp);
  set setWhatsapp(String whatsapp) => set<String>(kWhatsapp, whatsapp);
}
