import 'package:auto_route/auto_route.dart';
import 'package:student/core/config/auth_gard.core.dart';
import 'package:student/presentation/pages/academics/academics.page.dart';
import 'package:student/presentation/pages/attendance/attendance.page.dart';
import 'package:student/presentation/pages/attendance/scan.page.dart';
import 'package:student/presentation/pages/attendance/scan_confirmation.page.dart';
import 'package:student/presentation/pages/attendance/tabs/anagkazo_live.tab.dart';
import 'package:student/presentation/pages/attendance/tabs/experience.tab.dart';
import 'package:student/presentation/pages/attendance/tabs/other_events.tab.dart';
import 'package:student/presentation/pages/attendance/tabs/pillar.tab.dart';
import 'package:student/presentation/pages/attendance/tabs/vision.tab.dart';
import 'package:student/presentation/pages/auth/login.page.dart';
import 'package:student/presentation/pages/auth/profile.page.dart';
import 'package:student/presentation/pages/dashboard/dashboard.page.dart';
import 'package:student/presentation/pages/documents/documents.page.dart';
import 'package:student/presentation/pages/forms/forms.page.dart';
import 'package:student/presentation/pages/home.page.dart';
import 'package:student/presentation/pages/disciplinary_points/disciplinary_points.page.dart';
import 'package:student/presentation/pages/my_fellowship/my_fellowship.page.dart';
import 'package:student/presentation/pages/pastoral_points/pastoral_points.page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: LoginPage),
    AutoRoute(
      page: HomePage,
      guards: [AuthGuard],
      initial: true,
      meta: {"title": "Home"},
      children: [
        AutoRoute(
          page: DashboardPage,
          meta: {"title": "Dashboard"},
          guards: [AuthGuard],
        ),
        AutoRoute(
          page: AcademicsPage,
          meta: {"title": "Academics"},
          guards: [AuthGuard],
        ),
        AutoRoute(
          page: DocumentsPage,
          meta: {"title": "Documents"},
          guards: [AuthGuard],
        ),
        AutoRoute(
          page: AttendancePage,
          meta: {"title": "Attendance"},
          guards: [AuthGuard],
          children: [
            AutoRoute(page: VisionTabPage, meta: {"title": "Vision Lecture"}),
            AutoRoute(page: PillarTabPage, meta: {"title": "Pillar Lecture"}),
            AutoRoute(
                page: AnagkazoLiveTabPage, meta: {"title": "Anagkazo Live"}),
            AutoRoute(
                page: FirstLoveExperienceTabPage,
                meta: {"title": "First Love Experience"}),
            AutoRoute(
                page: OtherEventsTabPage, meta: {"title": "Other Events"}),
          ],
        ),
        AutoRoute(
          page: FormsPage,
          meta: {"title": "Forms"},
          guards: [AuthGuard],
        ),
        AutoRoute(
          page: MyFellowshipPage,
          meta: {"title": "My Fellowship"},
          guards: [AuthGuard],
        ),
        AutoRoute(
          page: PastoralPointsPage,
          meta: {"title": "Pastoral Points"},
          guards: [AuthGuard],
        ),
        AutoRoute(
          page: DisciplinaryPointsPage,
          meta: {"title": "Disciplinary Points"},
          guards: [AuthGuard],
        ),
      ],
    ),
    // AutoRoute(page: RegisterPage),
    // AutoRoute(page: ForgotPasswordPage),
    // AutoRoute(page: PhoneVerificationPage, guards: [AuthGuard]),
    // AutoRoute(page: OtpPage, guards: [AuthGuard]),
    AutoRoute(page: ScanPage, guards: [AuthGuard]),
    AutoRoute(page: ScanConfirmationPage, guards: [AuthGuard]),
    AutoRoute(page: ProfilePage, guards: [AuthGuard]),
  ],
)
class $AppRouter {}
