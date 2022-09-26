import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:student/application/core/injectable.core.dart';
import 'package:student/application/core/router.core.gr.dart';
import 'package:student/application/home/home_bloc.dart';
import 'package:student/domain/auth/auth.facade.dart';
import 'package:student/domain/auth/auth.failure.dart';
import 'package:student/infrastructure/auth/models/user.model.dart';
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

        final failureOrUser = snapshot.data as Either<AuthFailure, UserModel>;
        if (failureOrUser.isLeft()) {}

        final user = failureOrUser.getOrElse(() => UserModel.empty());

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
                name: "${user.firstname} ${user.lastname}",
                username: user.username,
                photoUrl: user.photoUrl!,
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
