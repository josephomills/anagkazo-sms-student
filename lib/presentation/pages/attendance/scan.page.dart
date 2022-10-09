// import 'package:cloud_firestore/cloud_firestore.dart';
import 'dart:convert';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:student/application/attendance/scan/scan_bloc.dart';
import 'package:student/application/core/injectable.core.dart';
import 'package:student/presentation/themes/context.ext.dart';
import 'package:student/presentation/widgets/scannerAnimation.widget.dart';

class ScanPage extends StatefulWidget implements AutoRouteWrapper {
  const ScanPage({Key? key}) : super(key: key);

  @override
  State<ScanPage> createState() => _ScanPageState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<ScanBloc>(
      create: (context) => getIt<ScanBloc>(),
      child: this,
    );
  }
}

class _ScanPageState extends State<ScanPage>
    with SingleTickerProviderStateMixin {
  MobileScannerController scannerCtrl = MobileScannerController(
    formats: [BarcodeFormat.qrCode],
  );
  late AnimationController _animationCtrl;

  @override
  void initState() {
    _animationCtrl =
        AnimationController(duration: const Duration(seconds: 3), vsync: this);

    _animationCtrl.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        animateScanAnimation(reverse: true);
      } else if (status == AnimationStatus.dismissed) {
        animateScanAnimation(reverse: false);
      }
    });
    _animationCtrl.forward(from: 0.0);
    super.initState();
  }

  @override
  void dispose() {
    _animationCtrl.dispose();
    scannerCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Scan QR Code"),
        elevation: 0,
        actions: [
          if (scannerCtrl.hasTorch)
            IconButton(
              onPressed: () async {
                await scannerCtrl.toggleTorch();
              },
              icon: const Icon(Icons.flashlight_on),
            ),
        ],
      ),
      body: BlocConsumer<ScanBloc, ScanState>(
        bloc: context.bloc<ScanBloc>(),
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          return Stack(
            children: [
              MobileScanner(
                allowDuplicates: false,
                controller: scannerCtrl,
                onDetect: (barcode, args) {
                  if (barcode.rawValue != null) {
                    // Example payload
                    // {
                    //   "eventId": "eventId",
                    //   "dateTime": "dateTime",
                    //   "type": "in",
                    // }

                    String value = barcode.rawValue ?? "";

                    final map = jsonDecode(value) as Map<String, dynamic>;

                    context
                        .bloc<ScanBloc>()
                        .add(ScanEvent.scanDetected(qr: map));

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
                stopped: !(state.isScanning),
                width: MediaQuery.of(context).size.width,
                animation: _animationCtrl,
              ),
              if (state.isLoading)
                const SpinKitCubeGrid(
                  color: Colors.blue,
                  size: 60,
                )
            ],
          );
        },
      ),
    );
  }

  void animateScanAnimation({required bool reverse}) {
    if (reverse) {
      _animationCtrl.reverse(from: 1.0);
    } else {
      _animationCtrl.forward(from: 0.0);
    }
  }
}
