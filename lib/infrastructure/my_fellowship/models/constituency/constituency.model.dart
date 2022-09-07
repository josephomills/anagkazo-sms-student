import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:student/infrastructure/auth/models/user.model.dart';
import 'package:student/infrastructure/my_fellowship/models/bacenta/bacenta.model.dart';

part 'constituency.model.freezed.dart';
part 'constituency.model.g.dart';

@freezed
class ConstituencyModel with _$ConstituencyModel {
  const factory ConstituencyModel({
    required String objectId,
    required String name,
    required UserModel leader,
    required List<BacentaModel> bacentas,
  }) = _ConstituencyModel;

  factory ConstituencyModel.fromJson(Map<String, dynamic> json) =>
      _$ConstituencyModelFromJson(json);
}
