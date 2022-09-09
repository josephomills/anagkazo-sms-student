part of 'login_bloc.dart';

@freezed
class LoginEvent with _$LoginEvent {
  const factory LoginEvent.usernameChanged({required String username}) =
      UsernameChanged;
  const factory LoginEvent.passwordChanged({required String password}) =
      PasswordChanged;
  const factory LoginEvent.loginButtonPressed() = LoginButtonPressed;
}
