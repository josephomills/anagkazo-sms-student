import 'package:dartz/dartz.dart';
import 'package:student/domain/app/app.failure.dart';
import 'package:student/infrastructure/academics/models/rotation.object.dart';

abstract class AppFacade {
  Future<Either<AppFailure, List<RotationObject>>> getAllRotations();
}
