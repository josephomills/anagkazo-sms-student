import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:student/presentation/widgets/avatar.widget.dart';

class AppBarWidget extends StatelessWidget {
  final String title;
  final List<Widget>? actions;
  final AppBarType type;

  const AppBarWidget({
    Key? key,
    required this.title,
    this.actions,
    this.type = AppBarType.regular,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar.medium(
      elevation: 0,
      floating: true,
      expandedHeight: 144,
      backgroundColor: Theme.of(context).primaryColorLight,
      title: type == AppBarType.regular
          ? Text(
              title,
              style: Theme.of(context).textTheme.headline3!.copyWith(
                    color: Colors.white,
                    // fontWeight: FontWeight.bold,
                  ),
            )
          : Row(
              children: [
                const AvatarWidget(
                  url: "assets/icons/shuttle.png",
                  size: 48,
                ),
                const SizedBox(width: 16),
                Text(
                  title,
                  style: Theme.of(context).textTheme.headline3!.copyWith(
                        color: Colors.white,
                        // fontWeight: FontWeight.bold,
                      ),
                )
              ],
            ),
      leading: const AutoLeadingButton(
        color: Colors.white70,
      ),
      actions: actions,
      iconTheme: const IconThemeData(
        color: Colors.white70,
        size: 24,
      ),
      actionsIconTheme: IconThemeData(
        color: Theme.of(context).primaryColorDark,
        size: 24,
      ),
    );
  }
}

enum AppBarType { regular, alt }
