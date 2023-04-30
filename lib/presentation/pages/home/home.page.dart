import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:student/presentation/navigation/autoroute.gr.dart';
import 'package:student/presentation/pages/index.page.dart';
import 'package:student/presentation/widgets/app_bars/home.appbar.widget.dart';
import 'package:student/presentation/widgets/cards/stat_card.widget.dart';
import 'package:student/presentation/widgets/cards/quick_action.widget.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeAppBarWidget(),
      body: ListView(
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        children: [
          // PageTitleWidget(title: "${greet()} ${user.firstname}"),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              StatCardWidget(
                stat: "50",
                label: "Academic Points",
                color: Colors.green.shade700,
              ),
              StatCardWidget(
                stat: "110",
                label: "Disciplinary Points",
                color: Theme.of(context).colorScheme.primary,
              ),
              const StatCardWidget(
                stat: "12",
                label: "Avg. Bussing",
                color: Colors.orange,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              StatCardWidget(
                stat: "12",
                label: "Fellowship",
                color: Theme.of(context).colorScheme.outline,
              ),
              StatCardWidget(
                stat: "50",
                label: "Income (GHC)",
                color: Colors.deepPurple.shade600,
              ),
              StatCardWidget(
                stat: "240",
                label: "Anti-Brutish",
                color: Theme.of(context).colorScheme.secondary,
              ),
            ],
          ),
          const SizedBox(height: 24),
          const Text("Quick actions"),
          Divider(
            thickness: 1,
            color: Theme.of(context).colorScheme.outline,
          ),
          QuickActionWidget(
            icon: const Icon(LineAwesomeIcons.folder_open, size: 32),
            title: "Open student documents",
            onTap: () => context.router.push(const DocumentsRoute()),
          ),
          QuickActionWidget(
            icon: const Icon(LineAwesomeIcons.alternate_list, size: 32),
            title: "Mark fellowship meeting attendance",
            onTap: () => context.tabsRouter
              ..setActiveIndex(NavIndex.ministry)
              ..navigate(MyFellowshipRoute()),
          ),
          QuickActionWidget(
            icon: const Icon(LineAwesomeIcons.alternate_file, size: 32),
            title: "Fill a form (e.g. permission, registry etc)",
            onTap: () => context.router.push(const FormsRoute()),
          ),
          QuickActionWidget(
            icon: const Icon(LineAwesomeIcons.gavel, size: 32),
            title: "Check disciplinary issues",
            onTap: () => context.router.push(const DisciplineRoute()),
          ),
        ],
      ),
    );
  }
}
