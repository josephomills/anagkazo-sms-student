// import 'package:cloud_firestore/cloud_firestore.dart';
import 'dart:convert';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:student/application/attendance/scan/scan_bloc.dart';
import 'package:student/application/core/injectable.core.dart';
import 'package:student/infrastructure/core/models/yearGroup.object.dart';
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
  bool isScanning = true;

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
      body: Stack(
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
                // Get Event object from server

                // Check for a valid scan
                // 1. Scan is on the same day
                // 2. Student is in a class the event is valid for
                final bool isValid = isValidScan(
                  scanDate: map["dateTime"],
                  studentYearGroup: YearGroupObject(),
                  allowedYearGroups: [],
                );

                if (isValid) {
                  if (map["type"] == "IN") {
                    // Check for lateness
                  }
                  // if it's a scan in, create a scan object.

                  // if it's a scan out, check for a scan in update the scan object (event & user)
                }

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
            stopped: isScanning,
            width: MediaQuery.of(context).size.width,
            animation: _animationCtrl,
          ),
        ],
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

  bool isScanForToday({required DateTime scanDate}) {
    final now = DateTime.now().toUtc();
    final today = DateTime(now.year, now.month, now.day);
    scanDate = scanDate.toUtc();
    final scanDateTime = DateTime(scanDate.year, scanDate.month, scanDate.day);

    return scanDateTime == today;
  }

  bool isStudentInCorrectClass({
    required YearGroupObject studentYearGroup,
    List<YearGroupObject>? allowedYearGroups,
  }) {
    bool studentInCorrectClass = true;

    if (allowedYearGroups != null) {
      studentInCorrectClass = allowedYearGroups.contains(studentYearGroup);
    }

    return studentInCorrectClass;
  }

  bool isValidScan({
    required DateTime scanDate,
    required YearGroupObject studentYearGroup,
    List<YearGroupObject>? allowedYearGroups,
  }) {
    // return isStudentInCorrectClass(
    //         studentYearGroup: studentYearGroup,
    //         allowedYearGroups: allowedYearGroups) &&
    //     isScanForToday(scanDate: scanDate);

    return true;
  }
}
