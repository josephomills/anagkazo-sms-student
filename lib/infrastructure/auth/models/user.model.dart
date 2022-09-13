import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.model.freezed.dart';
part 'user.model.g.dart';

@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    @Default("") String objectId,
    @Default("") String username,
    @Default("") String email,
    @JsonKey(ignore: true) @Default("") String? sessionToken,
    @JsonKey(ignore: true) String? password,
    @Default("") String firstname,
    @Default("") String lastname,
    @Default("") String? middleName,
    DateTime? dob,
    @Default("https://images.unsplash.com/photo-1507152832244-10d45c7eda57")
        String? photoUrl,
    @Default("") String? country,
    @Default("") String gender,
    @Default("") String phone,
    @Default("") String whatsapp,
    @Default("") String? yearGroup,
    @Default("") String? title,
    @Default(false) bool isStaff,
  }) = _UserModel;

  factory UserModel.empty() => const UserModel(
        objectId: "",
        username: "",
        email: "",
        firstname: "",
        lastname: "",
        country: "",
        gender: "",
        phone: "",
        whatsapp: "",
      );

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}
