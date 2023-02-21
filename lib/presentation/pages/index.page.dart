import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:student/presentation/navigation/router.core.gr.dart';
import 'package:student/presentation/widgets/bottom_nav.widget.dart';

class IndexPage extends StatelessWidget {
  const IndexPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      homeIndex: NavIndex.home,
      routes: [
        const HomeRoute(),
        const AcademicsRoute(),
        const AttendanceRoute(),
        MyFellowshipRoute(),
        const MoreRoute(),
      ],
      bottomNavigationBuilder: (context, tabsRouter) {
        return const BottomNavWidget();
      },
    );
  }
}

class NavIndex {
  static const int home = 0;
  static const int academics = 1;
  static const int attendance = 2;
  static const int ministry = 3;
  static const int more = 4;
}

class PageIndex {
  static const int dashboard = 0;
  static const int academics = 1;
  static const int documents = 2;
  static const int attendance = 3;
  static const int forms = 4;
  static const int myFellowship = 5;
  static const int pastoralPoints = 6;
  static const int disciplinaryPoints = 7;

  static const int vision = 0;
  static const int pillar = 1;
  static const int anagkazoLive = 2;
  static const int firstLoveExperience = 3;
  static const int otherEvents = 4;
}
