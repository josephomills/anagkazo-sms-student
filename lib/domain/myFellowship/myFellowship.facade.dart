import 'package:dartz/dartz.dart';
import 'package:student/domain/myFellowship/myFellowship.failure.dart';
import 'package:student/infrastructure/myFellowship/models/service/service.model.dart';

abstract class MyFellowshipFacade {
  Future<Either<MyFellowshipFailure, List<ServiceModel>>>
      getFellowshipServices();
}
