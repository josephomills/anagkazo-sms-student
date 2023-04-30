import 'package:flutter/material.dart';

class StatCardWidget extends StatelessWidget {
  const StatCardWidget({
    Key? key,
    required this.stat,
    required this.label,
    this.width = 136,
    this.height = 120,
    this.color,
  }) : super(key: key);

  final String stat;
  final double width;
  final double height;
  final String label;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: Card(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              stat,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.displaySmall!.copyWith(
                    fontWeight: FontWeight.bold,
                    color: color ?? Theme.of(context).colorScheme.onBackground,
                  ),
            ),
            Text(
              label,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ],
        ),
      ),
    );
  }
}
