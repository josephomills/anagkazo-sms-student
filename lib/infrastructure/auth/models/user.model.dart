import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:student/infrastructure/academics/models/yearGroup.model.dart';

part 'user.model.freezed.dart';
part 'user.model.g.dart';

@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    required String objectId,
    required String username,
    required String email,
    String? sessionToken,
    String? password,
    required String firstname,
    required String lastname,
    String? middleName,
    DateTime? dob,
    @Default("https://images.unsplash.com/photo-1507152832244-10d45c7eda57")
        String? photoUrl,
    required String? country,
    required String gender,
    required String phone,
    required String whatsapp,
    String? yearGroup,
    String? title,
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
