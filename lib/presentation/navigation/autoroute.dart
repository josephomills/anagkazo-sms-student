import 'package:auto_route/auto_route.dart';
import 'package:student/presentation/navigation/auth_gard.core.dart';
import 'package:student/presentation/navigation/autoroute.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  final List<AutoRoute> routes = <AutoRoute>[
    AutoRoute(page: LoginRoute.page, path: "/login"),
    AutoRoute(
      page: IndexRoute.page,
      path: "/",
      guards: [AuthGuard()],
      meta: const {"title": "Index"},
      children: [
        AutoRoute(
          page: HomeRoute.page,
          meta: const {"title": "Home"},
          path: "home",
        ),
        AutoRoute(
          page: AcademicsRoute.page,
          meta: const {"title": "Academics"},
          path: "academics",
          children: [
            AutoRoute(
              page: RotationsTabRoute.page,
              meta: const {"title": "Rotations"},
              path: "rotations",
            ),
            AutoRoute(
              page: OtherPointsTabRoute.page,
              meta: const {"title": "Other Points"},
              path: "other-points",
            ),
          ],
        ),
        AutoRoute(
          page: AttendanceRoute.page,
          meta: const {"title": "Attendance"},
          path: "attendance",
          children: [
            AutoRoute(
              page: LectureTabRoute.page,
              meta: const {"title": "Lectures"},
              path: "lectures",
            ),
            AutoRoute(
              page: ChurchTabRoute.page,
              meta: const {"title": "Church Services"},
              path: "church",
            ),
            AutoRoute(
              page: OtherTabRoute.page,
              meta: const {"title": "Other Events"},
              path: "other",
            ),
          ],
        ),
        AutoRoute(
          page: MyFellowshipRoute.page,
          meta: const {"title": "My Fellowship"},
          path: "ministry",
        ),
        AutoRoute(
          page: MoreRoute.page,
          meta: const {"title": "More"},
          path: "more",
        ),
      ],
    ),
    AutoRoute(
      page: DocumentsRoute.page,
      meta: const {"title": "Documents"},
      path: "/documents",
    ),
    AutoRoute(
      page: FormsRoute.page,
      meta: const {"title": "Forms"},
      path: "/forms",
    ),
    AutoRoute(
      page: PastoralPointsRoute.page,
      meta: const {"title": "Pastoral Points"},
      path: "/pastoral-points",
    ),
    AutoRoute(
      page: DisciplineRoute.page,
      meta: const {"title": "Discipline"},
      path: "/discipline",
    ),
    // AutoRoute(page: RegisterPage),
    // AutoRoute(page: ForgotPasswordPage),
    // AutoRoute(page: PhoneVerificationPage, guards: [AuthGuard]),
    // AutoRoute(page: OtpPage, guards: [AuthGuard]),
    AutoRoute(page: ScanRoute.page, path: "/scan"),
    AutoRoute(
      page: ProfileRoute.page,
      path: "/profile",
      meta: const {"title": "Profile"},
    ),
    AutoRoute(
      page: SettingsRoute.page,
      path: "/settings",
      meta: const {"title": "Settings"},
    ),
    AutoRoute(
      page: AccommodationRoute.page,
      path: "/accommodation",
      meta: const {"title": "Accommodation"},
    ),
    AutoRoute(
      page: RotationRoute.page,
      path: "/rotation",
    ),
  ];
}
