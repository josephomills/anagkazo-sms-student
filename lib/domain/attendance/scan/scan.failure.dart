import 'package:freezed_annotation/freezed_annotation.dart';

part 'scan.failure.freezed.dart';

@freezed
abstract class ScanFailure with _$ScanFailure {
  const factory ScanFailure.serverError({String? message}) = _ServerError;
}
