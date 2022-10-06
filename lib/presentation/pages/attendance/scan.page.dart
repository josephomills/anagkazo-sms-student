// import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:student/presentation/widgets/scannerAnimation.widget.dart';

class ScanPage extends StatefulWidget {
  const ScanPage({Key? key}) : super(key: key);

  @override
  State<ScanPage> createState() => _ScanPageState();
}

class _ScanPageState extends State<ScanPage>
    with SingleTickerProviderStateMixin {
  MobileScannerController ctrl = MobileScannerController(
    formats: [BarcodeFormat.qrCode],
  );
  bool torchOn = false;
  late AnimationController _animationController;
  final bool _animationStopped = false;
  String scanText = "Scan";
  bool scanning = true;

  @override
  void initState() {
    _animationController =
        AnimationController(duration: const Duration(seconds: 3), vsync: this);

    _animationController.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        animateScanAnimation(reverse: true);
      } else if (status == AnimationStatus.dismissed) {
        animateScanAnimation(reverse: false);
      }
    });
    _animationController.forward(from: 0.0);
    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
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
                  // "dateTime": Timestamp.now(), // use server time (UTC)
                };
                // Pause scan

                // Go to confirmation page
                // AutoRouter.of(context)
                //     .popAndPush(ScanConfirmationRoute(details: details));
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
          ScannerAnimatedWidget(
            stopped: _animationStopped,
            width: MediaQuery.of(context).size.width,
            animation: _animationController,
          ),
        ],
      ),
    );
  }

  void animateScanAnimation({required bool reverse}) {
    if (reverse) {
      _animationController.reverse(from: 1.0);
    } else {
      _animationController.forward(from: 0.0);
    }
  }
}
