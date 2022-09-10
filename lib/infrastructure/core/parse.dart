import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';

void initParse() async {
  await Parse().initialize(
    "U8fyVpsUKGmZhq0KS9EZopCkYfdXXQxR3GS7twW4",
    "https://parseapi.back4app.com/",
    clientKey: "8l7BMF9rnsFtbXboWqBePLLcJEcmp3KJBnbBmL0N",
    coreStore: await CoreStoreSembastImp.getInstance(),
    liveQueryUrl: "anagkazosms.b4a.io",
    sessionId: "new",
  );
}
