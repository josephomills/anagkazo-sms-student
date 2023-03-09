import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:moment_dart/moment_dart.dart';
import 'package:student/infrastructure/myFellowship/models/service/service.object.dart';

class FellowshipServiceDetailsWidget extends StatelessWidget {
  const FellowshipServiceDetailsWidget({Key? key, required this.service})
      : super(key: key);

  final ServiceObject service;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: const Icon(LineAwesomeIcons.users, size: 40),
        title: Text(Moment(service.date!).formatDateShort()),
        subtitle: Text(
            "Attendance: ${service.attendance}   |   Income: GHC ${service.cediIncome}"),
        onTap: () {
          // expand service details
        },
      ),
    );
  }
}
