import 'package:flutter/material.dart';
import 'package:student/domain/core/enums/types.enum.dart';
import 'package:student/infrastructure/attendance/attendance.repo.dart';
import 'package:student/presentation/widgets/lists/b4a_live_list.widget.dart';

class FirstLoveExperienceTabPage extends StatelessWidget {
  const FirstLoveExperienceTabPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return B4aLiveListWidget(
      eventType: EventType.experience,
      query: AttendanceRepo.getQueryBuilder(eventType: EventType.experience),
    );
  }
}
