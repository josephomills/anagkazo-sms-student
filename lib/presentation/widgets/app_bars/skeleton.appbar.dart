import 'package:flutter/material.dart';
import 'package:skeletons/skeletons.dart';

class SkeletonAppBarWidget extends StatelessWidget
    implements PreferredSizeWidget {
  const SkeletonAppBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints.expand(),
      decoration: BoxDecoration(color: Theme.of(context).primaryColorLight),
      child: Padding(
        padding: const EdgeInsets.only(left: 24, right: 24, top: 32),
        child: Row(
          children: [
            SkeletonAvatar(
              style: SkeletonAvatarStyle(
                width: 60,
                height: 60,
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            const SizedBox(width: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SkeletonLine(
                  style: SkeletonLineStyle(
                    height: 16,
                    width: 100,
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
                const SizedBox(height: 8),
                SkeletonLine(
                  style: SkeletonLineStyle(
                    height: 30,
                    width: 180,
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
              ],
            ),
            const Spacer(),
            const SkeletonAvatar(
              style: SkeletonAvatarStyle(
                width: 40,
                height: 40,
                shape: BoxShape.circle,
                // borderRadius: BorderRadius.circular(20),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(100);
}
