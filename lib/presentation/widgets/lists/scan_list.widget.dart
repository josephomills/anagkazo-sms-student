import 'package:flutter/material.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk_flutter.dart';
import 'package:skeletons/skeletons.dart';
import 'package:student/application/attendance/attendance/attendance_bloc.dart';
import 'package:student/domain/core/config/injectable.core.dart';
import 'package:student/domain/core/enums/types.enum.dart';
import 'package:student/domain/core/extensions/string.ext.dart';
import 'package:student/infrastructure/attendance/models/event.object.dart';
import 'package:student/infrastructure/attendance/models/event_type.object.dart';
import 'package:student/infrastructure/attendance/models/scan.object.dart';
import 'package:student/presentation/widgets/cards/scan.widget.dart';
import 'package:student/presentation/widgets/cards/skeleton_scan.widget.dart';
import 'package:student/presentation/widgets/lists/empty_state.widget.dart';

/// A live list of scans.
///
/// Uses the [ParseLiveListWidget] from Back4App/Parse Server
class ScanListWidget extends StatefulWidget {
  const ScanListWidget({
    Key? key,
    required this.category,
  }) : super(key: key);

  final EventCategory category;

  @override
  State<ScanListWidget> createState() => _ScanListWidgetState();
}

class _ScanListWidgetState extends State<ScanListWidget> {
  late QueryBuilder<ScanObject> query;

  @override
  void initState() {
    super.initState();
    query = QueryBuilder<ScanObject>(ScanObject())
      ..whereEqualTo(ScanObject.kUser, getIt<ParseUser>().toPointer())
      ..whereMatchesQuery(
        ScanObject.kEvent,
        QueryBuilder<EventObject>(EventObject())
          ..whereMatchesQuery(
            EventObject.kEventType,
            QueryBuilder<EventTypeObject>(EventTypeObject())
              ..whereEqualTo(
                EventTypeObject.kCategory,
                widget.category.name.capitalize,
              ),
          ),
      )
      ..includeObject([
        ScanObject.kEvent,
        "${ScanObject.kEvent}.${EventObject.kEventType}",
      ])
      ..orderByDescending(ScanObject.kScannedInAt)
      ..excludeKeys([ScanObject.kSelfie])
      ..setLimit(50);
  }

  @override
  Widget build(BuildContext context) {
    return ParseLiveListWidget<ScanObject>(
      query: query,
      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
      scrollPhysics: const BouncingScrollPhysics(),
      // lazyLoading: false,
      listenOnAllSubItems: true,
      listLoadingElement: SkeletonListView(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
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
      removedItemBuilder: (context, snapshot) {
        return Container();
      },
    );
  }

  Widget get loadingWidget => SkeletonListView(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        itemCount: 15,
        itemBuilder: (context, index) => const SkeletonScanWidget(),
      );

  Widget get emptyWidget => const EmptyStateWidget(
        asset: "assets/illustrations/taking_selfie.png",
        text: "You have not scanned yet. Let'start now.",
      );
}
