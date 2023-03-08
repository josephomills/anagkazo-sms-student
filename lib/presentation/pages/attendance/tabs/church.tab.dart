import 'package:flutter/material.dart';
import 'package:student/domain/core/enums/types.enum.dart';
import 'package:student/presentation/widgets/lists/scan_list.widget.dart';

class ChurchTabPage extends StatelessWidget {
  const ChurchTabPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ScanListWidget(
      category: GatheringCategory.church,
    );
  }
}
