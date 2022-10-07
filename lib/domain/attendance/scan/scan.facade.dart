import 'package:dartz/dartz.dart';
import 'package:student/domain/attendance/scan/scan.failure.dart';
import 'package:student/infrastructure/attendance/models/scan.object.dart';
import 'package:student/infrastructure/core/models/yearGroup.object.dart';

abstract class ScanFacade {
  Future<Either<ScanFailure, ScanObject>> scan();

  Future<bool> checkValidScan({
    required DateTime scanDate,
    required YearGroupObject studentYearGroup,
    List<YearGroupObject>? allowedYearGroups,
  });
}
