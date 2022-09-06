import 'package:auto_route/auto_route.dart';
import 'package:student/presentation/pages/attendance/scan.page.dart';
import 'package:student/presentation/pages/attendance/scan_confirmation.page.dart';
import 'package:student/presentation/pages/auth/forgot_password.page.dart';
import 'package:student/presentation/pages/auth/login.page.dart';
import 'package:student/presentation/pages/attendance/attendance.page.dart';
import 'package:student/presentation/pages/auth/otp.page.dart';
import 'package:student/presentation/pages/auth/phone.page.dart';
import 'package:student/presentation/pages/auth/profile.page.dart';
import 'package:student/presentation/pages/auth/register.page.dart';
import 'package:student/presentation/core/auth_gard.core.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: LoginPage),
    AutoRoute(page: RegisterPage),
    AutoRoute(page: ForgotPasswordPage),
    AutoRoute(page: PhoneVerificationPage, guards: [AuthGuard]),
    AutoRoute(page: OtpPage, guards: [AuthGuard]),
    AutoRoute(page: AttendancePage, guards: [AuthGuard], initial: true),
    AutoRoute(page: ScanPage, guards: [AuthGuard]),
    AutoRoute(page: ScanConfirmationPage, guards: [AuthGuard]),
    AutoRoute(page: ProfilePage, guards: [AuthGuard]),
  ],
)
class $AppRouter {}
