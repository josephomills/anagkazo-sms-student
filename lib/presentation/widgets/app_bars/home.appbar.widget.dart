import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk_flutter.dart';
import 'package:student/domain/core/config/injectable.core.dart';
import 'package:student/domain/core/util/util.dart';
import 'package:student/presentation/navigation/autoroute.gr.dart';
import 'package:student/presentation/widgets/avatar.widget.dart';

class HomeAppBarWidget extends StatelessWidget with PreferredSizeWidget {
  HomeAppBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints.expand(),
      decoration: BoxDecoration(color: Theme.of(context).colorScheme.primary),
      child: Padding(
        padding: const EdgeInsets.only(left: 24, right: 24, top: 32),
        child: Row(
          children: [
            AvatarWidget(
              url: getIt<ParseUser>().get("photoUrl"),
              size: 60,
              onTap: () => context.router.push(ProfileRoute()),
            ),
            const SizedBox(width: 16),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "${greet()}, \n",
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.w300,
                        ),
                  ),
                  TextSpan(
                    text:
                        "${getIt<ParseUser>().get("firstname")} ${getIt<ParseUser>().get("lastname")}",
                    style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                          color: Colors.white,
                        ),
                  ),
                ],
              ),
            ),
            const Spacer(),
            Image.asset(
              "assets/icon/logo.png",
              height: 72,
              width: 72,
              fit: BoxFit.cover,
            ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(100);
}
