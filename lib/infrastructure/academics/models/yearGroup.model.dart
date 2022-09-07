import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:student/infrastructure/auth/models/user.model.dart';

part 'yearGroup.model.freezed.dart';
part 'yearGroup.model.g.dart';

@freezed
class YearGroup with _$YearGroup {
  const factory YearGroup({
    required String objectId,
    required String name,
    required DateTime admissionDate,
    required List<UserModel> students,
  }) = _YearGroup;

  factory YearGroup.fromJson(Map<String, dynamic> json) =>
      _$YearGroupFromJson(json);
}
