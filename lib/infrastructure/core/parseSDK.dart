import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';
import 'package:path_provider/path_provider.dart';
import 'package:student/infrastructure/attendance/models/event.object.dart';
import 'package:student/infrastructure/attendance/models/scan.object.dart';
import 'package:student/infrastructure/academics/models/yearGroup.object.dart';
import 'package:student/infrastructure/myFellowship/models/member/member.object.dart';
import 'package:student/infrastructure/myFellowship/models/service/service.object.dart';
import 'package:path/path.dart' as path;

const String kAppId = "U8fyVpsUKGmZhq0KS9EZopCkYfdXXQxR3GS7twW4";
const String kServerUrl = "https://parseapi.back4app.com";
const String kClientKey = "8l7BMF9rnsFtbXboWqBePLLcJEcmp3KJBnbBmL0N";
const String kliveQueryUrl = "https://anagkazosms.b4a.io";
const bool kAutoSendSessionId = true;

initParse() async {
  await Parse().initialize(
    kAppId,
    kServerUrl,
    clientKey: kClientKey,
    debug: true,
    // coreStore: await CoreStoreSembastImp.getInstance(
    //   factory: databaseFactoryIo,
    //   password: kAppId,
    // ),
    liveQueryUrl: kliveQueryUrl,
    // liveListRetryIntervals: [0, 100, 300, 500, 1000, 2000],
    autoSendSessionId: kAutoSendSessionId,
    // securityContext: SecurityContext(withTrustedRoots: true),
    // clientCreator: ({bool? sendSessionId, SecurityContext? securityContext}) =>
    //     ParseDioClient(
    //   sendSessionId: kAutoSendSessionId,
    //   securityContext: securityContext,
    // ),
    registeredSubClassMap: {
      "YearGroup": () => YearGroupObject(),
      "Member": () => MemberObject(),
      "Service": () => ServiceObject(),
      // "Fellowship": () => const UserModel(),
      // "Bacenta": () => const UserModel(),
      // "Constituency": () => const UserModel(),
      "Scan": () => ScanObject(),
      "Event": () => EventObject(),
    },
    // connectivityProvider: ,
  );
}

Future<String> dbDirectory() async {
  String dbDirectory = '';
  dbDirectory = (await getApplicationDocumentsDirectory()).path;
  return path.join('$dbDirectory/parse', 'parse.db');
}
