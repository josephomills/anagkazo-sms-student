import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:student/infrastructure/auth/models/user.model.dart';
import 'package:student/infrastructure/my_fellowship/models/bacenta/bacenta.model.dart';
import 'package:student/infrastructure/my_fellowship/models/constituency/constituency.model.dart';

part 'fellowship.model.freezed.dart';
part 'fellowship.model.g.dart';

@freezed
class FellowshipModel with _$FellowshipModel {
  const factory FellowshipModel({
    required String objectId,
    required String name,
    required UserModel leader,
    required ConstituencyModel constituency,
    required BacentaModel bacenta,
  }) = _FellowshipModel;

  factory FellowshipModel.fromJson(Map<String, dynamic> json) =>
      _$FellowshipModelFromJson(json);
}
