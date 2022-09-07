import 'package:freezed_annotation/freezed_annotation.dart';

part 'signin.dto.freezed.dart';
part 'signin.dto.g.dart';

@freezed
class SignInDTO with _$SignInDTO {
  const factory SignInDTO({
    required String username,
    required String password,
    String? email,
  }) = _SignInDTO;

  factory SignInDTO.fromJson(Map<String, dynamic> json) =>
      _$SignInDTOFromJson(json);
}
