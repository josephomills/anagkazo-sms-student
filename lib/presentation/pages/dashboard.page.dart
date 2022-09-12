import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:student/application/core/injectable.core.dart';
import 'package:student/application/core/router.core.gr.dart';
import 'package:student/application/dashbaord/dashboard_bloc.dart';
import 'package:student/domain/auth/auth.facade.dart';
import 'package:student/presentation/widgets/appDrawer.widget.dart';
import 'package:student/presentation/widgets/pageTitle.widget.dart';

class DashboardPage extends StatelessWidget implements AutoRouteWrapper {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const AppDrawer(),
      appBar: AppBar(
        elevation: 0,
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        children: [
          PageTitleWidget(title: "${greet()} Joseph"),
          TextButton(
              child: const Text("Logout"),
              onPressed: () async {
                (await getIt<AuthFacade>().logout()).fold(
                    (f) => ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text(
                          f.maybeMap(
                            serverError: (e) => e.message!,
                            userDoesNotExist: (e) =>
                                "Error: User does not exist.",
                            orElse: () =>
                                "Something went wrong. Please try again.",
                          ),
                        ))), (r) {
                  context.router.replaceAll([const DashboardRoute()]);
                });
              }),
        ],
      ),
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
