import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:moment_dart/moment_dart.dart';
import 'package:student/infrastructure/attendance/models/event.object.dart';
import 'package:student/infrastructure/attendance/models/scan.object.dart';

class ScanWidget extends StatelessWidget {
  const ScanWidget({
    Key? key,
    required this.scan,
  }) : super(key: key);

  final ScanObject scan;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      tileColor: Theme.of(context).colorScheme.background,
      title: Text(
        "${scan.event!.name!}, ${Moment(scan.event!.startsAt!).formatDateShort()}",
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      subtitle: Text(
        Moment(scan.scannedInAt!).formatDateTimeWithWeekdayShort(),
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
      leading: const Icon(LineAwesomeIcons.qrcode, size: 48),
      trailing: SizedBox(
        width: 56,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              children: [
                const Text("IN"),
                const Spacer(),
                Icon(
                  isTooLateToScanIn(event: scan.event!)
                      ? hasScannedIn(scan: scan)
                          ? isLateScan(scan: scan)
                              ? LineAwesomeIcons.clock
                              : LineAwesomeIcons.check
                          : hasScannedOut(scan: scan)
                              ? LineAwesomeIcons.clock
                              : LineAwesomeIcons.cross
                      : LineAwesomeIcons.spinner,
                  color: isTooLateToScanIn(event: scan.event!)
                      ? hasScannedIn(scan: scan)
                          ? isLateScan(scan: scan)
                              ? Theme.of(context).colorScheme.secondary
                              : Colors.green.shade700
                          : hasScannedOut(scan: scan)
                              ? Theme.of(context).colorScheme.secondary
                              : Theme.of(context).colorScheme.error
                      : Theme.of(context).colorScheme.onBackground,
                ),
              ],
            ),
            Row(
              children: [
                const Text("OUT"),
                const Spacer(),
                Icon(
                  hasScannedOut(scan: scan)
                      ? LineAwesomeIcons.check
                      : LineAwesomeIcons.minus,
                  // color: hasScannedOut(scan: scan)
                  //     ? Colors.green.shade700
                  //     : Theme.of(context).colorScheme.onBackground,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  bool isLateScan({required ScanObject scan}) {
    return Moment(scan.scannedInAt!).isAfter(Moment(scan.event!.startsAt!)
        .add(Duration(minutes: scan.event!.latenessRule!)));
  }

  bool hasScannedOut({required ScanObject scan}) {
    return scan.scannedOutAt != null;
  }

  bool hasScannedIn({required ScanObject scan}) {
    return scan.scannedInAt != null;
  }

  bool isTooLateToScanIn({required EventObject event}) {
    return Moment.now().toUtc().isAfter(
        Moment(event.startsAt!).add(Duration(minutes: event.latenessRule!)));
  }
}
