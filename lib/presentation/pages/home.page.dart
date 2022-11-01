import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';
import 'package:student/application/core/injectable.core.dart';
import 'package:student/application/core/router.core.gr.dart';
import 'package:student/application/home/home_bloc.dart';
import 'package:student/domain/auth/auth.facade.dart';
import 'package:student/domain/auth/auth.failure.dart';
import 'package:student/presentation/core/pageIndex.dart';
import 'package:student/presentation/widgets/drawer.widget.dart';
import 'package:student/presentation/widgets/fab.widget.dart';

class HomePage extends StatelessWidget implements AutoRouteWrapper {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: getIt<AuthFacade>().getCurrentUser(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return const Center();
        }

        final failureOrUser = snapshot.data as Either<AuthFailure, ParseUser>;
        if (failureOrUser.isLeft()) {}

        final user = failureOrUser.getOrElse(() => ParseUser(null, null, null));

        return AutoTabsRouter(
          homeIndex: PageIndex.dashboard,
          routes: [
            const DashboardRoute(),
            const AcademicsRoute(),
            const DocumentsRoute(),
            const AttendanceRoute(),
            const FormsRoute(),
            MyFellowshipRoute(),
            const PastoralPointsRoute(),
            const DisciplinaryPointsRoute(),
          ],
          builder: (context, body, animation) {
            final tabsRouter = AutoTabsRouter.of(context);

            return Scaffold(
              drawer: AppDrawer(
                name: "${user.get("firstname")} ${user.get("lastname")}",
                username: user.username!,
                photoUrl: user.get("photoUrl"),
              ),
              floatingActionButton:
                  (tabsRouter.activeIndex == PageIndex.dashboard ||
                          tabsRouter.activeIndex == PageIndex.attendance)
                      ? const FABWidget()
                      : null,
              appBar: AppBar(
                elevation: 0,
                title: Text(tabsRouter.currentChild!.meta["title"]),
                actions: [
                  if (tabsRouter.activeIndex == PageIndex.myFellowship)
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.people),
                    ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.notifications_active),
                  ),
                ],
                bottom: (tabsRouter.activeIndex == PageIndex.dashboard)
                    ? PreferredSize(
                        preferredSize: const Size.fromHeight(100),
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16, vertical: 16),
                          alignment: Alignment.centerLeft,
                          decoration: const BoxDecoration(
                            color: Colors.blue,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "${greet()} ${user.get("firstname")}",
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 28,
                                ),
                              ),
                              CircleAvatar(
                                radius: 32,
                                backgroundColor: Colors.grey[300],
                                backgroundImage: CachedNetworkImageProvider(
                                    user.get("photoUrl")),
                              ),
                            ],
                          ),
                        ),
                      )
                    : null,
              ),
              body: body,
            );
          },
        );
      },
    );
  }

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<HomeBloc>(
      create: (context) => getIt<HomeBloc>(),
      child: this,
    );
  }

  String greet() {
    var hour = DateTime.now().hour;
    if (hour < 12) {
      return "Good Morning";
    }
    if (hour < 17) {
      return "Good Afternoon";
    }
    return "Good Evening";
  }
}
