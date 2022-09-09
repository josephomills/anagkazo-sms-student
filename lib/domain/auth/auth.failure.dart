import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth.failure.freezed.dart';

@freezed
abstract class AuthFailure with _$AuthFailure {
  const factory AuthFailure.cancelledByUser() = _CancelledByUser;
  const factory AuthFailure.serverError({String? message}) = _ServerError;
  const factory AuthFailure.usernameAlreadyInUse() = _UsernameAlreadyInUse;
  const factory AuthFailure.emailAlreadyInUse() = _EmailAlreadyInUse;
  const factory AuthFailure.weakPassword() = _WeakPassword;
  const factory AuthFailure.invalidUsernameAndPasswordCombination() =
      _InvalidEmailAndPasswordCombination;
  const factory AuthFailure.userDoesNotExist() = _UserDoesNotExist;
  const factory AuthFailure.wrongPassword() = _WrongPassword;
  const factory AuthFailure.platformFailure() = _PlatformFailure;
  const factory AuthFailure.sessionMissing() = _SessionMissing;
  const factory AuthFailure.invalidSessionToken() = _InvalidSessionToken;
  const factory AuthFailure.accountAlreadyInUse() = _AccountAlreadyInUse;
}
