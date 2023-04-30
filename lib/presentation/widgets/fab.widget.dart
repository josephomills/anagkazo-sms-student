import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:student/presentation/navigation/autoroute.gr.dart';

class FABWidget extends StatelessWidget {
  const FABWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      label: const Text("Scan"),
      icon: const Icon(LineAwesomeIcons.qrcode),
      onPressed: () async {
        // Check camera permission before opening scan page
        // var status = await Permission.camera.status;
        // if (status.isDenied) {
        //   await Permission.camera.request();
        // }

        // if (status.isGranted) {
        //   context.router.push(const ScanRoute());
        // }
        context.router.push(const ScanRoute());
      },
    );
  }
}
