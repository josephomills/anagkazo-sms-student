import 'package:auto_route/auto_route.dart';
import 'package:student/presentation/navigation/auth_gard.core.dart';
import 'package:student/presentation/pages/academics/academics.page.dart';
import 'package:student/presentation/pages/accommodation/accommodation.page.dart';
import 'package:student/presentation/pages/attendance/attendance.page.dart';
import 'package:student/presentation/pages/attendance/scan.page.dart';
import 'package:student/presentation/pages/attendance/scan_confirmation.page.dart';
import 'package:student/presentation/pages/attendance/tabs/church.tab.dart';
import 'package:student/presentation/pages/attendance/tabs/lecture.tab.dart';
import 'package:student/presentation/pages/attendance/tabs/other.tab.dart';
import 'package:student/presentation/pages/auth/login.page.dart';
import 'package:student/presentation/pages/auth/profile.page.dart';
import 'package:student/presentation/pages/discipline/discipline.page.dart';
import 'package:student/presentation/pages/home/home.page.dart';
import 'package:student/presentation/pages/documents/documents.page.dart';
import 'package:student/presentation/pages/forms/forms.page.dart';
import 'package:student/presentation/pages/index.page.dart';
import 'package:student/presentation/pages/more/more.page.dart';
import 'package:student/presentation/pages/my_fellowship/my_fellowship.page.dart';
import 'package:student/presentation/pages/pastoral_points/pastoral_points.page.dart';
import 'package:student/presentation/pages/settings/settings.page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: LoginPage, path: "login"),
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
      path: "documents",
    ),
    AutoRoute(
      page: FormsPage,
      meta: {"title": "Forms"},
      path: "forms",
    ),
    AutoRoute(
      page: PastoralPointsPage,
      meta: {"title": "Pastoral Points"},
      path: "pastoral-points",
    ),
    AutoRoute(
      page: DisciplinePage,
      meta: {"title": "Discipline"},
      path: "discipline",
    ),
    // AutoRoute(page: RegisterPage),
    // AutoRoute(page: ForgotPasswordPage),
    // AutoRoute(page: PhoneVerificationPage, guards: [AuthGuard]),
    // AutoRoute(page: OtpPage, guards: [AuthGuard]),
    AutoRoute(page: ScanPage, path: "scan"),
    AutoRoute(page: ScanConfirmationPage),
    AutoRoute(page: ProfilePage, path: "profile", meta: {"title": "Profile"}),
    AutoRoute(
        page: SettingsPage, path: "settings", meta: {"title": "Settings"}),
    AutoRoute(
      page: AccommodationPage,
      path: "accommodation",
      meta: {"title": "Accommodation"},
    ),
  ],
)
class $AppRouter {}
