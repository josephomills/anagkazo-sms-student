import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:student/application/app/app_bloc.dart';
import 'package:student/domain/core/config/injectable.core.dart';
import 'package:student/presentation/navigation/autoroute.gr.dart';
import 'package:student/presentation/widgets/cards/rotation_card.widget.dart';

@RoutePage()
class RotationsTabPage extends StatelessWidget {
  const RotationsTabPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RefreshIndicator(
        onRefresh: () async =>
            getIt<AppBloc>().add(const AppEvent.rotationsFetched()),
        child: BlocBuilder<AppBloc, AppState>(
          bloc: getIt<AppBloc>(),
          builder: (context, state) {
            final rotations = state.failureOrRotationsOption
                .getOrElse(
                  () => const Right([]),
                )
                .getOrElse(() => []);
            return GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
              ),
              padding: const EdgeInsets.all(16),
              itemCount: rotations.length,
              itemBuilder: (context, index) {
                return RotationCardWidget(
                  name: rotations[index].shortName!,
                  onTap: () => context.router
                      .push(RotationRoute(rotation: rotations[index])),
                );
              },
              // children: const [
              //   RotationCardWidget(name: "Church History"),
              //   RotationCardWidget(name: "Work of Ministry"),
              //   RotationCardWidget(name: "The Anointing"),
              //   RotationCardWidget(name: "Demonolgy"),
              //   RotationCardWidget(name: "Church Growth"),
              //   RotationCardWidget(name: "Charismatic Doctrines"),
              //   RotationCardWidget(name: "Leadership"),
              //   RotationCardWidget(name: "Marriage Counselling"),
              //   RotationCardWidget(name: "Evangelism"),
              //   RotationCardWidget(name: "Financial Management"),
              //   RotationCardWidget(name: "Spiritual Guidance"),
              //   RotationCardWidget(name: "Loyalty & disloyalty"),
              //   RotationCardWidget(name: "Shepherding"),
              // ],
            );
          },
        ),
      ),
    );
  }
}
