import 'package:dartz/dartz.dart';
import 'package:student/domain/auth/auth.failure.dart';
import 'package:student/infrastructure/auth/models/user.model.dart';

abstract class AuthFacade {
  Future<Either<AuthFailure, UserModel>>
      signInWithEmailAndPassword(); //add sign in dto
  Future<Either<AuthFailure, UserModel>> registerWithEmailAndPassword();
  Future<Either<AuthFailure, UserModel>> getCurrentUser();
  Future<Either<AuthFailure, Unit>> logout();
  Future<Either<AuthFailure, UserModel>> updateUser(
      {required UserModel userData});
}
