import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class PastoralPointsPage extends StatelessWidget {
  const PastoralPointsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset("assets/illustrations/welcome.png"),
    );
  }
}
