import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:student/domain/core/config/injectable.core.dart';
import 'package:student/application/myFellowship/my_fellowship_bloc.dart';
import 'package:student/infrastructure/myFellowship/models/service/service.object.dart';
import 'package:student/domain/core/extensions/context.ext.dart';
import 'package:student/presentation/widgets/app_bars/home.appbar.widget.dart';
import 'package:student/presentation/widgets/cards/fellowship_service_details.widget.dart';
import 'package:student/presentation/widgets/cards/my_fellowship_card.widget.dart';

class MyFellowshipPage extends StatelessWidget implements AutoRouteWrapper {
  MyFellowshipPage({Key? key}) : super(key: key);
  var services = <ServiceObject>[];

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MyFellowshipBloc, MyFellowshipState>(
      bloc: context.bloc<MyFellowshipBloc>(),
      listener: (context, state) {
        if (!state.isLoading) {
          state.failureOrServicesOption.fold(
              () {},
              (either) => either.fold(
                  (f) => ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text(
                        f.maybeMap(
                          serverError: (e) => e.message!,
                          orElse: () =>
                              "Something went wrong. Please try again.",
                        ),
                      ))),
                  (s) => services = s));
        }
      },
      builder: (context, state) {
        state.failureOrServicesOption.fold(
          () {},
          (either) => either.fold(
            (f) {},
            (s) => services = s,
          ),
        );

        return Scaffold(
          appBar: HomeAppBarWidget(),
          body: RefreshIndicator(
            // displacement: 10,
            onRefresh: () => Future<void>(
              (() => context
                  .bloc<MyFellowshipBloc>()
                  .add(const MyFellowshipEvent.getMyFellowshipServices())),
            ),
            child: SingleChildScrollView(
              physics: const AlwaysScrollableScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      MyFellowshipCardWidget(
                        stat: state.avgAttendance,
                        label: "Avg. Attendance",
                        width: 200,
                        isLoading: state.isLoading,
                        color: Colors.green,
                      ),
                      MyFellowshipCardWidget(
                        stat: state.avgIncome,
                        label: "Avg. Income (GHC)",
                        width: 200,
                        isLoading: state.isLoading,
                        color: Colors.indigo,
                      ),
                    ],
                  ),
                  const SizedBox(height: 24),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Text("Fellowhip Service Details"),
                  ),
                  const Divider(thickness: 2, indent: 16, endIndent: 16),
                  state.isLoading
                      ? const Padding(
                          padding: EdgeInsets.symmetric(vertical: 100),
                          child: Center(
                            child: SpinKitCubeGrid(
                              size: 60,
                              color: Colors.blue,
                            ),
                          ),
                        )
                      : ListView.builder(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          shrinkWrap: true,
                          physics: const ClampingScrollPhysics(),
                          itemCount: services.length,
                          itemBuilder: (BuildContext context, int index) {
                            if (services.isEmpty) {
                              return SizedBox(
                                width: 300,
                                child: Center(
                                  child: Column(
                                    children: [
                                      Image.asset(
                                        "assets/illustrations/world.png",
                                        fit: BoxFit.cover,
                                      ),
                                      const Text(
                                        "Tap on the blue button (buttom right) to scan QR codes.",
                                      )
                                    ],
                                  ),
                                ),
                              );
                            }

                            return FellowshipServiceDetailsWidget(
                              service: services[index],
                            );
                          },
                        ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<MyFellowshipBloc>(
      create: (context) => getIt<MyFellowshipBloc>()
        ..add(const MyFellowshipEvent.getMyFellowshipServices()),
      child: this,
    );
  }
}
