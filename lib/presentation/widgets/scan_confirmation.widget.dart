import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:moment_dart/moment_dart.dart';
import 'package:student/application/attendance/scan/scan_bloc.dart';
import 'package:student/infrastructure/attendance/models/event.object.dart';
import 'package:student/presentation/widgets/button.widget.dart';
import 'package:student/presentation/widgets/snackbar.widget.dart';

class ScanConfirmationWidget extends StatelessWidget {
  const ScanConfirmationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ScanBloc, ScanState>(
      buildWhen: (previous, current) => current.eventOption.isSome(),
      listenWhen: (previous, current) => current.failureOrScanOption.isSome(),
      listener: (context, state) {
        state.failureOrScanOption.fold(
          () {},
          (either) => either.fold(
            (f) {
              // close confirmation modal
              context.router.pop();
              ScaffoldMessenger.of(context).showSnackBar(
                snackBarWidget(
                  context: context,
                  text: f.message!,
                  type: SnackBarType.error,
                ),
              );
            },
            (scanObj) {
              // close the scan page
              context.router.popUntilRoot();
              ScaffoldMessenger.of(context).showSnackBar(
                snackBarWidget(context: context, text: "Scan successful!"),
              );
            },
          ),
        );
      },
      builder: (context, state) {
        final event = state.eventOption.getOrElse(() => EventObject());

        return Container(
          height: 360,
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(8),
              topRight: Radius.circular(8),
            ),
            color: Theme.of(context).colorScheme.background,
          ),
          child: Column(
            children: [
              const Icon(LineAwesomeIcons.qrcode, size: 64),
              Text(
                "QR Code Detected",
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      color: Theme.of(context).colorScheme.primary,
                    ),
              ),
              const SizedBox(height: 24),
              RichText(
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Event: ",
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                    TextSpan(
                      text: event.name!,
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 8),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Date: ",
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                    TextSpan(
                      text: Moment(event.startsAt!).formatDateShort(),
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 8),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Time: ",
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                    TextSpan(
                      text: Moment(event.startsAt!).formatTimeWithSeconds(),
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 8),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Scan: ",
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                    TextSpan(
                      text: state.qr!["type"],
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ButtonWidget(
                    isLoading: false,
                    label: "Cancel",
                    widthFactor: 0.35,
                    onTap: state.isLoading
                        ? null
                        : () {
                            context
                                .read<ScanBloc>()
                                .add(const ScanEvent.scanCancelled());
                            context.router.pop();
                          },
                  ),
                  const SizedBox(width: 16),
                  ButtonWidget(
                    isLoading: state.isLoading,
                    label: "Confirm",
                    widthFactor: 0.35,
                    onTap: () {
                      context
                          .read<ScanBloc>()
                          .add(const ScanEvent.scanConfirmed());
                    },
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
