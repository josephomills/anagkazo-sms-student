import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:student/presentation/widgets/app_bars/home.appbar.widget.dart';
import 'package:student/presentation/widgets/cards/dashboard_card.widget.dart';
import 'package:student/presentation/widgets/cards/quick_action.widget.dart';

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
              DashboardCardWidget(
                stat: "50",
                label: "Academic Points",
                color: Colors.green.shade700,
              ),
              DashboardCardWidget(
                stat: "110",
                label: "Disciplinary Points",
                color: Theme.of(context).colorScheme.primary,
              ),
              const DashboardCardWidget(
                stat: "12",
                label: "Avg. Bussing",
                color: Colors.orange,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              DashboardCardWidget(
                stat: "12",
                label: "Fellowship",
                color: Theme.of(context).colorScheme.outline,
              ),
              DashboardCardWidget(
                stat: "50",
                label: "Income (GHC)",
                color: Colors.deepPurple.shade600,
              ),
              DashboardCardWidget(
                stat: "240",
                label: "Anti-Brutish",
                color: Theme.of(context).colorScheme.secondary,
              ),
            ],
          ),
          const SizedBox(height: 24),
          const Text("Quick actions"),
          const Divider(thickness: 2),
          QuickActionWidget(
            icon: const Icon(LineAwesomeIcons.folder_open, size: 32),
            title: "Open student documents",
            onTap: () {},
          ),
          QuickActionWidget(
            icon: const Icon(LineAwesomeIcons.alternate_list, size: 32),
            title: "Mark fellowship meeting attendance",
            onTap: () {},
          ),
          QuickActionWidget(
            icon: const Icon(LineAwesomeIcons.alternate_file, size: 32),
            title: "Fill a form (e.g. permission, registry etc)",
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
