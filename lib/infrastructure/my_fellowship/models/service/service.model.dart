import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:student/infrastructure/auth/models/user.model.dart';
import 'package:student/infrastructure/my_fellowship/models/fellowship/fellowship.model.dart';
import 'package:student/infrastructure/my_fellowship/models/member/member.model.dart';

part 'service.model.freezed.dart';
part 'service.model.g.dart';

@freezed
class ServiceModel with _$ServiceModel {
  const factory ServiceModel({
    required String objectId,
    required String type,
    required DateTime date,
    required int attendance,
    required int cediIncome,
    @Default(0) int foreignIncome,
    @Default(0) int numTithers,
    required List<UserModel> treasurers,
    required String treasurersSelfie,
    required String servicePhoto,
    required List<MemberModel> membersPresent,
    required FellowshipModel fellowship,
  }) = _ServiceModel;

  factory ServiceModel.fromJson(Map<String, dynamic> json) =>
      _$ServiceModelFromJson(json);
}
