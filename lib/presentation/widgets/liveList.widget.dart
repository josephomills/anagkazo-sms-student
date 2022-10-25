import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';
import 'package:student/application/attendance/attendance/attendance_bloc.dart';
import 'package:student/application/core/injectable.core.dart';
import 'package:student/domain/attendance/lectureType.enum.dart';
import 'package:student/infrastructure/attendance/models/scan.object.dart';
import 'package:student/presentation/widgets/scan.widget.dart';

class LiveListWidget extends StatelessWidget {
  const LiveListWidget({Key? key, required this.lectureType}) : super(key: key);

  final LectureType lectureType;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AttendanceBloc, AttendanceState>(
      bloc: getIt<AttendanceBloc>()
        ..add(AttendanceEvent.getScans(
          lectureType: lectureType,
        )),
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        if (state.failureOrQueryOption.isNone()) {
          return const SpinKitCubeGrid(
            color: Colors.blue,
            size: 40,
          );
        }

        final query = state.failureOrQueryOption
            .getOrElse(() => Right(QueryBuilder(ScanObject())))
            .getOrElse(() => QueryBuilder(ScanObject()));

        return ParseLiveListWidget<ScanObject>(
          query: query,
          duration: const Duration(seconds: 1),
          listLoadingElement: const SpinKitCubeGrid(
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
              return const SpinKitPulse(
                color: Colors.blue,
                size: 40,
              );
            }
          },
        );
      },
    );
  }
}
