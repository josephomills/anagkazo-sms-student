import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';
import 'package:student/infrastructure/attendance/models/event.object.dart';
import 'package:student/infrastructure/attendance/models/event_type.object.dart';
import 'package:student/infrastructure/attendance/models/scan.object.dart';
import 'package:student/infrastructure/academics/models/year_group.object.dart';
import 'package:student/infrastructure/myFellowship/models/member/member.object.dart';
import 'package:student/infrastructure/myFellowship/models/service/service.object.dart';

const String kAppId = "U8fyVpsUKGmZhq0KS9EZopCkYfdXXQxR3GS7twW4";
const String kServerUrl = "https://parseapi.back4app.com";
const String kClientKey = "8l7BMF9rnsFtbXboWqBePLLcJEcmp3KJBnbBmL0N";
const String kliveQueryUrl = "https://anagkazosms.b4a.io";

Future<void> initParse() async {
  await Parse().initialize(
    kAppId,
    kServerUrl,
    clientKey: kClientKey,
    debug: true,
    coreStore: await CoreStoreSembastImp.getInstance(),
    liveQueryUrl: kliveQueryUrl,
    registeredSubClassMap: {
      "YearGroup": () => YearGroupObject(),
      "Member": () => MemberObject(),
      "Service": () => ServiceObject(),
      "Scan": () => ScanObject(),
      "Event": () => EventObject(),
      "EventType": () => EventTypeObject(),
    },
  );
}
