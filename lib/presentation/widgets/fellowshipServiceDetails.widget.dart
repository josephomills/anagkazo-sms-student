import 'package:flutter/material.dart';
import 'package:student/infrastructure/myFellowship/models/service/service.object.dart';

class FellowshipServiceDetailsWidget extends StatelessWidget {
  const FellowshipServiceDetailsWidget({Key? key, required this.service})
      : super(key: key);

  final ServiceObject service;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: const Icon(Icons.group),
        title: Text(service.date!.toIso8601String().split("T").first),
        subtitle: Text(
            "Attendance: ${service.attendance}   |   Income: GHC ${service.cediIncome}"),
        onTap: () {
          // expand service details
        },
      ),
    );
  }
}
