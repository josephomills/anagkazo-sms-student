import 'package:flutter/material.dart';

class RotationCardWidget extends StatelessWidget {
  const RotationCardWidget({
    Key? key,
    required this.name,
    this.color,
    this.onTap,
  }) : super(key: key);

  final String name;
  final Color? color;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Card(
        child: Center(
          child: Text(
            name,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  fontWeight: FontWeight.bold,
                  color: color ?? Theme.of(context).colorScheme.onBackground,
                ),
          ),
        ),
      ),
      onTap: onTap,
    );
  }
}
