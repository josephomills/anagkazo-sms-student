import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:student/infrastructure/auth/models/user.model.dart';
import 'package:student/infrastructure/myFellowship/models/bacenta/bacenta.model.dart';

part 'constituency.model.freezed.dart';
part 'constituency.model.g.dart';

@freezed
class ConstituencyModel with _$ConstituencyModel {
  const factory ConstituencyModel({
    @Default("") String objectId,
    @Default("") String name,
    @Default(UserModel()) UserModel leader,
    List<BacentaModel>? bacentas,
  }) = _ConstituencyModel;

  factory ConstituencyModel.fromJson(Map<String, dynamic> json) =>
      _$ConstituencyModelFromJson(json);
}
