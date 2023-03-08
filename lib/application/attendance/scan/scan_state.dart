part of 'scan_bloc.dart';

@freezed
class ScanState with _$ScanState {
  const factory ScanState(
      {required bool isScanning,
      required bool isLoading,
      required bool isConfirming,
      required Option<GatheringObject> gatheringOption,
      String? type,
      required Option<Either<ScanFailure, ScanObject>>
          failureOrScanOption}) = _ScanState;

  factory ScanState.initial() => ScanState(
        isScanning: true,
        isLoading: false,
        isConfirming: false,
        gatheringOption: none(),
        failureOrScanOption: none(),
      );
}
