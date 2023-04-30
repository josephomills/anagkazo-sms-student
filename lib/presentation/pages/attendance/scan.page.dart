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
import 'package:student/infrastructure/attendance/models/event.object.dart';
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
  final scannerCtrl = MobileScannerController(
    detectionSpeed: DetectionSpeed.noDuplicates,
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
    scannerCtrl.stop();
    scannerCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ScanBloc, ScanState>(
      listener: (context, state) {
        if (!state.isLoading) {
          state.failureOrScanOption.fold(
            () {},
            (either) => either.fold(
              (f) {
                // close scan page
                context.router.pop();
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(f.message!),
                  ),
                );
              },
              (scanObj) {
                // close the scan page
                context.router.pop();
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text("Scan successfull!"),
                  ),
                );
              },
            ),
          );
        }

        // Show confirmation modal
        if (state.isConfirming) {
          // stop scanning
          // scannerCtrl.stop();
          // showbottomsheet
          showModalBottomSheet(
            context: context,
            // constraints: const BoxConstraints.expand(height: 240),
            builder: (_) {
              final event = state.eventOption.getOrElse((() => EventObject()));
              return BlocProvider.value(
                value: context.read<ScanBloc>(),
                child: const ScanConfirmationWidget(),
              );
            },
          ).whenComplete(() {
            // Do something when modal is closed
            context.read<ScanBloc>().add(const ScanEvent.started());
            // scannerCtrl.start();
          });
        }
      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            leading: const AutoLeadingButton(),
            title: const Text("Scan QR Code"),
            actions: [
              if (scannerCtrl.hasTorch)
                IconButton(
                  onPressed: () async {
                    await scannerCtrl.toggleTorch();
                  },
                  icon: const Icon(LineAwesomeIcons.lightning_bolt),
                ),
            ],
          ),
          body: Stack(
            children: [
              // Scan camera view
              MobileScanner(
                controller: scannerCtrl,
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
              if (state.isLoading) const LoaderWidget()
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
