import 'package:dartz/dartz.dart';
import 'package:student/domain/auth/auth.failure.dart';
import 'package:student/infrastructure/auth/dto/login.dto.dart';
import 'package:student/infrastructure/auth/dto/register.dto.dart';
import 'package:student/infrastructure/auth/models/user.model.dart';

abstract class AuthFacade {
  Future<Either<AuthFailure, UserModel>> loginWithUsernameAndPassword(
      {required LoginDTO loginDTO});
  Future<Either<AuthFailure, Unit>> registerWithUsernameAndPassword(
      {required RegisterDTO registerDTO});
  Future<Either<AuthFailure, UserModel>> getCurrentUser();
  Future<Either<AuthFailure, Unit>> logout();
  Future<Either<AuthFailure, UserModel>> updateUser(
      {required UserModel userData});
}
