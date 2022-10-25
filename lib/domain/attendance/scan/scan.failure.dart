import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:student/infrastructure/attendance/models/scan.object.dart';

part 'scan.failure.freezed.dart';

@freezed
abstract class ScanFailure with _$ScanFailure {
  const factory ScanFailure.serverError({String? message}) = _ServerError;
  const factory ScanFailure.duplicateScanError(
      {String? message, ScanObject? scanObject}) = _DuplicateScanError;
  const factory ScanFailure.invalidEventError({String? message}) =
      _InvalidEventError;
  const factory ScanFailure.invalidScanError({String? message}) =
      _InvalidScanError;
}
