// import 'package:auto_route/auto_route.dart';
// import 'package:flutter/material.dart';
// import 'package:student/application/core/router.core.gr.dart';

// class AvatarWidget extends StatelessWidget {
//   const AvatarWidget({Key? key, required this.url}) : super(key: key);

//   final String url;

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.only(right: 8, top: 4),anva
//       child: GestureDetector(
//         onTap: () => {
//           // context.router.push(const ProfileRoute());
//           },
//         child: const CircleAvatar(
//           radius: 32,
//           backgroundColor: Colors.grey,
//           backgroundImage: AssetImage("assets/avatar_generic.jpg"),
//           // backgroundImage: url.isNotEmpty
//           //     ? CachedNetworkImageProvider(url)
//           //     : AssetImage("assets/avatar_generic.jpg"),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

/// Avatar widget
class AvatarWidget extends StatelessWidget {
  const AvatarWidget({
    Key? key,
    this.url,
    this.size = 56,
    this.margin,
    this.borderRadius = 10,
    this.onTap,
  }) : super(key: key);

  /// Image url
  final String? url;

  /// Width and height of avatar as it is a square. Defaults to 56
  final double size;

  /// Border radius for the avatar. defaults to 10
  final double borderRadius;

  /// Margin
  final EdgeInsetsGeometry? margin;

  /// onTap callback
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: size,
        width: size,
        margin: margin,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadius),
          color: Theme.of(context).scaffoldBackgroundColor,
          image: DecorationImage(
            fit: BoxFit.cover,
            image: (url != null && url!.startsWith("assets"))
                ? AssetImage(url!) as ImageProvider
                : NetworkImage(
                    url ??
                        "https://images.unsplash.com/photo-1502033303885-c6e0280a4f5c?ixlib=rb-0.3.5&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=200&fit=max&s=9be99762d86ae47ab59690f72d984be6",
                  ),
          ),
        ),
      ),
    );
  }
}
