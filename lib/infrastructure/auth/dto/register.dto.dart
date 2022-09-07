import 'package:freezed_annotation/freezed_annotation.dart';

part 'register.dto.freezed.dart';
part 'register.dto.g.dart';

@freezed
class RegisterDTO with _$RegisterDTO {
  const factory RegisterDTO({
    required String username,
    required String password,
    String? email,
  }) = _RegisterDTO;

  factory RegisterDTO.fromJson(Map<String, dynamic> json) =>
      _$RegisterDTOFromJson(json);
}
