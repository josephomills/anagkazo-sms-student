import 'package:flutter/material.dart';
import 'package:student/presentation/widgets/app_bars/home.appbar.widget.dart';

class AcademicsPage extends StatelessWidget {
  const AcademicsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeAppBarWidget(),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 72),
          child: Image.asset("assets/illustrations/education.png"),
        ),
      ),
    );
  }
}
