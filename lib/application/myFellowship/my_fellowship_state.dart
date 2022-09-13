part of 'my_fellowship_bloc.dart';

@freezed
class MyFellowshipState with _$MyFellowshipState {
  const factory MyFellowshipState({
    required bool isLoading,
    required double avgAttendance,
    required double avgIncome,
    required Option<Either<MyFellowshipFailure, List<ServiceModel>>>
        failureOrServices,
  }) = _MyFellowshipState;

  factory MyFellowshipState.initial() => MyFellowshipState(
        isLoading: false,
        avgAttendance: 0.0,
        avgIncome: 0.0,
        failureOrServices: none(),
      );
}
