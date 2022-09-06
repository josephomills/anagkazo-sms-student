import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:student/presentation/core/router.core.gr.dart';

class AvatarWidget extends StatelessWidget {
  const AvatarWidget({Key? key, required this.url}) : super(key: key);

  final String url;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8, top: 4),
      child: GestureDetector(
        onTap: () => AutoRouter.of(context).push(const ProfileRoute()),
        child: const CircleAvatar(
          radius: 32,
          backgroundColor: Colors.grey,
          backgroundImage: AssetImage("assets/avatar_generic.jpg"),
          // backgroundImage: url.isNotEmpty
          //     ? CachedNetworkImageProvider(url)
          //     : AssetImage("assets/avatar_generic.jpg"),
        ),
      ),
    );
  }
}
