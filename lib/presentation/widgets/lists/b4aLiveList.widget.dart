import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';
import 'package:student/application/attendance/attendance/attendance_bloc.dart';
import 'package:student/application/core/injectable.core.dart';
import 'package:student/domain/attendance/lectureType.enum.dart';
import 'package:student/infrastructure/attendance/models/scan.object.dart';
import 'package:student/presentation/widgets/scan.widget.dart';

class B4aLiveListWidget extends StatelessWidget {
  const B4aLiveListWidget({Key? key, required this.lectureType})
      : super(key: key);

  final LectureType lectureType;

  @override
  Widget build(BuildContext context) {
    return ParseLiveListWidget<ScanObject>(
      query: getIt<AttendanceBloc>()
          .state
          .failureOrQueriesList
          .getOrElse(() => const Right(<QueryBuilder<ScanObject>>[]))
          .getOrElse(() => <QueryBuilder<ScanObject>>[])[lectureType.index],
      listLoadingElement: const SpinKitChasingDots(
        color: Colors.blue,
        size: 50,
      ),
      queryEmptyElement: Center(
        child: Image.asset("assets/illustrations/taking_selfie.png"),
      ),
      childBuilder: (context, snapshot) {
        if (snapshot.failed) {
          return Center(
            child: Image.asset("assets/illustrations/signal_searching.png"),
          );
        } else if (snapshot.hasData) {
          return ScanWidget(
            dateTime: snapshot.loadedData!.scannedInAt!,
            scanIn: snapshot.loadedData!.scannedInAt != null,
            scanOut: snapshot.loadedData!.scannedOutAt != null,
            lectureType: lectureType,
          );
        } else {
          return const SizedBox(
            height: 40,
            child: SpinKitPulse(
              color: Colors.blue,
              size: 30,
            ),
          );
        }
      },
    );
  }
}
