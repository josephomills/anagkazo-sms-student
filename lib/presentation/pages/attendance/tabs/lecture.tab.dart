import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:student/application/attendance/attendance/attendance_bloc.dart';
import 'package:student/domain/core/enums/types.enum.dart';
import 'package:student/presentation/widgets/lists/scan_list.widget.dart';

@RoutePage()
class LectureTabPage extends StatelessWidget {
  const LectureTabPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async => context.read<AttendanceBloc>().add(
          const AttendanceEvent.scansFetched(category: EventCategory.lecture)),
      child: const ScanListWidget(
        category: EventCategory.lecture,
      ),
    );
  }
}
