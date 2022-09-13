import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:student/infrastructure/auth/models/user.model.dart';
import 'package:student/infrastructure/myFellowship/models/bacenta/bacenta.model.dart';
import 'package:student/infrastructure/myFellowship/models/constituency/constituency.model.dart';

part 'fellowship.model.freezed.dart';
part 'fellowship.model.g.dart';

@freezed
class FellowshipModel with _$FellowshipModel {
  const factory FellowshipModel({
    @Default("") String objectId,
    @Default("") String name,
    @Default(UserModel()) UserModel leader,
    @Default(ConstituencyModel()) ConstituencyModel constituency,
    @Default(BacentaModel()) BacentaModel bacenta,
  }) = _FellowshipModel;

  factory FellowshipModel.fromJson(Map<String, dynamic> json) =>
      _$FellowshipModelFromJson(json);
}
