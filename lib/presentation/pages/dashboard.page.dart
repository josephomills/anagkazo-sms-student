import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:student/application/core/injectable.core.dart';
import 'package:student/application/dashbaord/dashboard_bloc.dart';
import 'package:student/domain/auth/auth.facade.dart';
import 'package:student/domain/auth/auth.failure.dart';
import 'package:student/infrastructure/auth/models/user.model.dart';
import 'package:student/presentation/pages/dashboardBody.page.dart';
import 'package:student/presentation/widgets/dashboardCard.widget.dart';
import 'package:student/presentation/widgets/drawer.widget.dart';
import 'package:student/presentation/widgets/fab.widget.dart';
import 'package:student/presentation/widgets/quickAction.widget.dart';

class DashboardPage extends StatelessWidget implements AutoRouteWrapper {
  const DashboardPage({Key? key}) : super(key: key);

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

        return Scaffold(
          drawer: AppDrawer(
            name: "${user.firstname} ${user.lastname}",
            username: user.username,
            photoUrl: user.photoUrl!,
          ),
          floatingActionButton: const FABWidget(),
          appBar: AppBar(
            elevation: 0,
            title: const Text("Dashboard"),
            actions: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.notifications),
              )
            ],
          ),
          body: const DashboardBodyWidget(),
        );
      },
    );
  }

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<DashboardBloc>(
      create: (context) => getIt<DashboardBloc>(),
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
