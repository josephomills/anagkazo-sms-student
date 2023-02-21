import 'package:flutter/material.dart';
import 'package:student/domain/core/enums/lecture_type.enum.dart';
import 'package:student/infrastructure/attendance/attendance.repo.dart';
import 'package:student/presentation/widgets/lists/b4a_live_list.widget.dart';

class AnagkazoLiveTabPage extends StatelessWidget {
  const AnagkazoLiveTabPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return B4aLiveListWidget(
      lectureType: LectureType.anagkazoLive,
      query:
          AttendanceRepo.getQueryBuilder(lectureType: LectureType.anagkazoLive),
    );
  }
}
