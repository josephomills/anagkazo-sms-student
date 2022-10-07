part of 'scan_bloc.dart';

@freezed
class ScanState with _$ScanState {
  const factory ScanState({
    required bool isScanning,
    required Option<EventObject> eventOption,
  }) = _Initial;

  factory ScanState.initial() => ScanState(
        isScanning: true,
        eventOption: none(),
      );
}
