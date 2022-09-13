import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:student/infrastructure/auth/models/user.model.dart';
import 'package:student/infrastructure/myFellowship/models/fellowship/fellowship.model.dart';

part 'bacenta.model.freezed.dart';
part 'bacenta.model.g.dart';

@freezed
class BacentaModel with _$BacentaModel {
  const factory BacentaModel({
    @Default("") String objectId,
    @Default("") String name,
    @Default(UserModel()) UserModel leader,
    List<FellowshipModel>? fellowships,
  }) = _BacentaModel;

  factory BacentaModel.fromJson(Map<String, dynamic> json) =>
      _$BacentaModelFromJson(json);
}
