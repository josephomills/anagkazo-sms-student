import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:student/core/enums/lecture_type.enum.dart';

class ScanWidget extends StatelessWidget {
  const ScanWidget({
    Key? key,
    required this.dateTime,
    required this.scanIn,
    required this.scanOut,
    this.lectureType,
  }) : super(key: key);

  final DateTime dateTime;
  final bool scanIn;
  final bool scanOut;
  final LectureType? lectureType;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        formatDate(dateTime).split(" ").last,
        style: const TextStyle(
          fontSize: 24,
        ),
      ),
      subtitle: Text(formatDate(dateTime).split(" ").first),
      trailing: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          lectureType == null
              ? Container(height: 10)
              : Text(lectureType!.value),
          const Icon(Icons.qr_code),
        ],
      ),
    );
  }

  String formatDate(DateTime dateTime) {
    final dateFormat = DateFormat("dd-MM-yyyy HH:mm:ss");
    return dateFormat.format(dateTime);
  }

  bool isLate(LectureType type, DateTime dateTime) {
    bool isLate = false;

    switch (type) {
      case LectureType.pillar:
        isLate = (formatDate(dateTime).split(" ")[1].substring(0, 2) == "11") &&
            int.parse(formatDate(dateTime).split(" ")[1].substring(3, 5)) > 15;
        break;
      default:
    }

    return isLate;
  }
}
