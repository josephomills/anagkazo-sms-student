import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

/// Returns a greeting corresponding to the time of the day.
///
/// * `Good Morning` : 12am - 11:59am
///
/// * `Good afternoon` : 12pm - 4:59pm
///
/// * `Good evening` : 5pm - 11:59pm
String greet() {
  var hour = DateTime.now().hour;
  if (hour < 12) {
    return "Good Morning";
  }
  if (hour < 17) {
    return "Good Afternoon";
  }
  return "Good Evening";
}

/// Formats the given [DateTime]
String formatDate(DateTime dateTime) {
  final dateFormat = DateFormat("dd-MM-yyyy HH:mm:ss");
  return dateFormat.format(dateTime);
}

/// Method to unfocus when tapped
unfocus(BuildContext context) {
  FocusScopeNode currentFocus = FocusScope.of(context);
  if (!currentFocus.hasPrimaryFocus) {
    currentFocus.unfocus();
  }
}
