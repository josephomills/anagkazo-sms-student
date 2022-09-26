part of 'my_fellowship_bloc.dart';

@freezed
class MyFellowshipState with _$MyFellowshipState {
  const factory MyFellowshipState({
    required bool isLoading,
    required String avgAttendance,
    required String avgIncome,
    required Option<Either<MyFellowshipFailure, List<ServiceObject>>>
        failureOrServicesOption,
  }) = _MyFellowshipState;

  factory MyFellowshipState.initial() => MyFellowshipState(
        isLoading: false,
        avgAttendance: "0.0",
        avgIncome: "0.0",
        failureOrServicesOption: none(),
      );

  // const factory MyFellowshipState.loading() = Loading;
}
