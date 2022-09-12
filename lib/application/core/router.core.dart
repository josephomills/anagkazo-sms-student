import 'package:auto_route/auto_route.dart';
import 'package:student/application/core/authGard.core.dart';
import 'package:student/presentation/pages/auth/login.page.dart';
import 'package:student/presentation/pages/auth/profile.page.dart';
import 'package:student/presentation/pages/dashboard.page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: LoginPage),
    AutoRoute(page: DashboardPage, guards: [AuthGuard], initial: true),
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
