import 'dart:convert';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:student/application/attendance/scan/scan_bloc.dart';
import 'package:student/domain/core/config/injectable.core.dart';
import 'package:student/domain/core/extensions/context.ext.dart';
import 'package:student/presentation/widgets/animations/scanner_animation.widget.dart';
import 'package:student/presentation/widgets/loader.widget.dart';
import 'package:student/presentation/widgets/scan_confirmation.widget.dart';

/// Scan page
@RoutePage()
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
  /// Scanner controller
  final _scannerCtrl = MobileScannerController(
    detectionSpeed: DetectionSpeed.normal,
    detectionTimeoutMs: 5000,
    formats: [BarcodeFormat.qrCode],
  );

  /// Animation controller
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
    _scannerCtrl.stop();
    _scannerCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ScanBloc, ScanState>(
      listenWhen: (previous, current) =>
          current.isConfirming != previous.isConfirming,
      listener: (context, state) {
        // Show confirmation modal
        if (state.isConfirming) {
          // showbottomsheet
          showModalBottomSheet(
            context: context,
            // constraints: const BoxConstraints.expand(height: 240),
            builder: (_) => BlocProvider.value(
              value: context.read<ScanBloc>(),
              child: const ScanConfirmationWidget(),
            ),
          ).whenComplete(() {
            // Clear state values
            context.read<ScanBloc>().add(const ScanEvent.started());
          });
        }
      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            leading: const AutoLeadingButton(),
            title: const Text("Scan QR Code"),
            actions: [
              if (_scannerCtrl.hasTorch)
                IconButton(
                  onPressed: () async {
                    await _scannerCtrl.toggleTorch();
                  },
                  icon: const Icon(LineAwesomeIcons.lightning_bolt),
                ),
            ],
          ),
          body: Stack(
            children: [
              // Scan camera view
              MobileScanner(
                controller: _scannerCtrl,
                onDetect: (capture) {
                  if (capture.barcodes.isNotEmpty) {
                    // Example payload
                    // {
                    //   "eventId": "",
                    //   "type": "IN/OUT",
                    // }

                    String value = capture.barcodes[0].rawValue ?? "";
                    if (value.isNotEmpty) {
                      final map = jsonDecode(value) as Map<String, dynamic>;

                      context
                          .bloc<ScanBloc>()
                          .add(ScanEvent.scanDetected(qr: map));
                    }
                  }
                },
              ),
              // Scanner animation
              ScannerAnimatedWidget(
                stopped: !(state.isScanning),
                width: ResponsiveWrapper.of(context).scaledWidth,
                animation: _animationCtrl,
              ),
              // Loading spinner
              if (state.isLoading && !state.isConfirming)
                const LoaderWidget(transparent: false)
            ],
          ),
        );
      },
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
