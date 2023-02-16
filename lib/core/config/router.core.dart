import 'package:auto_route/auto_route.dart';
import 'package:student/core/config/auth.gard.core.dart';
import 'package:student/presentation/pages/academics/academics.page.dart';
import 'package:student/presentation/pages/attendance/attendance.page.dart';
import 'package:student/presentation/pages/attendance/scan.page.dart';
import 'package:student/presentation/pages/attendance/scanConfirmation.page.dart';
import 'package:student/presentation/pages/attendance/tabs/anagkazoLive.tab.dart';
import 'package:student/presentation/pages/attendance/tabs/firstLoveExperience.tab.dart';
import 'package:student/presentation/pages/attendance/tabs/otherEvents.tab.dart';
import 'package:student/presentation/pages/attendance/tabs/pillar.tab.dart';
import 'package:student/presentation/pages/attendance/tabs/vision.tab.dart';
import 'package:student/presentation/pages/auth/login.page.dart';
import 'package:student/presentation/pages/auth/profile.page.dart';
import 'package:student/presentation/pages/dashboard/dashboard.page.dart';
import 'package:student/presentation/pages/documents/documents.page.dart';
import 'package:student/presentation/pages/forms/forms.page.dart';
import 'package:student/presentation/pages/home.page.dart';
import 'package:student/presentation/pages/disciplinaryPoints/disciplinaryPoints.page.dart';
import 'package:student/presentation/pages/myFellowship/myFellowship.page.dart';
import 'package:student/presentation/pages/pastoralPoints/pastoralPoints.page.dart';

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
