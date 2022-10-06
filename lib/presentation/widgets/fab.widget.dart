import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:student/application/core/router.core.gr.dart';

class FABWidget extends StatelessWidget {
  const FABWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: const Icon(Icons.qr_code_scanner),
      onPressed: (() async {
        // Check camera permission before opening scan page
        var status = await Permission.camera.status;
        if (status.isDenied) {
          await Permission.camera.request();
        }

        if (status.isGranted) {
          context.router.push(const ScanRoute());
        }
      }),
    );
  }
}
