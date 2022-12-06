import 'package:flutter/material.dart';
import 'package:skeletons/skeletons.dart';

class SkeletonScanWidget extends StatelessWidget {
  const SkeletonScanWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SkeletonListTile(
      hasLeading: false,
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
              height: 6,
              width: 30,
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          const SizedBox(height: 8),
          const SkeletonAvatar(
            style: SkeletonAvatarStyle(width: 20, height: 20),
          ),
        ],
      ),
    );
  }
}
