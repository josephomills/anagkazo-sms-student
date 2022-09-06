import 'package:freezed_annotation/freezed_annotation.dart';

part 'scan.model.freezed.dart';
part 'scan.model.g.dart';

@freezed
class ScanModel with _$ScanModel {
  const factory ScanModel({
    required String objectId,
  }) = _ScanModel;

  factory ScanModel.fromJson(Map<String, dynamic> json) =>
      _$ScanModelFromJson(json);
}
