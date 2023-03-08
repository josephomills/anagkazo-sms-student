import 'package:flutter/material.dart';
import 'package:student/domain/core/enums/types.enum.dart';
import 'package:student/presentation/widgets/lists/scan_list.widget.dart';

class LectureTabPage extends StatelessWidget {
  const LectureTabPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ScanListWidget(
      category: EventCategory.lecture,
    );
  }
}
