import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:student/domain/dashboard/dashboard.facade.dart';
import 'package:student/domain/dashboard/dashboard.failure.dart';

@Injectable(as: DashboardFacade)
class DashboardRepo implements DashboardFacade {
  @override
  Future<Either<DashboardFailure, int>> getAverageBussing() {
    // TODO: implement getAverageBussing
    throw UnimplementedError();
  }

  @override
  Future<Either<DashboardFailure, int>> getAverageFellowhshipAttendance() {
    // TODO: implement getAverageFellowhshipAttendance
    throw UnimplementedError();
  }

  @override
  Future<Either<DashboardFailure, int>> getDisciplinaryPoints() {
    // TODO: implement getDisciplinaryPoints
    throw UnimplementedError();
  }

  @override
  Future<Either<DashboardFailure, int>> getPrayerHours() {
    // TODO: implement getPrayerHours
    throw UnimplementedError();
  }
}
