import 'package:dartz/dartz.dart';
import 'package:student/domain/attendance/scan/scan.failure.dart';
import 'package:student/infrastructure/attendance/models/event.object.dart';
import 'package:student/infrastructure/attendance/models/scan.object.dart';
import 'package:student/infrastructure/academics/models/yearGroup.object.dart';

abstract class ScanFacade {
  Future<Either<ScanFailure, ScanObject>> scanIn(
      {required EventObject event, required DateTime dateTime});

  Future<Either<ScanFailure, ScanObject>> scanOut(
      {required EventObject event, required DateTime dateTime});

  Future<bool> checkValidScan({
    required DateTime scanDate,
    required YearGroupObject studentYearGroup,
    List<YearGroupObject>? allowedYearGroups,
  });
}
