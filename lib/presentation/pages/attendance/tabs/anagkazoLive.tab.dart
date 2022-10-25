import 'package:flutter/material.dart';
import 'package:student/domain/attendance/lectureType.enum.dart';
import 'package:student/presentation/widgets/liveList.widget.dart';

class AnagkazoLiveTabPage extends StatelessWidget {
  const AnagkazoLiveTabPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const LiveListWidget(lectureType: LectureType.anagkazoLive);
  }
}
