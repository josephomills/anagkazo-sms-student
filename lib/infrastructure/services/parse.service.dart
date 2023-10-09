import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk_flutter.dart';
import 'package:student/infrastructure/academics/models/rotation.object.dart';
import 'package:student/infrastructure/attendance/models/event.object.dart';
import 'package:student/infrastructure/attendance/models/event_type.object.dart';
import 'package:student/infrastructure/attendance/models/scan.object.dart';
import 'package:student/infrastructure/academics/models/year_group.object.dart';
import 'package:student/infrastructure/myFellowship/models/member/member.object.dart';
import 'package:student/infrastructure/myFellowship/models/service/service.object.dart';

Future<void> initParse() async {
  await Parse().initialize(
    dotenv.get("APP_ID"),
    dotenv.get("SERVER_URL"),
    clientKey: dotenv.get("CLIENT_KEY"),
    debug: true,
    coreStore: await CoreStoreSembast.getInstance(),
    liveQueryUrl: dotenv.get("LIVE_QUERY_URL"),
    registeredSubClassMap: {
      "YearGroup": () => YearGroupObject(),
      "Member": () => MemberObject(),
      "Service": () => ServiceObject(),
      "Scan": () => ScanObject(),
      "Event": () => EventObject(),
      "EventType": () => EventTypeObject(),
      "Rotation": () => RotationObject(),
    },
  );
}
