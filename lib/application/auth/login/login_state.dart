part of 'login_bloc.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState({
    required String username,
    required String password,
    required bool isLoading,
    required bool validateFields,
    required Option<Either<AuthFailure, UserModel>> authFailureOrSuccessOption,
  }) = _LoginState;

  factory LoginState.initial() => LoginState(
        username: "",
        password: "",
        validateFields: false,
        isLoading: false,
        authFailureOrSuccessOption: none(),
      );
}
