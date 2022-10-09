import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';
import 'package:student/application/core/injectable.core.dart';
import 'package:student/domain/attendance/attendance.facade.dart';
import 'package:student/domain/attendance/attendance.failure.dart';
import 'package:student/domain/attendance/lectureType.enum.dart';
import 'package:student/infrastructure/attendance/models/scan.object.dart';
import 'package:student/presentation/widgets/scan.widget.dart';

FutureBuilder<Either<AttendanceFailure, QueryBuilder<ScanObject>>>
    buildLiveScanList({required LectureType lectureType}) {
  return FutureBuilder(
    future: getIt<AttendanceFacade>().getScans(lectureType: lectureType),
    builder: (context, snapshot) {
      if (!snapshot.hasData) {
        return const Center(child: CircularProgressIndicator());
      }

      final failureOrQuery =
          snapshot.data as Either<AttendanceFailure, QueryBuilder<ScanObject>>;

      if (failureOrQuery.isLeft()) {
        return Center(
          child: Image.asset("assets/illustrations/not_found.png"),
        );
      }

      final query = failureOrQuery.getOrElse(() => QueryBuilder(ScanObject()));

      return ParseLiveListWidget<ScanObject>(
        query: query,
        listLoadingElement: const SpinKitCubeGrid(
          color: Colors.blue,
          size: 50,
        ),
        queryEmptyElement: Center(
          child: Image.asset("assets/illustrations/taking_selfie.png"),
        ),
        childBuilder: (context, snapshot) {
          if (snapshot.loadedData == null) {
            return const SpinKitPulse(
              color: Colors.blue,
              size: 40,
            );
          }

          return ScanWidget(
            dateTime: snapshot.loadedData!.scannedInAt!,
            scanIn: snapshot.loadedData!.scannedInAt != null,
            scanOut: snapshot.loadedData!.scannedOutAt != null,
            lectureType: lectureType,
          );
        },
      );
    },
  );
}
