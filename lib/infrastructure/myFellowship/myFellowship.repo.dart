import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';
import 'package:student/application/core/injectable.core.dart';
import 'package:student/domain/auth/auth.facade.dart';
import 'package:student/domain/myFellowship/myFellowship.facade.dart';
import 'package:student/infrastructure/auth/models/user.model.dart';
import 'package:student/infrastructure/myFellowship/models/service/service.model.dart';
import 'package:student/domain/myFellowship/myFellowship.failure.dart';

@Injectable(as: MyFellowshipFacade)
class MyFellowshipRepo implements MyFellowshipFacade {
  @override
  Future<Either<MyFellowshipFailure, List<ServiceModel>>>
      getFellowshipServices() async {
    final queryServices = await buildServicesQuery();

    final response = await queryServices.query();
    if (response.success) {
      response.results;
      return const Right([]);
    } else {
      return const Left(MyFellowshipFailure.serverError());
    }
  }

  Future<QueryBuilder> buildServicesQuery() async {
    final user = (await getIt<AuthFacade>().getCurrentUser())
        .getOrElse(() => const UserModel());

    var queryUsersFellowship = QueryBuilder(ParseObject("Fellowship"))
      ..whereRelatedTo("leader", "User", user.objectId);
    var queryServices = QueryBuilder(ParseObject("Service"))
      ..whereMatchesQuery("fellowship", queryUsersFellowship)
      ..orderByDescending("date");

    return queryServices;
  }
}
