import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:student/presentation/widgets/lists/empty_state.widget.dart';

class AcademicsPage extends StatelessWidget {
  const AcademicsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(context.tabsRouter.current.meta["title"]),
      ),
      body: const EmptyStateWidget(
        asset: "assets/illustrations/education.png",
        text: "Coming soon...",
        spacing: 0,
      ),
    );
  }
}
