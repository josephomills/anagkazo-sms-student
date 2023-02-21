import 'package:flutter/material.dart';
import 'package:student/presentation/widgets/cards/dashboard_card.widget.dart';
import 'package:student/presentation/widgets/cards/quick_action.widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const ClampingScrollPhysics(),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      children: [
        // PageTitleWidget(title: "${greet()} ${user.firstname}"),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            DashboardCardWidget(
              stat: "50",
              label: "Academic Points",
              color: Colors.green,
            ),
            DashboardCardWidget(
              stat: "110",
              label: "Disciplinary Points",
              color: Color.fromARGB(255, 201, 26, 13),
            ),
            DashboardCardWidget(
              stat: "12",
              label: "Avg. Bussing",
              color: Colors.orange,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            DashboardCardWidget(
              stat: "12",
              label: "Fellowship",
              color: Colors.blueGrey,
            ),
            DashboardCardWidget(
              stat: "50",
              label: "Income (GHC)",
              color: Colors.deepPurple,
            ),
            DashboardCardWidget(
              stat: "240",
              label: "Anti-Brutish",
              color: Color.fromARGB(255, 139, 154, 2),
            ),
          ],
        ),
        const SizedBox(height: 24),
        const Text("Quick actions"),
        const Divider(thickness: 2),
        QuickActionWidget(
          icon: const Icon(Icons.my_library_books),
          title: "Open student documents",
          onTap: () {},
        ),
        QuickActionWidget(
          icon: const Icon(Icons.checklist),
          title: "Mark fellowship meeting attendance",
          onTap: () {},
        ),
        QuickActionWidget(
          icon: const Icon(Icons.receipt),
          title: "Fill a form (e.g. permission, registry etc)",
          onTap: () {},
        ),
      ],
    );
  }
}
