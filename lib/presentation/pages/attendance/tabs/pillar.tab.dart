import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:student/application/attendance/attendance/attendance_bloc.dart';
import 'package:student/application/core/injectable.core.dart';
import 'package:student/domain/attendance/lectureType.enum.dart';
import 'package:student/presentation/widgets/lists/b4aLiveList.widget.dart';

class PillarTabPage extends StatelessWidget {
  const PillarTabPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AttendanceBloc>.value(
      value: getIt<AttendanceBloc>()
        ..add(
            const AttendanceEvent.tabSelected(lectureType: LectureType.pillar)),
      child: B4aLiveListWidget(lectureType: LectureType.pillar),
    );
  }
}
