import 'dart:convert';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:moment_dart/moment_dart.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:student/application/attendance/scan/scan_bloc.dart';
import 'package:student/domain/core/config/injectable.core.dart';
import 'package:student/domain/core/extensions/context.ext.dart';
import 'package:student/infrastructure/attendance/models/event.object.dart';
import 'package:student/presentation/widgets/animations/scanner_animation.widget.dart';
import 'package:student/presentation/widgets/button.widget.dart';
import 'package:student/presentation/widgets/loader.widget.dart';

/// Scan page
class ScanPage extends StatefulWidget {
  const ScanPage({Key? key}) : super(key: key);

  @override
  State<ScanPage> createState() => _ScanPageState();
}

class _ScanPageState extends State<ScanPage>
    with SingleTickerProviderStateMixin {
  /// Scanner controller
  MobileScannerController scannerCtrl = MobileScannerController(
    detectionSpeed: DetectionSpeed.noDuplicates,
    formats: [BarcodeFormat.qrCode],
  );

  /// Animation controller
  late AnimationController _animationCtrl;

  @override
  void initState() {
    scannerCtrl.start();
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
      bloc: getIt<ScanBloc>(),
      listener: (context, state) {
        if (!state.isLoading) {
          state.failureOrScanOption.fold(
            () {},
            (either) => either.fold(
              (f) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(f.message!),
                  ),
                );
                // close scan page
                context.router.pop();
              },
              (scanObj) {
                // close scan page
                context.router.pop();
              },
            ),
          );
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
                  icon: const Icon(LineAwesomeIcons.lightbulb),
                ),
            ],
          ),
          body: Stack(
            children: [
              // Scan camera view
              MobileScanner(
                controller: scannerCtrl,
                scanWindow: Rect.fromCenter(
                  center: Offset(
                    ResponsiveWrapper.of(context).scaledWidth / 2,
                    ResponsiveWrapper.of(context).scaledHeight / 2,
                  ),
                  width: 300,
                  height: 300,
                ),
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
          bottomSheet: state.isConfirming
              ? BottomSheet(
                  onClosing: () {},
                  builder: (context) {
                    final event =
                        state.eventOption.getOrElse((() => EventObject()));
                    return Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 32),
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(8),
                          topRight: Radius.circular(8),
                        ),
                        color: Theme.of(context).colorScheme.background,
                      ),
                      child: Column(
                        children: [
                          const Icon(LineAwesomeIcons.qrcode, size: 40),
                          Text(
                            "QR Code Detected",
                            style: Theme.of(context).textTheme.titleSmall,
                          ),
                          const SizedBox(height: 32),
                          RichText(
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            text: TextSpan(
                              children: [
                                const TextSpan(text: "Event: "),
                                TextSpan(text: event.name!),
                              ],
                            ),
                          ),
                          const SizedBox(height: 8),
                          RichText(
                            text: TextSpan(
                              children: [
                                const TextSpan(text: "Date: "),
                                TextSpan(
                                    text: Moment(event.startsAt!)
                                        .formatDateShort()),
                              ],
                            ),
                          ),
                          const SizedBox(height: 8),
                          RichText(
                            text: TextSpan(
                              children: [
                                const TextSpan(text: "Time: "),
                                TextSpan(
                                    text: Moment(event.startsAt!)
                                        .formatTimeWithSeconds()),
                              ],
                            ),
                          ),
                          const SizedBox(height: 8),
                          RichText(
                            text: TextSpan(
                              children: [
                                const TextSpan(text: "Scan: "),
                                TextSpan(text: state.qr!["type"]),
                              ],
                            ),
                          ),
                          const SizedBox(height: 8),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ButtonWidget(
                                isLoading: false,
                                label: "Cancel",
                                widthFactor: 0.3,
                                onTap: state.isLoading
                                    ? null
                                    : () {
                                        getIt<ScanBloc>().add(
                                            const ScanEvent.scanCancelled());
                                        context.router.pop();
                                      },
                              ),
                              const SizedBox(width: 8),
                              ButtonWidget(
                                isLoading: state.isLoading,
                                label: "Confirm",
                                widthFactor: 0.3,
                                onTap: state.isLoading
                                    ? null
                                    : () {
                                        getIt<ScanBloc>().add(
                                            const ScanEvent.scanConfirmed());
                                        context.router.pop();
                                      },
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                )
              : null,
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
