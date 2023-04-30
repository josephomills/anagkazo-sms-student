part of 'app_bloc.dart';

@freezed
class AppState with _$AppState {
  const factory AppState({
    required ThemeMode themeMode,
    required Option<Either<AppFailure, List<RotationObject>>>
        failureOrRotationsOption,
  }) = _AppState;

  factory AppState.initial() => AppState(
        themeMode: ThemeMode.system,
        failureOrRotationsOption: none(),
      );
}
