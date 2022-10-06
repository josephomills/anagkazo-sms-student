import 'package:flutter/material.dart';
import 'package:student/domain/attendance/lectureType.enum.dart';
import 'package:student/presentation/pages/attendance/tabs/core.tab.dart';

class PillarTabPage extends StatelessWidget {
  const PillarTabPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return buildLiveScanList(lectureType: LectureType.pillar);
  }
}
