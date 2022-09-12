import 'package:dartz/dartz.dart';
import 'package:student/domain/dashboard/dashboard.failure.dart';

abstract class DashboardFacade {
  Future<Either<DashboardFailure, int>> getDisciplinaryPoints();
  Future<Either<DashboardFailure, int>> getPrayerHours();
  Future<Either<DashboardFailure, int>> getAverageBussing();
  Future<Either<DashboardFailure, int>> getAverageFellowhshipAttendance();
}
