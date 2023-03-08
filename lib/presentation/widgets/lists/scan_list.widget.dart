import 'package:flutter/material.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';
import 'package:skeletons/skeletons.dart';
import 'package:student/application/attendance/attendance/attendance_bloc.dart';
import 'package:student/application/auth/auth/auth_bloc.dart';
import 'package:student/domain/core/config/injectable.core.dart';
import 'package:student/domain/core/enums/types.enum.dart';
import 'package:student/domain/core/extensions/string.ext.dart';
import 'package:student/infrastructure/attendance/models/gathering.object.dart';
import 'package:student/infrastructure/attendance/models/gathering_type.object.dart';
import 'package:student/infrastructure/attendance/models/scan.object.dart';
import 'package:student/presentation/widgets/cards/scan.widget.dart';
import 'package:student/presentation/widgets/cards/skeleton_scan.widget.dart';

/// /// A live list of scans.
///
/// Uses the [ParseLiveListWidget] from Back4App/Parse Server
class ScanListWidget extends StatelessWidget {
  const ScanListWidget({
    Key? key,
    required this.category,
  }) : super(key: key);

  final GatheringCategory category;

  @override
  Widget build(BuildContext context) {
    return ParseLiveListWidget<ScanObject>(
      query: QueryBuilder<ScanObject>(ScanObject())
        ..includeObject([ScanObject.kGathering, "gathering.gatheringType"])
        ..orderByDescending(ScanObject.kScannedInAt)
        ..excludeKeys([ScanObject.kSelfie])
        ..whereEqualTo(
            ScanObject.kUser,
            getIt<AuthBloc>()
                .state
                .currentUserOption
                .getOrElse(() => ParseUser(null, null, null))
                .toPointer())
        ..whereMatchesQuery(
          ScanObject.kGathering,
          QueryBuilder<GatheringObject>(GatheringObject())
            ..whereMatchesQuery(
              GatheringObject.kGatheringType,
              QueryBuilder<GatheringTypeObject>(GatheringTypeObject())
                ..whereEqualTo(
                  GatheringTypeObject.kCategory,
                  category.name.capitalize,
                ),
            ),
        ),
      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
      scrollPhysics: const BouncingScrollPhysics(),
      listLoadingElement: SkeletonListView(
        itemCount: 10,
        itemBuilder: (context, index) => const SkeletonScanWidget(),
      ),
      queryEmptyElement: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 72),
            child: Image.asset("assets/illustrations/taking_selfie.png"),
          ),
          const SizedBox(height: 32),
          const Text("You have not scanned yet. Let'start now."),
        ],
      ),
      childBuilder: (context, snapshot) {
        if (snapshot.failed) {
          return Center(
            child: Image.asset("assets/illustrations/signal_searching.png"),
          );
        } else if (snapshot.hasData) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 4),
            child: ScanWidget(
              dateTime: snapshot.loadedData!.gathering!.startsAt!,
              scanIn: snapshot.loadedData!.scannedInAt,
              scanOut: snapshot.loadedData!.scannedOutAt,
              gathering: snapshot.loadedData!.gathering!,
            ),
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
