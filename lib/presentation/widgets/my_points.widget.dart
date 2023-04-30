import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:student/presentation/widgets/button.widget.dart';

class MyPointsWidget extends StatelessWidget {
  const MyPointsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
      height: 360,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.background,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(8),
          topRight: Radius.circular(8),
        ),
      ),
      child: Column(
        children: [
          const Icon(
            LineAwesomeIcons.gem,
            size: 60,
          ),
          const SizedBox(height: 16),
          Text(
            "Total Academic Points",
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  color: Theme.of(context).colorScheme.primary,
                ),
          ),
          const SizedBox(height: 40),
          Text(
            "1200",
            style: Theme.of(context).textTheme.displayLarge,
          ),
          const SizedBox(height: 24),
          ButtonWidget(
            label: "OK",
            onTap: () => context.router.pop(),
          ),
        ],
      ),
    );
  }
}
