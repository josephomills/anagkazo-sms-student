import 'package:flutter/material.dart';
import 'package:skeletons/skeletons.dart';

class SkeletonScanWidget extends StatelessWidget {
  const SkeletonScanWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SkeletonListTile(
      hasSubtitle: true,
      titleStyle: SkeletonLineStyle(
        height: 16,
        width: 200,
        borderRadius: BorderRadius.circular(8),
      ),
      subtitleStyle: SkeletonLineStyle(
        height: 10,
        width: 100,
        borderRadius: BorderRadius.circular(8),
      ),
      trailing: Column(
        children: [
          SkeletonLine(
            style: SkeletonLineStyle(
              height: 10,
              width: 40,
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          const SizedBox(height: 10),
          SkeletonLine(
            style: SkeletonLineStyle(
              height: 10,
              width: 40,
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ],
      ),
    );
  }
}
