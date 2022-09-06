import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

class CameraPermissionWidget extends StatelessWidget {
  const CameraPermissionWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: Center(
        child: Container(
          margin: const EdgeInsets.all(8),
          height: 340,
          width: 360,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
          ),
          child: ListView(
            children: [
              const Text("Camera Permission Required to Scan"),
              Row(
                children: [
                  OutlinedButton(
                    onPressed: () => AutoRouter.of(context).pop(),
                    child: const Text(
                      "Cancel",
                      style: TextStyle(color: Colors.red),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () => Permission.camera.request(),
                    child: const Text("Request"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
