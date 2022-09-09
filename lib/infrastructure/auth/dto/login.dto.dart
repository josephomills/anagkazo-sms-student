import 'package:freezed_annotation/freezed_annotation.dart';

part 'login.dto.freezed.dart';
part 'login.dto.g.dart';

@freezed
class LoginDTO with _$LoginDTO {
  const factory LoginDTO({
    required String username,
    required String password,
    String? email,
  }) = _LoginDTO;

  factory LoginDTO.fromJson(Map<String, dynamic> json) =>
      _$LoginDTOFromJson(json);
}
