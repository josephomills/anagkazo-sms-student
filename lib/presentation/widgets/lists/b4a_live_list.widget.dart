import 'package:flutter/material.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';
import 'package:skeletons/skeletons.dart';
import 'package:student/application/attendance/attendance/attendance_bloc.dart';
import 'package:student/domain/core/config/injectable.core.dart';
import 'package:student/domain/core/enums/types.enum.dart';
import 'package:student/infrastructure/attendance/models/scan.object.dart';
import 'package:student/presentation/widgets/cards/scan.widget.dart';
import 'package:student/presentation/widgets/cards/skeleton_scan.widget.dart';

class B4aLiveListWidget extends StatelessWidget {
  const B4aLiveListWidget(
      {Key? key, required this.eventType, required this.query})
      : super(key: key);

  final EventType eventType;
  final QueryBuilder<ScanObject> query;

  @override
  Widget build(BuildContext context) {
    return ParseLiveListWidget<ScanObject>(
      // query: QueryBuilder(ScanObject()),
      query: query,
      listLoadingElement: SkeletonListView(
        itemCount: 10,
        itemBuilder: (context, index) => const SkeletonScanWidget(),
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
            eventType: eventType,
          );
        } else {
          return const SkeletonScanWidget();
        }
      },
    );
  }

  QueryBuilder<ScanObject> getQueryBuilder(
      {required BuildContext context, required EventType eventType}) {
    switch (eventType) {
      case EventType.vision:
        return getIt<AttendanceBloc>().state.visionQueryOption;
      case EventType.pillar:
        return getIt<AttendanceBloc>().state.pillarQueryOption;
      case EventType.live:
        return getIt<AttendanceBloc>().state.aLiveQueryOption;
      case EventType.experience:
        return getIt<AttendanceBloc>().state.flExpQueryOption;
      default:
        return QueryBuilder(ScanObject());
    }
  }
}
