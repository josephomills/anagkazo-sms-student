import 'package:flutter/material.dart';

class DashboardCardWidget extends StatelessWidget {
  const DashboardCardWidget({
    Key? key,
    required this.stat,
    required this.label,
    this.width = 136,
    this.height = 120,
    this.color = Colors.blue,
  }) : super(key: key);

  final String stat;
  final double width;
  final double height;
  final String label;
  final Color color;

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
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,
                color: color,
              ),
            ),
            Text(
              label,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 13,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
