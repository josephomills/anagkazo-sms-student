import 'package:flutter/material.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';
import 'package:student/application/auth/auth/auth_bloc.dart';
import 'package:student/domain/core/config/injectable.core.dart';
import 'package:student/domain/core/enums/types.enum.dart';
import 'package:student/domain/core/extensions/string.ext.dart';
import 'package:student/infrastructure/attendance/attendance.repo.dart';
import 'package:student/infrastructure/attendance/models/gathering.object.dart';
import 'package:student/infrastructure/attendance/models/gathering_type.object.dart';
import 'package:student/infrastructure/attendance/models/scan.object.dart';
import 'package:student/presentation/widgets/lists/scan_list.widget.dart';

class OtherTabPage extends StatelessWidget {
  const OtherTabPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ScanListWidget(
      category: GatheringCategory.other,
    );
  }
}

QueryBuilder<ScanObject> query({required EventCategory category}) {
  final ParseUser user = getIt<AuthBloc>()
      .state
      .currentUserOption
      .getOrElse(() => ParseUser(null, null, null));

  // Get gathering type of given category
  final gatheringTypeQuery = QueryBuilder<GatheringTypeObject>(
      GatheringTypeObject())
    ..keysToReturn([GatheringTypeObject.kName, GatheringTypeObject.kCategory])
    ..whereEqualTo(GatheringTypeObject.kCategory, category.name.capitalize);

  // Get all gatherings of the given type
  final gatheringQuery = QueryBuilder<GatheringObject>(GatheringObject())
    ..includeObject([GatheringObject.kGatheringType])
    ..excludeKeys([GatheringObject.kExcluded])
    ..whereMatchesQuery(GatheringObject.kGatheringType, gatheringTypeQuery);

  // get all scans of the above gatherings
  final query = QueryBuilder<ScanObject>(ScanObject())
    ..includeObject([ScanObject.kGathering])
    ..orderByDescending(ScanObject.kScannedInAt)
    ..excludeKeys([ScanObject.kSelfie])
    ..whereEqualTo(ScanObject.kUser, user.toPointer())
    ..whereMatchesQuery(ScanObject.kGathering, gatheringQuery);

  return query;
}
