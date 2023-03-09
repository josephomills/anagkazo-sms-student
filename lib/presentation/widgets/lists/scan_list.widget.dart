import 'package:flutter/material.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';
import 'package:skeletons/skeletons.dart';
import 'package:student/application/attendance/attendance/attendance_bloc.dart';
import 'package:student/application/auth/auth/auth_bloc.dart';
import 'package:student/domain/core/config/injectable.core.dart';
import 'package:student/domain/core/enums/types.enum.dart';
import 'package:student/domain/core/extensions/string.ext.dart';
import 'package:student/infrastructure/attendance/models/event.object.dart';
import 'package:student/infrastructure/attendance/models/event_type.object.dart';
import 'package:student/infrastructure/attendance/models/scan.object.dart';
import 'package:student/presentation/widgets/cards/scan.widget.dart';
import 'package:student/presentation/widgets/cards/skeleton_scan.widget.dart';
import 'package:student/presentation/widgets/lists/empty_state.widget.dart';

/// /// A live list of scans.
///
/// Uses the [ParseLiveListWidget] from Back4App/Parse Server
class ScanListWidget extends StatelessWidget {
  const ScanListWidget({
    Key? key,
    required this.category,
  }) : super(key: key);

  final EventCategory category;

  @override
  Widget build(BuildContext context) {
    return ParseLiveListWidget<ScanObject>(
      query: QueryBuilder<ScanObject>(ScanObject())
        ..includeObject([
          ScanObject.kEvent,
          "${ScanObject.kEvent}.${EventObject.kEventType}",
        ])
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
          ScanObject.kEvent,
          QueryBuilder<EventObject>(EventObject())
            ..whereMatchesQuery(
              EventObject.kEventType,
              QueryBuilder<EventTypeObject>(EventTypeObject())
                ..whereEqualTo(
                  EventTypeObject.kCategory,
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
      queryEmptyElement: const EmptyStateWidget(
        asset: "assets/illustrations/taking_selfie.png",
        text: "You have not scanned yet. Let'start now.",
      ),
      childBuilder: (context, snapshot) {
        if (snapshot.failed) {
          return Center(
            child: Image.asset("assets/illustrations/signal_searching.png"),
          );
        } else if (snapshot.hasData) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 4),
            child: ScanWidget(scan: snapshot.loadedData!),
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
