part of 'scan_bloc.dart';

@freezed
class ScanState with _$ScanState {
  const factory ScanState(
      {required bool isScanning,
      required bool isLoading,
      required bool isConfirming,
      required Option<EventObject> eventOption,
      String? type,
      required Option<Either<ScanFailure, ScanObject>>
          failureOrScanOption}) = _ScanState;

  factory ScanState.initial() => ScanState(
        isScanning: true,
        isLoading: false,
        isConfirming: false,
        eventOption: none(),
        failureOrScanOption: none(),
      );
}
