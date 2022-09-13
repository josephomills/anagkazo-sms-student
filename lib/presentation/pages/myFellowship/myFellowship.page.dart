import 'package:flutter/material.dart';
import 'package:student/presentation/widgets/myFelloshipCard.widget.dart';

class MyFellowshipPage extends StatelessWidget {
  const MyFellowshipPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                MyFellowshipCardWidget(
                  stat: "12",
                  label: "Avg. Attendance",
                  width: 200,
                ),
                MyFellowshipCardWidget(
                  stat: "45.5",
                  label: "Avg. Income (GHC)",
                  width: 200,
                ),
              ],
            ),
            const SizedBox(height: 24),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text("Fellowhip Service Details"),
            ),
            const Divider(thickness: 2, indent: 16, endIndent: 16),
            ListView(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              shrinkWrap: true,
              physics: const ClampingScrollPhysics(),
            )
          ],
        ),
      ),
    );
  }
}
