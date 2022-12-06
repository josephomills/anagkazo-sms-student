import 'package:flutter/material.dart';
import 'package:student/domain/attendance/lectureType.enum.dart';
import 'package:student/infrastructure/attendance/attendance.repo.dart';
import 'package:student/presentation/widgets/lists/b4aLiveList.widget.dart';

class VisionTabPage extends StatelessWidget {
  const VisionTabPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return B4aLiveListWidget(
      lectureType: LectureType.vision,
      query: AttendanceRepo.getQueryBuilder(lectureType: LectureType.vision),
    );
  }
}
