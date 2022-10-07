import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:student/domain/attendance/scan/scan.facade.dart';
import 'package:student/infrastructure/attendance/models/event.object.dart';
import 'package:student/infrastructure/core/models/yearGroup.object.dart';

part 'scan_event.dart';
part 'scan_state.dart';
part 'scan_bloc.freezed.dart';

@injectable
class ScanBloc extends Bloc<ScanEvent, ScanState> {
  final ScanFacade _scanFacade;

  ScanBloc(this._scanFacade) : super(ScanState.initial()) {
    on<ScanEvent>((event, emit) async {
      await event.map<FutureOr<void>>(
        started: (e) {},
        scanDetected: (e) {
          // Get Event object from server

          // Check for a valid scan
          // 1. Scan is on the same day
          // 2. Student is in a class the event is valid for
          final bool isValid = isValidScan(
            scanDate: e.qr["dateTime"],
            studentYearGroup: YearGroupObject(),
            allowedYearGroups: [],
          );

          if (isValid) {
            if (e.qr["type"] == "IN") {
              // Check for lateness
            }
            // if it's a scan in, create a scan object.

            // if it's a scan out, check for a scan in update the scan object (event & user)
          }
        },
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
