import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:moment_dart/moment_dart.dart';
import 'package:student/application/attendance/scan/scan_bloc.dart';
import 'package:student/infrastructure/attendance/models/event.object.dart';
import 'package:student/presentation/widgets/button.widget.dart';

class ScanConfirmationWidget extends StatelessWidget {
  const ScanConfirmationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ScanBloc, ScanState>(
      builder: (context, state) {
        final event = state.eventOption.getOrElse(() => EventObject());

        return Container(
          height: 470,
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(8),
              topRight: Radius.circular(8),
            ),
            color: Theme.of(context).colorScheme.background,
          ),
          child: Column(
            children: [
              const Icon(LineAwesomeIcons.qrcode, size: 120),
              Text(
                "QR Code Detected",
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      color: Theme.of(context).colorScheme.primary,
                    ),
              ),
              const SizedBox(height: 32),
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
              const SizedBox(height: 32),
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
                            context
                                .read<ScanBloc>()
                                .add(const ScanEvent.scanCancelled());
                            context.router.pop();
                          },
                  ),
                  const SizedBox(width: 8),
                  ButtonWidget(
                    isLoading: state.isLoading,
                    label: "Confirm",
                    widthFactor: 0.3,
                    onTap: () {
                      context
                          .read<ScanBloc>()
                          .add(const ScanEvent.scanConfirmed());
                      // Close bottom sheet
                      context.router.pop();
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
