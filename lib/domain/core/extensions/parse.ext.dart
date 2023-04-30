import 'package:parse_server_sdk_flutter/parse_server_sdk_flutter.dart';

/// Extension on [ParseUser]
extension ParseUserExt on ParseUser {
  /// Returns a map with the [ParseUser]'s fields
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

  /// Returns true if the [ParseUser] is empty.
  ///
  /// i.e. `username == null && emailAddress == null && password == null`
  bool isEmpty() {
    return username == null && emailAddress == null && password == null;
  }

  /// Creates an empty [ParseUser]
  ///
  /// i.e. `username == null && emailAddress == null && password == null`
  static ParseUser empty() => ParseUser(null, null, null);
}
