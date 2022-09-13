import 'package:flutter/material.dart';
import 'package:student/infrastructure/myFellowship/models/service/service.model.dart';

class FellowShipServiceDetailsWidget extends StatelessWidget {
  const FellowShipServiceDetailsWidget({Key? key, required this.serviceModel})
      : super(key: key);

  final ServiceModel serviceModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(Icons.domain),
      title: Text(serviceModel.date.toIso8601String().split("T").first),
      subtitle: Text(
          "Attendance: ${serviceModel.attendance} | Income: GHC ${serviceModel.cediIncome}"),
      onTap: () {
        // expand service details
      },
    );
  }
}
