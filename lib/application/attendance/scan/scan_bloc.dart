import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:moment_dart/moment_dart.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk_flutter.dart';
import 'package:student/application/auth/auth/auth_bloc.dart';
import 'package:student/domain/attendance/scan/scan.facade.dart';
import 'package:student/domain/attendance/scan/scan.failure.dart';
import 'package:student/domain/core/config/injectable.core.dart';
import 'package:student/infrastructure/attendance/models/event.object.dart';
import 'package:student/infrastructure/attendance/models/scan.object.dart';
import 'package:student/infrastructure/academics/models/year_group.object.dart';

part 'scan_event.dart';
part 'scan_state.dart';
part 'scan_bloc.freezed.dart';

@injectable
class ScanBloc extends Bloc<ScanEvent, ScanState> {
  final ScanFacade _scanFacade;

  ScanBloc(this._scanFacade) : super(ScanState.initial()) {
    on<ScanEvent>((event, emit) async {
      await event.map<FutureOr<void>>(
        started: (e) {
          emit(state.copyWith(
            isLoading: false,
            isScanning: true,
            isConfirming: false,
            failureOrScanOption: none(),
            eventOption: none(),
          ));
        },
        scanDetected: (e) async {
          // Stop scanning
          emit(state.copyWith(
            isScanning: false,
            isLoading: false,
            scannedAt: Moment.now().toUtc(),
            qr: e.qr,
          ));

          // Example payload
          // {
          //   "eventId": "",
          //   "type": "IN/OUT",
          // }

          // Get Event object from server
          final resp = await EventObject()
              .getObject(e.qr["eventId"], include: [EventObject.kEventType]);
          final bool eventExists = resp.success && resp.result != null;

          if (eventExists) {
            final event = resp.result as EventObject;
            emit(state.copyWith(
              eventOption: some(event),
              isConfirming: true,
            ));
          } else {
            emit(
              state.copyWith(
                isLoading: false,
                isScanning: true,
                isConfirming: false,
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
        scanConfirmed: (e) async {
          // Load
          emit(state.copyWith(
            isScanning: false,
            isLoading: true,
            isConfirming: false,
          ));

          final event = state.eventOption.getOrElse(() => EventObject());
          // TODO
          // Check for a valid scan
          // 1. Scan is on the same day
          // 2. Student is in a class the event is valid for
          final bool isValid = isValidScan(
            event: event,
            studentYearGroup: YearGroupObject(),
            allowedYearGroups: [],
          );

          if (isValid) {
            if (state.qr!["type"] == "IN") {
              final failureOrScan = await _scanFacade.scanIn(
                event: event,
                dateTime: state.scannedAt!,
              );

              emit(state.copyWith(
                isLoading: false,
                failureOrScanOption: some(failureOrScan),
              ));
            } else if (state.qr!["type"] == "OUT") {
              final failureOrScan = await _scanFacade.scanOut(
                event: event,
                dateTime: state.scannedAt!,
              );

              emit(state.copyWith(
                isLoading: false,
                failureOrScanOption: some(failureOrScan),
              ));
            } else {
              emit(
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
                ),
              );
            }
          } else {
            emit(
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
        },
        scanCancelled: (e) async {
          emit(state.copyWith(
            isScanning: true,
            isLoading: false,
            isConfirming: false,
            failureOrScanOption: none(),
            eventOption: none(),
          ));
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
    required EventObject event,
    required YearGroupObject studentYearGroup,
    List<YearGroupObject>? allowedYearGroups,
  }) {
    // Check if scan day is day of event
    final sameDay = Moment.now().isAtSameDayAs(event.startsAt!);

    // Check if student's class is allowed to scan
    final allowedClass = getIt<AuthBloc>()
        .state
        .currentUserOption
        .getOrElse(() => ParseUser(null, null, null))
        .get("yearGroup") as YearGroupObject;

    return !sameDay;
  }
}
