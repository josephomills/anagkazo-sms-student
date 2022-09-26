import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';
import 'package:student/domain/myFellowship/myFellowship.facade.dart';
import 'package:student/domain/myFellowship/myFellowship.failure.dart';
import 'package:student/infrastructure/myFellowship/models/service/service.object.dart';

@Injectable(as: MyFellowshipFacade)
class MyFellowshipRepo implements MyFellowshipFacade {
  @override
  Future<Either<MyFellowshipFailure, List<ServiceObject>>>
      getFellowshipServices() async {
    final queryServices = await buildServicesQuery();

    final response = await queryServices.query<ServiceObject>();
    if (response.success) {
      return Right(response.result as List<ServiceObject>);
    } else {
      return Left(
        MyFellowshipFailure.serverError(message: response.error!.message),
      );
    }
  }

  Future<QueryBuilder> buildServicesQuery() async {
    final user = await ParseUser.currentUser();

    var queryUsersFellowship = QueryBuilder(ParseObject("Fellowship"))
      ..whereEqualTo("leader", user.toPointer());
    var queryServices = QueryBuilder<ServiceObject>(ServiceObject())
      ..whereMatchesQuery("fellowship", queryUsersFellowship)
      ..orderByDescending("date");

    return queryServices;
  }
}
