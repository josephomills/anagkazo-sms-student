import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:student/domain/core/enums/types.enum.dart';
import 'package:student/presentation/widgets/lists/scan_list.widget.dart';

@RoutePage()
class OtherTabPage extends StatelessWidget {
  const OtherTabPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ScanListWidget(
      category: EventCategory.other,
    );
  }
}
