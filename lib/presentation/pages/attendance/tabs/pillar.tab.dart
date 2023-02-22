import 'package:flutter/material.dart';
import 'package:student/domain/core/enums/lecture_type.enum.dart';
import 'package:student/infrastructure/attendance/attendance.repo.dart';
import 'package:student/presentation/widgets/lists/b4a_live_list.widget.dart';

class PillarTabPage extends StatelessWidget {
  const PillarTabPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return B4aLiveListWidget(
      lectureType: LectureType.pillar,
      query: AttendanceRepo.getQueryBuilder(lectureType: LectureType.pillar),
    );
  }
}
