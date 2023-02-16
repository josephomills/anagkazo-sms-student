import 'package:flutter/material.dart';
import 'package:student/core/enums/lecture_type.enum.dart';
import 'package:student/infrastructure/attendance/attendance.repo.dart';
import 'package:student/presentation/widgets/lists/b4a_live_list.widget.dart';

class FirstLoveExperienceTabPage extends StatelessWidget {
  const FirstLoveExperienceTabPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return B4aLiveListWidget(
      lectureType: LectureType.firstLoveExperience,
      query: AttendanceRepo.getQueryBuilder(
          lectureType: LectureType.firstLoveExperience),
    );
  }
}
