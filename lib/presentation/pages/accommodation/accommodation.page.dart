import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:student/presentation/widgets/lists/empty_state.widget.dart';

@RoutePage()
class AccommodationPage extends StatelessWidget {
  const AccommodationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(context.router.current.meta["title"]),
      ),
      body: const EmptyStateWidget(
        asset: "assets/illustrations/houses.png",
        text: "Coming soon...",
        spacing: 0,
      ),
    );
  }
}
