import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';
import 'package:student/application/core/injectable.core.dart';
import 'package:student/application/core/router.core.gr.dart';
import 'package:student/domain/auth/auth.facade.dart';
import 'package:student/domain/auth/auth.failure.dart';
import 'package:student/presentation/core/pageIndex.dart';

class AttendancePage extends StatelessWidget {
  const AttendancePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: getIt<AuthFacade>().getCurrentUser(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return Center(
            child: Image.asset("assets/illustrations/taking_selfie.png"),
          );
        }

        final failureOrUser = snapshot.data as Either<AuthFailure, ParseUser>;
        if (failureOrUser.isLeft()) {}

        final user = failureOrUser.getOrElse(() => ParseUser(null, null, null));

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
            final tabsRouter = AutoTabsRouter.of(context);

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
                  ),
                ),
              ),
              body: body,
            );
          },
        );
      },
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
