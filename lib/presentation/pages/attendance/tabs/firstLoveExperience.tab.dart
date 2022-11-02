import 'package:flutter/material.dart';
import 'package:student/domain/attendance/lectureType.enum.dart';
import 'package:student/presentation/widgets/lists/b4aLiveList.widget.dart';

class FirstLoveExperienceTabPage extends StatelessWidget {
  const FirstLoveExperienceTabPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const B4aLiveListWidget(
        lectureType: LectureType.firstLoveExperience);
  }
}
