import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:student/application/attendance/attendance/attendance_bloc.dart';
import 'package:student/core/config/injectable.core.dart';
import 'package:student/core/config/router.core.gr.dart';
import 'package:student/presentation/pages/index.page.dart';

class AttendancePage extends StatelessWidget implements AutoRouteWrapper {
  const AttendancePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter.tabBar(
      homeIndex: PageIndex.vision,
      routes: const [
        VisionTabRoute(),
        PillarTabRoute(),
        AnagkazoLiveTabRoute(),
        FirstLoveExperienceTabRoute(),
        OtherEventsTabRoute(),
      ],
      builder: (context, body, controller) {
        return Scaffold(
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(74),
            child: AppBar(
              bottom: TabBar(
                controller: controller,
                labelPadding: const EdgeInsets.symmetric(horizontal: 0),
                labelColor: Colors.white,
                labelStyle: const TextStyle(
                  fontSize: 12,
                  overflow: TextOverflow.visible,
                ),
                unselectedLabelColor: Colors.white70,
                tabs: buildTabs,
                // onTap: (index) async {
                //   // add bloc event
                //   getIt<AttendanceBloc>()
                //       .add(const AttendanceEvent.getAllQueries());
                // },
              ),
            ),
          ),
          body: body,
        );
      },
    );
  }

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<AttendanceBloc>.value(
      value: getIt<AttendanceBloc>(),
      child: this,
    );
  }

  List<Widget> get buildTabs {
    return const [
      Tab(
        icon: Icon(
          Icons.remove_red_eye,
        ),
        child: Text(
          "Vision Lecture",
          maxLines: 2,
          textAlign: TextAlign.center,
        ),
      ),
      Tab(
        icon: Icon(
          Icons.account_balance,
        ),
        child: Text(
          "Pillar Lecture",
          maxLines: 2,
          textAlign: TextAlign.center,
        ),
      ),
      Tab(
        icon: Icon(
          Icons.location_city,
        ),
        child: Text(
          "Anagkazo Live",
          maxLines: 2,
          textAlign: TextAlign.center,
        ),
      ),
      Tab(
        icon: Icon(
          Icons.church,
        ),
        child: Text(
          "FL Experience",
          maxLines: 2,
          textAlign: TextAlign.center,
        ),
      ),
      Tab(
        icon: Icon(
          Icons.groups,
        ),
        child: Text(
          "Other Events",
          maxLines: 2,
          textAlign: TextAlign.center,
        ),
      ),
    ];
  }
}
