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
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            blurRadius: 20,
            color: Colors.black.withOpacity(.1),
          )
        ],
      ),
      child: GNav(
        rippleColor: Colors.grey[300]!,
        hoverColor: Colors.grey[100]!,
        gap: 8,
        activeColor: Colors.black,
        iconSize: 28,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        duration: const Duration(milliseconds: 400),
        tabBackgroundColor: Theme.of(context).primaryColorDark,
        color: Colors.black,
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
            icon: LineAwesomeIcons.school,
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
