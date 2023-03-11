part of 'scan_bloc.dart';

@freezed
class ScanEvent with _$ScanEvent {
  const factory ScanEvent.started() = _Started;
  const factory ScanEvent.scanDetected({required Map<String, dynamic> qr}) =
      _ScanDetected;
  const factory ScanEvent.scanConfirmed() = _ScanConfirmed;
  const factory ScanEvent.scanCancelled() = _ScanCancelled;
}
