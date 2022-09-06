import 'package:intl/intl.dart';

String formatDate(DateTime dateTime) {
  final dateFormat = DateFormat("dd-MM-yyyy HH:mm:ss");
  return dateFormat.format(dateTime);
}
