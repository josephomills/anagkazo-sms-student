import 'package:auto_route/auto_route.dart';
import 'package:student/presentation/navigation/auth_gard.core.dart';
import 'package:student/presentation/pages/academics/academics.page.dart';
import 'package:student/presentation/pages/attendance/attendance.page.dart';
import 'package:student/presentation/pages/attendance/scan.page.dart';
import 'package:student/presentation/pages/attendance/scan_confirmation.page.dart';
import 'package:student/presentation/pages/attendance/tabs/church.tab.dart';
import 'package:student/presentation/pages/attendance/tabs/lecture.tab.dart';
import 'package:student/presentation/pages/attendance/tabs/other.tab.dart';
import 'package:student/presentation/pages/auth/login.page.dart';
import 'package:student/presentation/pages/auth/profile.page.dart';
import 'package:student/presentation/pages/home/home.page.dart';
import 'package:student/presentation/pages/documents/documents.page.dart';
import 'package:student/presentation/pages/forms/forms.page.dart';
import 'package:student/presentation/pages/disciplinary_points/disciplinary_points.page.dart';
import 'package:student/presentation/pages/index.page.dart';
import 'package:student/presentation/pages/more/more.page.dart';
import 'package:student/presentation/pages/my_fellowship/my_fellowship.page.dart';
import 'package:student/presentation/pages/pastoral_points/pastoral_points.page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: LoginPage),
    AutoRoute(
      page: IndexPage,
      guards: [AuthGuard],
      initial: true,
      meta: {"title": "Index"},
      children: [
        AutoRoute(
          page: HomePage,
          meta: {"title": "Home"},
          path: "home",
        ),
        AutoRoute(
          page: AcademicsPage,
          meta: {"title": "Academics"},
          path: "academics",
        ),
        AutoRoute(
          page: AttendancePage,
          meta: {"title": "Attendance"},
          path: "attendance",
          children: [
            AutoRoute(
              page: LectureTabPage,
              meta: {"title": "Lectures"},
              path: "lectures",
            ),
            AutoRoute(
              page: ChurchTabPage,
              meta: {"title": "Church Services"},
              path: "church",
            ),
            AutoRoute(
              page: OtherTabPage,
              meta: {"title": "Other Events"},
              path: "other",
            ),
          ],
        ),
        AutoRoute(
          page: MyFellowshipPage,
          meta: {"title": "My Fellowship"},
          path: "ministry",
        ),
        AutoRoute(
          page: MorePage,
          meta: {"title": "More"},
          path: "more",
        ),
      ],
    ),
    AutoRoute(
      page: DocumentsPage,
      meta: {"title": "Documents"},
      guards: [AuthGuard],
      path: "documents",
    ),
    AutoRoute(
      page: FormsPage,
      meta: {"title": "Forms"},
      guards: [AuthGuard],
      path: "forms",
    ),
    AutoRoute(
      page: PastoralPointsPage,
      meta: {"title": "Pastoral Points"},
      guards: [AuthGuard],
      path: "pastoral-points",
    ),
    AutoRoute(
      page: DisciplinaryPointsPage,
      meta: {"title": "Disciplinary Points"},
      guards: [AuthGuard],
      path: "discipline",
    ),
    // AutoRoute(page: RegisterPage),
    // AutoRoute(page: ForgotPasswordPage),
    // AutoRoute(page: PhoneVerificationPage, guards: [AuthGuard]),
    // AutoRoute(page: OtpPage, guards: [AuthGuard]),
    AutoRoute(page: ScanPage, guards: [AuthGuard], path: "scan"),
    AutoRoute(page: ScanConfirmationPage, guards: [AuthGuard]),
    AutoRoute(page: ProfilePage, guards: [AuthGuard], path: "profile"),
  ],
)
class $AppRouter {}
