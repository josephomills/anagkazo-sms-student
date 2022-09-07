import 'package:auto_route/auto_route.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:student/application/core/router.core.gr.dart';

class ScanPage extends StatefulWidget {
  const ScanPage({Key? key}) : super(key: key);

  @override
  State<ScanPage> createState() => _ScanPageState();
}

class _ScanPageState extends State<ScanPage> {
  MobileScannerController ctrl = MobileScannerController(
    formats: [BarcodeFormat.qrCode],
  );
  bool torchOn = false;

  @override
  void dispose() {
    ctrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        title: const Text(
          "Scan QR Code",
          style: TextStyle(color: Colors.black87, fontStyle: FontStyle.italic),
        ),
        backgroundColor: Colors.white70,
        elevation: 0,
        actions: [
          if (ctrl.hasTorch)
            IconButton(
              onPressed: () async {
                await ctrl.toggleTorch();
              },
              icon: Icon(
                torchOn ? Icons.flashlight_off : Icons.flashlight_on,
                color: Colors.black87,
              ),
            ),
        ],
      ),
      body: Stack(
        children: [
          MobileScanner(
            allowDuplicates: false,
            controller: ctrl,
            onDetect: (barcode, args) {
              if (barcode.rawValue != null) {
                String value = barcode.rawValue ?? "";
                final Map<String, dynamic> details = {
                  "type": value.split(" ").last,
                  "dateTime": Timestamp.now(), // use server time (UTC)
                };
                // Pause scan

                // Go to confirmation page
                AutoRouter.of(context)
                    .popAndPush(ScanConfirmationRoute(details: details));
                // showDialog(
                //   context: context,
                //   barrierDismissible: false,
                //   builder: (_) => ScanConfirmationWidget(details: details),
                // );
                // showModalBottomSheet(
                //   isScrollControlled: true,
                //   context: context,
                //   shape: ,
                //   builder: (context) {},
                // );
              }
            },
          ),
          Align(
            child: Container(
              width: 350,
              height: 350,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.green.withOpacity(0.5),
                  width: 8,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
