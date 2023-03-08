import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';
import 'package:student/domain/attendance/scan/scan.facade.dart';
import 'package:student/infrastructure/academics/models/year_group.object.dart';
import 'package:student/infrastructure/attendance/models/gathering.object.dart';
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
  Future<Either<ScanFailure, ScanObject>> scanIn(
      {required GatheringObject gathering, required DateTime dateTime}) async {
    final user = await ParseUser.currentUser();

    if (user == null) {
      return const Left(ScanFailure.serverError(message: "No user found"));
    }

    // Check for a previous scan
    final scanObjOption =
        (await checkForScan(gathering: gathering, user: user, isScanIn: true))
            .getOrElse(() => none());
    final bool alreadyScanned = scanObjOption.isSome();

    if (alreadyScanned) {
      final scanObj = scanObjOption.getOrElse(() => ScanObject());
      final validObj = scanObj.objectId != null;
      return Left(ScanFailure.duplicateScanError(
        message: validObj
            ? "You have already scanned in."
            : "Invalid scan object found",
        scanObject: validObj ? scanObj : null,
      ));
    } else {
      final scan = ScanObject()
        ..user = user
        ..gathering = gathering
        ..scannedInAt = dateTime;

      final ParseResponse resp = await scan.save();

      if (resp.success) {
        return Right(scan);
      }

      return const Left(ScanFailure.serverError());
    }
  }

  @override
  Future<Either<ScanFailure, ScanObject>> scanOut(
      {required GatheringObject gathering, required DateTime dateTime}) async {
    final user = await ParseUser.currentUser();

    if (user == null) {
      return const Left(ScanFailure.serverError());
    }

    // Check for a previous scan
    final scanObjOption =
        (await checkForScan(gathering: gathering, user: user, isScanOut: true))
            .getOrElse(() => none());
    final bool alreadyScanned = scanObjOption.isSome();

    if (alreadyScanned) {
      final scanObj = scanObjOption.getOrElse(() => ScanObject());
      final validObj = scanObj.objectId != null;
      return Left(ScanFailure.duplicateScanError(
        message: validObj
            ? "You have already scanned out."
            : "Invalid scan object found",
        scanObject: validObj ? scanObj : null,
      ));
    } else {
      // Check for a scan in
      final scanObjOption =
          (await checkForScan(gathering: gathering, user: user, isScanIn: true))
              .getOrElse(() => none());
      final bool isNotLate = scanObjOption.isSome();

      if (isNotLate) {
        // Get scan object
        final scanObj = scanObjOption.getOrElse(() => ScanObject());
        final validObj = scanObj.objectId != null;
        if (validObj) {
          // Record scan out
          scanObj.scannedOutAt = dateTime;
          final scanResp = await scanObj.save();
          if (scanResp.success) {
            return Right(scanObj);
          } else {
            return Left(
                ScanFailure.serverError(message: scanResp.error!.message));
          }
        } else {
          return const Left(
              ScanFailure.serverError(message: "Invalid scan object found"));
        }
      } else {
        // No scan found i.e. student is late
        final scan = ScanObject()
          ..user = user
          ..gathering = gathering
          ..scannedOutAt = dateTime;

        final ParseResponse resp = await scan.save();

        if (resp.success) {
          return Right(scan);
        }

        return const Left(ScanFailure.serverError());
      }
    }
  }

  @override
  Future<Either<ScanFailure, Option<ScanObject>>> checkForScan({
    required GatheringObject gathering,
    required ParseUser user,
    bool? isScanIn,
    bool? isScanOut,
  }) async {
    final scanQuery = QueryBuilder<ScanObject>(ScanObject())
      ..whereEqualTo(ScanObject.kGathering, gathering.toPointer())
      ..whereEqualTo(ScanObject.kUser, user.toPointer());

    if (isScanOut != null && isScanOut) {
      scanQuery.whereValueExists(ScanObject.kScannedOutAt, true);
    }
    if (isScanIn != null && isScanIn) {
      scanQuery.whereValueExists(ScanObject.kScannedInAt, true);
    }

    final resp = await scanQuery.query<ScanObject>();
    if (resp.success) {
      if (resp.results == null || resp.results!.isEmpty) {
        // No scan
        return Right(none());
      } else {
        // already scanned
        final ScanObject scanObject = resp.results!.first as ScanObject;
        return Right(some(scanObject));
      }
    }

    return Left(ScanFailure.serverError(message: resp.error!.message));
  }

  @override
  Future<Either<ScanFailure, Option<GatheringObject>>> getGathering(
      {required String objectId}) async {
    var resp = await GatheringObject().getObject(objectId);
    if (resp.success) {
      if (resp.results == null || resp.results!.isEmpty) {
        return Right(none());
      } else {
        final obj = resp.results!.first as GatheringObject;
        return Right(some(obj));
      }
    } else {
      return Left(ScanFailure.serverError(message: resp.error!.message));
    }
  }
}
