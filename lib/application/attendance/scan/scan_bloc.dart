import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:student/domain/attendance/scan/scan.facade.dart';
import 'package:student/domain/attendance/scan/scan.failure.dart';
import 'package:student/infrastructure/attendance/models/event.object.dart';
import 'package:student/infrastructure/attendance/models/gathering.object.dart';
import 'package:student/infrastructure/attendance/models/scan.object.dart';
import 'package:student/infrastructure/academics/models/year_group.object.dart';

part 'scan_event.dart';
part 'scan_state.dart';
part 'scan_bloc.freezed.dart';

@lazySingleton
class ScanBloc extends Bloc<ScanEvent, ScanState> {
  final ScanFacade _scanFacade;

  ScanBloc(this._scanFacade) : super(ScanState.initial()) {
    on<ScanEvent>((event, emitter) async {
      await event.map<FutureOr<void>>(
        started: (e) {},
        scanDetected: (e) async {
          final scannedAt = DateTime.now().toUtc();
          // Stop scanning
          emitter.call(state.copyWith(isScanning: false, isLoading: true));

          // Get Event object from server
          final String eventId = e.qr["eventId"] as String;
          final gatheringObjOption =
              (await _scanFacade.getGathering(objectId: eventId))
                  .getOrElse(() => none());
          final bool gatheringExists = gatheringObjOption.isSome();

          if (gatheringExists) {
            // TODO
            // Check for a valid scan
            // 1. Scan is on the same day
            // 2. Student is in a class the event is valid for
            final bool isValid = isValidScan(
              scanDate: DateTime.parse(e.qr["dateTime"]),
              studentYearGroup: YearGroupObject(),
              allowedYearGroups: [],
            );

            if (isValid) {
              final gatheringObj =
                  gatheringObjOption.getOrElse(() => GatheringObject());
              final bool validEvent = gatheringObj.objectId != null;
              if (validEvent) {
                if (e.qr["type"] == "IN") {
                  final scanOrFailure = await _scanFacade.scanIn(
                    gathering: gatheringObj,
                    dateTime: scannedAt,
                  );
                  emitter.call(state.copyWith(
                    isLoading: false,
                    failureOrScanOption: some(scanOrFailure),
                    gatheringOption: some(gatheringObj),
                  ));
                } else if (e.qr["type"] == "OUT") {
                  final scanOrFailure = await _scanFacade.scanOut(
                    gathering: gatheringObj,
                    dateTime: scannedAt,
                  );
                  emitter.call(state.copyWith(
                    isLoading: false,
                    failureOrScanOption: some(scanOrFailure),
                    gatheringOption: some(gatheringObj),
                  ));
                } else {
                  emitter.call(
                    state.copyWith(
                      isLoading: false,
                      isScanning: true,
                      failureOrScanOption: some(
                        const Left(
                          ScanFailure.invalidScanError(
                            message: "QR code is invalid. No 'type' found.",
                          ),
                        ),
                      ),
                      gatheringOption: some(gatheringObj),
                    ),
                  );
                }
              } else {
                emitter.call(
                  state.copyWith(
                    isLoading: false,
                    isScanning: true,
                    failureOrScanOption: some(
                      const Left(
                        ScanFailure.invalidEventError(
                          message: "QR Code is invalid. Check event details.",
                        ),
                      ),
                    ),
                  ),
                );
              }
            } else {
              emitter.call(
                state.copyWith(
                  isLoading: false,
                  isScanning: true,
                  failureOrScanOption: some(
                    const Left(
                      ScanFailure.invalidScanError(
                        message: "You're not permitted to scan for this event.",
                      ),
                    ),
                  ),
                ),
              );
            }
          } else {
            emitter.call(
              state.copyWith(
                isLoading: false,
                isScanning: true,
                failureOrScanOption: some(
                  const Left(
                    ScanFailure.invalidEventError(
                      message: "QR Code is invalid. No event found.",
                    ),
                  ),
                ),
              ),
            );
          }
        },
        scanConfirmed: (e) {},
      );
    });
  }

  bool isScanForToday({required DateTime scanDate}) {
    final now = DateTime.now().toUtc();
    final today = DateTime(now.year, now.month, now.day);
    scanDate = scanDate.toUtc();
    final scanDateTime = DateTime(scanDate.year, scanDate.month, scanDate.day);

    return scanDateTime == today;
  }

  bool isStudentInCorrectClass({
    required YearGroupObject studentYearGroup,
    List<YearGroupObject>? allowedYearGroups,
  }) {
    bool studentInCorrectClass = true;

    if (allowedYearGroups != null) {
      studentInCorrectClass = allowedYearGroups.contains(studentYearGroup);
    }

    return studentInCorrectClass;
  }

  bool isValidScan({
    required DateTime scanDate,
    required YearGroupObject studentYearGroup,
    List<YearGroupObject>? allowedYearGroups,
  }) {
    // return isStudentInCorrectClass(
    //         studentYearGroup: studentYearGroup,
    //         allowedYearGroups: allowedYearGroups) &&
    //     isScanForToday(scanDate: scanDate);

    return true;
  }
}
