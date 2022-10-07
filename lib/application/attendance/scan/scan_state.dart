part of 'scan_bloc.dart';

@freezed
class ScanState with _$ScanState {
  const factory ScanState({
    required bool isScanning,
  }) = _Initial;

  factory ScanState.initial() => const ScanState(
        isScanning: true,
      );
}
