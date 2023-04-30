import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:student/application/attendance/attendance/attendance_bloc.dart';
import 'package:student/domain/core/config/injectable.core.dart';
import 'package:student/presentation/navigation/autoroute.gr.dart';
import 'package:student/presentation/pages/index.page.dart';

@RoutePage()
class AttendancePage extends StatelessWidget implements AutoRouteWrapper {
  const AttendancePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter.tabBar(
      homeIndex: TabIndex.lecture,
      routes: const [
        LectureTabRoute(),
        ChurchTabRoute(),
        OtherTabRoute(),
      ],
      builder: (context, body, controller) {
        return Scaffold(
          appBar: AppBar(
            title: Text(context.tabsRouter.current.parent!.meta["title"]),
            bottom: TabBar(
              controller: controller,
              tabs: buildTabs,
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
          LineAwesomeIcons.video_1,
        ),
        child: Text(
          "Lectures",
          maxLines: 2,
          textAlign: TextAlign.center,
        ),
      ),
      Tab(
        icon: Icon(
          LineAwesomeIcons.church,
        ),
        child: Text(
          "Church Services",
          maxLines: 2,
          textAlign: TextAlign.center,
        ),
      ),
      Tab(
        icon: Icon(
          LineAwesomeIcons.users,
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
