import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';
import 'package:student/infrastructure/myFellowship/models/member/member.object.dart';

class ServiceObject extends ParseObject implements ParseCloneable {
  ServiceObject() : super(_kTableName);
  ServiceObject.clone() : super.clone(_kTableName);

  static const String _kTableName = "Service";

  @override
  clone(Map<String, dynamic> map) => ServiceObject.clone()..fromJson(map);

  static const String kObjectId = 'objectId';
  static const String kType = 'type';
  static const String kDate = 'date';
  static const String kAttendance = 'attendance';
  static const String kCediIncome = 'cediIncome';
  static const String kForeignIncome = 'foreignIncome';
  static const String kNumTithers = 'numTithers';
  static const String kTreasurers = 'treasurers';
  static const String kTreasurersSelfie = 'treasurersSelfie';
  static const String kServicePhoto = 'servicePhoto';
  static const String kMembersPresent = 'membersPresent';
  static const String kFellowship = 'fellowship';

  String? get type => get<String>(kType);
  DateTime? get date => get<DateTime>(kDate);
  int? get attendance => get<int>(kAttendance);
  num? get cediIncome => get<num>(kCediIncome);
  num? get foreignIncome => get<num>(kForeignIncome);
  String? get numTithers => get<String>(kNumTithers);
  List<ParseUser>? get treasurers => get<List<ParseUser>>(kTreasurers);
  String? get treasurersSelfie => get<String>(kTreasurersSelfie);
  String? get servicePhoto => get<String>(kServicePhoto);
  List<MemberObject>? get membersPresent =>
      get<List<MemberObject>>(kMembersPresent);
  String? get fellowship => get<String>(kFellowship);

  set setType(String type) => set<String>(kType, type);
  set setDate(DateTime date) => set<String>(kDate, date.toIso8601String());
  set setAttendance(int attendance) => set<int>(kAttendance, attendance);
  set setCediIncome(num cediIncome) => set<num>(kCediIncome, cediIncome);
  set setForeignIncome(num foreignIncome) =>
      set<num>(kForeignIncome, foreignIncome);
  set setNumTithers(int numTithers) => set<int>(kNumTithers, numTithers);
  set setTreasurers(List<ParseUser> treasurers) =>
      set<List<ParseUser>>(kAttendance, treasurers);
  set setTreasurersSelfie(String selfie) =>
      set<String>(kTreasurersSelfie, selfie);
  set setServicePhoto(String servicePhoto) =>
      set<String>(kServicePhoto, servicePhoto);
  set setMembersPresent(List<MemberObject> membersPresent) =>
      set<List<MemberObject>>(kMembersPresent, membersPresent);
  // set setFellowship(FellowshipObject fellowship) => set<FellowshipObject>(kMembersPresent, membersPresent);
}
