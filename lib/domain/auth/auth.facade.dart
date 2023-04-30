import 'package:dartz/dartz.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk_flutter.dart';
import 'package:student/domain/auth/auth.failure.dart';
import 'package:student/infrastructure/auth/dto/login.dto.dart';
import 'package:student/infrastructure/auth/dto/register.dto.dart';
import 'package:student/infrastructure/auth/models/user.model.dart';

abstract class AuthFacade {
  Future<Either<AuthFailure, ParseUser>> loginWithUsernameAndPassword(
      {required LoginDTO loginDTO});
  Future<Either<AuthFailure, Unit>> registerWithUsernameAndPassword(
      {required RegisterDTO registerDTO});
  Future<Either<AuthFailure, ParseUser>> getCurrentUser();
  Future<Either<AuthFailure, Unit>> logout();
  Future<Either<AuthFailure, ParseUser>> updateUser(
      {required UserModel userData});
  Future<bool> hasUserLoggedIn();
}
