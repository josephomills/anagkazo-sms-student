import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:responsive_framework/responsive_framework.dart';

/// Loader with a centered [SpinKitChasingDots] on a blurred background
class LoaderWidget extends StatelessWidget {
  const LoaderWidget({Key? key, this.transparent = true}) : super(key: key);

  final bool transparent;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: 56,
          child: SizedBox(
            height: ResponsiveWrapper.of(context).scaledHeight - 56,
            width: ResponsiveWrapper.of(context).scaledWidth,
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaY: 5, sigmaX: 5),
              child: SizedBox(
                height: ResponsiveWrapper.of(context).scaledHeight - 56,
                width: double.infinity,
              ),
            ),
          ),
        ),
        Center(
          child: Container(
            height: 160,
            width: 160,
            decoration: BoxDecoration(
              color: transparent
                  ? Colors.transparent
                  : Theme.of(context).colorScheme.background,
              borderRadius: BorderRadius.circular(24),
            ),
            padding: const EdgeInsets.all(32),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SpinKitChasingDots(
                  color: Theme.of(context).colorScheme.primary,
                ),
                const SizedBox(height: 16),
                Text(
                  "Loading...",
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
