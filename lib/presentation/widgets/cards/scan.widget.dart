import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:moment_dart/moment_dart.dart';
import 'package:student/domain/core/enums/types.enum.dart';

class ScanWidget extends StatelessWidget {
  const ScanWidget({
    Key? key,
    required this.dateTime,
    required this.scanIn,
    required this.scanOut,
    this.eventType,
  }) : super(key: key);

  final DateTime dateTime;
  final bool scanIn;
  final bool scanOut;
  final EventType? eventType;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        Moment(dateTime).formatDateTimeWithWeekday(),
        style: const TextStyle(
          fontSize: 24,
        ),
      ),
      subtitle: Text(formatDate(dateTime).split(" ").first),
      trailing: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          eventType == null ? Container(height: 10) : Text(eventType!.name),
          const Icon(Icons.qr_code),
        ],
      ),
    );
  }

  String formatDate(DateTime dateTime) {
    final dateFormat = DateFormat("dd-MM-yyyy HH:mm:ss");
    return dateFormat.format(dateTime);
  }

  bool isLate(EventType type, DateTime dateTime) {
    bool isLate = false;

    switch (type) {
      case EventType.pillar:
        isLate = (formatDate(dateTime).split(" ")[1].substring(0, 2) == "11") &&
            int.parse(formatDate(dateTime).split(" ")[1].substring(3, 5)) > 15;
        break;
      default:
    }

    return isLate;
  }
}
