import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';
import 'package:student/application/auth/auth/auth_bloc.dart';
import 'package:student/domain/core/config/injectable.core.dart';
import 'package:student/domain/core/util/util.dart';
import 'package:student/presentation/widgets/app_bars/skeleton.appbar.dart';
import 'package:student/presentation/widgets/avatar.widget.dart';

class HomeAppBarWidget extends StatelessWidget with PreferredSizeWidget {
  HomeAppBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      bloc: getIt<AuthBloc>(),
      builder: (context, state) {
        if (state.currentUserOption.isNone()) {
          return const SkeletonAppBarWidget();
        }

        final ParseUser user = state.currentUserOption
            .getOrElse(() => ParseUser(null, null, null));

        return Container(
          constraints: const BoxConstraints.expand(),
          decoration:
              BoxDecoration(color: Theme.of(context).colorScheme.primary),
          child: Padding(
            padding: const EdgeInsets.only(left: 24, right: 24, top: 32),
            child: Row(
              children: [
                AvatarWidget(
                  url: user.get("photoUrl"),
                  size: 60,
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
                            "${user.get("firstname")} ${user.get("lastname")}",
                        style: Theme.of(context).textTheme.headline4!.copyWith(
                              color: Colors.white,
                            ),
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                Image.asset(
                  "assets/icon/logo.png",
                  height: 64,
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(100);
}
