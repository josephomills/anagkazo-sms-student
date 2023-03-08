import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:moment_dart/moment_dart.dart';
import 'package:student/infrastructure/attendance/models/gathering.object.dart';

class ScanWidget extends StatelessWidget {
  const ScanWidget({
    Key? key,
    required this.dateTime,
    this.scanIn,
    this.scanOut,
    this.gathering,
  }) : super(key: key);

  final DateTime dateTime;
  final DateTime? scanIn;
  final DateTime? scanOut;
  final GatheringObject? gathering;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      tileColor: Theme.of(context).colorScheme.background,
      title: Text(
        "${gathering!.gatheringType!.name!}, ${Moment(dateTime).formatDateShort()}",
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      subtitle: Text(Moment(scanIn!).formatDateTimeWithWeekdayShort()),
      trailing: SizedBox(
        width: 88,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const Icon(LineAwesomeIcons.qrcode),
            Text(
              gathering!.gatheringType!.name!,
              style: Theme.of(context).textTheme.bodySmall!,
            ),
          ],
        ),
      ),
    );
  }

  Row coloredScan(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 14,
          child: Text(
            "in",
            style: Theme.of(context)
                .textTheme
                .bodySmall!
                .copyWith(color: Colors.white),
          ),
          backgroundColor: Moment(scanIn!).isAfter(Moment(dateTime)
                  .add(Duration(minutes: gathering!.latenessRule!)))
              ? Theme.of(context).colorScheme.error
              : Colors.green,
        ),
        const Spacer(),
        CircleAvatar(
          radius: 14,
          child: Text(
            "out",
            style: Theme.of(context)
                .textTheme
                .bodySmall!
                .copyWith(color: Colors.white),
          ),
          backgroundColor: Moment(scanIn!).isAfter(Moment(dateTime)
                  .add(Duration(minutes: gathering!.latenessRule!)))
              ? Theme.of(context).colorScheme.error
              : Colors.green,
        ),
      ],
    );
  }

  // bool isLate(GatheringType type, DateTime dateTime) {
  //   bool isLate = false;

  //   switch (type) {
  //     case GatheringType.pillar:
  //       isLate = (formatDate(dateTime).split(" ")[1].substring(0, 2) == "11") &&
  //           int.parse(formatDate(dateTime).split(" ")[1].substring(3, 5)) > 15;
  //       break;
  //     default:
  //   }

  //   return isLate;
  // }
}
