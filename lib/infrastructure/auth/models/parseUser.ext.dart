import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';

extension ParseUserExt on ParseUser {
  Map<String, dynamic> toMap() => {
        "objectId": objectId,
        "username": username,
        "email": emailAddress,
        "isStaff": get("isStaff") as bool,
        "dob": (get("dob") as DateTime).toIso8601String(),
        "title": get("title"),
        "photoUrl": get("photoUrl"),
        "gender": get("gender"),
        "firstname": get("firstname"),
        "lastname": get("lastname"),
        "middleName": get("middleName"),
        "country": get("country"),
        "phone": get("phone"),
        "whatsapp": get("whatsapp"),
        "yearGroup": get("yearGroup"),
      };
}
