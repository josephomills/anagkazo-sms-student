import 'package:freezed_annotation/freezed_annotation.dart';

part 'member.model.freezed.dart';
part 'member.model.g.dart';

@freezed
class MemberModel with _$MemberModel {
  const factory MemberModel({
    required String objectId,
    required String firstname,
    required String lastname,
    required String phone,
    required String whatsapp,
    required String email,
    required DateTime dob,
    required String country,
    required String photoUrl,
  }) = _MemberModel;

  factory MemberModel.fromJson(Map<String, dynamic> json) =>
      _$MemberModelFromJson(json);
}
