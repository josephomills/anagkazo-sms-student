import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

/// Bottom nav that implements a [GNav]
class BottomNavWidget extends StatelessWidget {
  const BottomNavWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      decoration: BoxDecoration(
        color: Theme.of(context).brightness == Brightness.dark
            ? Theme.of(context).colorScheme.surface
            : Colors.white,
        boxShadow: [
          BoxShadow(
            blurRadius: 20,
            color: Colors.black.withOpacity(.1),
          )
        ],
      ),
      child: GNav(
        rippleColor: Theme.of(context).colorScheme.background,
        hoverColor: Theme.of(context).colorScheme.background,
        color: Theme.of(context).brightness == Brightness.dark
            ? Theme.of(context).colorScheme.onSurface
            : Theme.of(context).colorScheme.onBackground,
        activeColor: Theme.of(context).colorScheme.onPrimary,
        tabBackgroundColor: Theme.of(context).colorScheme.primary,
        gap: 6,
        iconSize: 27,
        textSize: 20,
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 12),
        duration: const Duration(milliseconds: 400),
        selectedIndex: context.tabsRouter.activeIndex,
        onTabChange: (index) => context.tabsRouter.setActiveIndex(index),
        tabs: const [
          GButton(
            icon: LineAwesomeIcons.home,
            text: "Home",
          ),
          GButton(
            icon: LineAwesomeIcons.qrcode,
            text: "Attendance",
          ),
          GButton(
            icon: LineAwesomeIcons.graduation_cap,
            text: "Academics",
          ),
          GButton(
            icon: LineAwesomeIcons.cross,
            text: "Ministry",
          ),
          GButton(
            icon: LineAwesomeIcons.bars,
            text: "More",
          ),
        ],
      ),
    );
  }
}
