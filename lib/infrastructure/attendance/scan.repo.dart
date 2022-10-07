import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:student/domain/attendance/scan/scan.facade.dart';
import 'package:student/infrastructure/core/models/yearGroup.object.dart';
import 'package:student/infrastructure/attendance/models/scan.object.dart';
import 'package:student/domain/attendance/scan/scan.failure.dart';

@Injectable(as: ScanFacade)
class ScanRepo implements ScanFacade {
  @override
  Future<bool> checkValidScan({
    required DateTime scanDate,
    required YearGroupObject studentYearGroup,
    List<YearGroupObject>? allowedYearGroups,
  }) {
    // TODO: implement checkValidScan
    throw UnimplementedError();
  }

  @override
  Future<Either<ScanFailure, ScanObject>> scan() {
    // TODO: implement scan
    throw UnimplementedError();
  }
}
