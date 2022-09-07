import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:student/infrastructure/auth/models/user.model.dart';
import 'package:student/infrastructure/my_fellowship/models/fellowship/fellowship.model.dart';

part 'bacenta.model.freezed.dart';
part 'bacenta.model.g.dart';

@freezed
class BacentaModel with _$BacentaModel {
  const factory BacentaModel({
    required String objectId,
    required String name,
    required UserModel leader,
    required List<FellowshipModel> fellowships,
  }) = _BacentaModel;

  factory BacentaModel.fromJson(Map<String, dynamic> json) =>
      _$BacentaModelFromJson(json);
}
