import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.model.freezed.dart';
part 'user.model.g.dart';

@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    required String objectId,
    required String username,
    required String email,
    required String sessionToken,
    String? password,
    required String firstname,
    required String lastname,
    required DateTime dob,
    @Default("https://images.unsplash.com/photo-1507152832244-10d45c7eda57")
        String? photoUrl,
    required String country,
    required String gender,
    required String phone,
    required String whatsapp,
    required String classOf,
    required String title,
    @Default(false) bool isStaff,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}
