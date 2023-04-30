import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:student/presentation/navigation/autoroute.gr.dart';
import 'package:student/presentation/widgets/my_points.widget.dart';

@RoutePage()
class AcademicsPage extends StatelessWidget {
  const AcademicsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter.tabBar(
      homeIndex: 0,
      routes: const [
        RotationsTabRoute(),
        OtherPointsTabRoute(),
      ],
      builder: (context, body, controller) {
        return Scaffold(
          appBar: AppBar(
            title: Text(context.tabsRouter.current.parent!.meta["title"]),
            bottom: TabBar(
              controller: controller,
              tabs: buildTabs,
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 24),
                child: TextButton.icon(
                  onPressed: () {
                    showModalBottomSheet(
                      context: context,
                      builder: (context) => const MyPointsWidget(),
                    );
                  },
                  icon: const Icon(LineAwesomeIcons.gem),
                  label: Text(
                    "My Points",
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          color: Theme.of(context).colorScheme.primary,
                        ),
                  ),
                ),
              ),
            ],
          ),
          body: body,
        );
      },
    );
  }

  List<Widget> get buildTabs {
    return const [
      Tab(
        icon: Icon(
          LineAwesomeIcons.video_1,
        ),
        child: Text(
          "Rotations",
          maxLines: 2,
          textAlign: TextAlign.center,
        ),
      ),
      Tab(
        icon: Icon(
          LineAwesomeIcons.award,
        ),
        child: Text(
          "Other Points",
          maxLines: 2,
          textAlign: TextAlign.center,
        ),
      ),
    ];
  }
}
