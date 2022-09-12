import 'package:auto_route/auto_route.dart';
import 'package:student/application/core/authGard.core.dart';
import 'package:student/presentation/pages/academics/academics.page.dart';
import 'package:student/presentation/pages/attendance/attendance.page.dart';
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
        AutoRoute(page: DashboardPage, meta: {"title": "Dashboard"}),
        AutoRoute(page: AcademicsPage, meta: {"title": "Academics"}),
        AutoRoute(page: DocumentsPage, meta: {"title": "Documents"}),
        AutoRoute(page: AttendancePage, meta: {"title": "Attendance"}),
        AutoRoute(page: FormsPage, meta: {"title": "Forms"}),
        AutoRoute(page: MyFellowshipPage, meta: {"title": "My Fellowship"}),
        AutoRoute(page: PastoralPointsPage, meta: {"title": "Pastoral Points"}),
        AutoRoute(
            page: DisciplinaryPointsPage,
            meta: {"title": "Disciplinary Points"}),
      ],
    ),
    // AutoRoute(page: RegisterPage),
    // AutoRoute(page: ForgotPasswordPage),
    // AutoRoute(page: PhoneVerificationPage, guards: [AuthGuard]),
    // AutoRoute(page: OtpPage, guards: [AuthGuard]),
    // AutoRoute(page: AttendancePage, guards: [AuthGuard], initial: true),
    // AutoRoute(page: ScanPage, guards: [AuthGuard]),
    // AutoRoute(page: ScanConfirmationPage, guards: [AuthGuard]),
    AutoRoute(page: ProfilePage, guards: [AuthGuard]),
  ],
)
class $AppRouter {}
