// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i20;
import 'package:flutter/material.dart' as _i21;

import '../pages/academics/academics.page.dart' as _i11;
import '../pages/attendance/attendance.page.dart' as _i12;
import '../pages/attendance/scan.page.dart' as _i7;
import '../pages/attendance/scan_confirmation.page.dart' as _i8;
import '../pages/attendance/tabs/anagkazo_live.tab.dart' as _i17;
import '../pages/attendance/tabs/experience.tab.dart' as _i18;
import '../pages/attendance/tabs/other_events.tab.dart' as _i19;
import '../pages/attendance/tabs/pillar.tab.dart' as _i16;
import '../pages/attendance/tabs/vision.tab.dart' as _i15;
import '../pages/auth/login.page.dart' as _i1;
import '../pages/auth/profile.page.dart' as _i9;
import '../pages/disciplinary_points/disciplinary_points.page.dart' as _i6;
import '../pages/documents/documents.page.dart' as _i3;
import '../pages/forms/forms.page.dart' as _i4;
import '../pages/home/home.page.dart' as _i10;
import '../pages/index.page.dart' as _i2;
import '../pages/more/more.page.dart' as _i14;
import '../pages/my_fellowship/my_fellowship.page.dart' as _i13;
import '../pages/pastoral_points/pastoral_points.page.dart' as _i5;
import 'auth_gard.core.dart' as _i22;

class AppRouter extends _i20.RootStackRouter {
  AppRouter({
    _i21.GlobalKey<_i21.NavigatorState>? navigatorKey,
    required this.authGuard,
  }) : super(navigatorKey);

  final _i22.AuthGuard authGuard;

  @override
  final Map<String, _i20.PageFactory> pagesMap = {
    LoginRoute.name: (routeData) {
      final args = routeData.argsAs<LoginRouteArgs>();
      return _i20.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i20.WrappedRoute(
            child: _i1.LoginPage(
          key: args.key,
          onLogin: args.onLogin,
        )),
      );
    },
    IndexRoute.name: (routeData) {
      return _i20.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.IndexPage(),
      );
    },
    DocumentsRoute.name: (routeData) {
      return _i20.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.DocumentsPage(),
      );
    },
    FormsRoute.name: (routeData) {
      return _i20.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.FormsPage(),
      );
    },
    PastoralPointsRoute.name: (routeData) {
      return _i20.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i5.PastoralPointsPage(),
      );
    },
    DisciplinaryPointsRoute.name: (routeData) {
      return _i20.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i6.DisciplinaryPointsPage(),
      );
    },
    ScanRoute.name: (routeData) {
      return _i20.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i20.WrappedRoute(child: const _i7.ScanPage()),
      );
    },
    ScanConfirmationRoute.name: (routeData) {
      final args = routeData.argsAs<ScanConfirmationRouteArgs>();
      return _i20.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i8.ScanConfirmationPage(
          key: args.key,
          details: args.details,
        ),
      );
    },
    ProfileRoute.name: (routeData) {
      return _i20.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i9.ProfilePage(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i20.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i10.HomePage(),
      );
    },
    AcademicsRoute.name: (routeData) {
      return _i20.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i11.AcademicsPage(),
      );
    },
    AttendanceRoute.name: (routeData) {
      return _i20.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i20.WrappedRoute(child: const _i12.AttendancePage()),
      );
    },
    MyFellowshipRoute.name: (routeData) {
      final args = routeData.argsAs<MyFellowshipRouteArgs>(
          orElse: () => const MyFellowshipRouteArgs());
      return _i20.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i20.WrappedRoute(child: _i13.MyFellowshipPage(key: args.key)),
      );
    },
    MoreRoute.name: (routeData) {
      return _i20.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i14.MorePage(),
      );
    },
    VisionTabRoute.name: (routeData) {
      return _i20.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i15.VisionTabPage(),
      );
    },
    PillarTabRoute.name: (routeData) {
      return _i20.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i16.PillarTabPage(),
      );
    },
    AnagkazoLiveTabRoute.name: (routeData) {
      return _i20.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i17.AnagkazoLiveTabPage(),
      );
    },
    FirstLoveExperienceTabRoute.name: (routeData) {
      return _i20.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i18.FirstLoveExperienceTabPage(),
      );
    },
    OtherEventsTabRoute.name: (routeData) {
      return _i20.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i19.OtherEventsTabPage(),
      );
    },
  };

  @override
  List<_i20.RouteConfig> get routes => [
        _i20.RouteConfig(
          LoginRoute.name,
          path: '/login-page',
        ),
        _i20.RouteConfig(
          IndexRoute.name,
          path: '/',
          meta: <String, dynamic>{'title': 'Index'},
          guards: [authGuard],
          children: [
            _i20.RouteConfig(
              HomeRoute.name,
              path: 'home-page',
              parent: IndexRoute.name,
              meta: <String, dynamic>{'title': 'Home'},
              guards: [authGuard],
            ),
            _i20.RouteConfig(
              AcademicsRoute.name,
              path: 'academics-page',
              parent: IndexRoute.name,
              meta: <String, dynamic>{'title': 'Academics'},
              guards: [authGuard],
            ),
            _i20.RouteConfig(
              AttendanceRoute.name,
              path: 'attendance-page',
              parent: IndexRoute.name,
              meta: <String, dynamic>{'title': 'Attendance'},
              guards: [authGuard],
              children: [
                _i20.RouteConfig(
                  VisionTabRoute.name,
                  path: 'vision-tab-page',
                  parent: AttendanceRoute.name,
                  meta: <String, dynamic>{'title': 'Vision Lecture'},
                ),
                _i20.RouteConfig(
                  PillarTabRoute.name,
                  path: 'pillar-tab-page',
                  parent: AttendanceRoute.name,
                  meta: <String, dynamic>{'title': 'Pillar Lecture'},
                ),
                _i20.RouteConfig(
                  AnagkazoLiveTabRoute.name,
                  path: 'anagkazo-live-tab-page',
                  parent: AttendanceRoute.name,
                  meta: <String, dynamic>{'title': 'Anagkazo Live'},
                ),
                _i20.RouteConfig(
                  FirstLoveExperienceTabRoute.name,
                  path: 'first-love-experience-tab-page',
                  parent: AttendanceRoute.name,
                  meta: <String, dynamic>{'title': 'First Love Experience'},
                ),
                _i20.RouteConfig(
                  OtherEventsTabRoute.name,
                  path: 'other-events-tab-page',
                  parent: AttendanceRoute.name,
                  meta: <String, dynamic>{'title': 'Other Events'},
                ),
              ],
            ),
            _i20.RouteConfig(
              MyFellowshipRoute.name,
              path: 'my-fellowship-page',
              parent: IndexRoute.name,
              meta: <String, dynamic>{'title': 'My Fellowship'},
              guards: [authGuard],
            ),
            _i20.RouteConfig(
              MoreRoute.name,
              path: 'more-page',
              parent: IndexRoute.name,
              meta: <String, dynamic>{'title': 'More'},
              guards: [authGuard],
            ),
          ],
        ),
        _i20.RouteConfig(
          DocumentsRoute.name,
          path: '/documents-page',
          meta: <String, dynamic>{'title': 'Documents'},
          guards: [authGuard],
        ),
        _i20.RouteConfig(
          FormsRoute.name,
          path: '/forms-page',
          meta: <String, dynamic>{'title': 'Forms'},
          guards: [authGuard],
        ),
        _i20.RouteConfig(
          PastoralPointsRoute.name,
          path: '/pastoral-points-page',
          meta: <String, dynamic>{'title': 'Pastoral Points'},
          guards: [authGuard],
        ),
        _i20.RouteConfig(
          DisciplinaryPointsRoute.name,
          path: '/disciplinary-points-page',
          meta: <String, dynamic>{'title': 'Disciplinary Points'},
          guards: [authGuard],
        ),
        _i20.RouteConfig(
          ScanRoute.name,
          path: '/scan-page',
          guards: [authGuard],
        ),
        _i20.RouteConfig(
          ScanConfirmationRoute.name,
          path: '/scan-confirmation-page',
          guards: [authGuard],
        ),
        _i20.RouteConfig(
          ProfileRoute.name,
          path: '/profile-page',
          guards: [authGuard],
        ),
      ];
}

/// generated route for
/// [_i1.LoginPage]
class LoginRoute extends _i20.PageRouteInfo<LoginRouteArgs> {
  LoginRoute({
    _i21.Key? key,
    required void Function(bool) onLogin,
  }) : super(
          LoginRoute.name,
          path: '/login-page',
          args: LoginRouteArgs(
            key: key,
            onLogin: onLogin,
          ),
        );

  static const String name = 'LoginRoute';
}

class LoginRouteArgs {
  const LoginRouteArgs({
    this.key,
    required this.onLogin,
  });

  final _i21.Key? key;

  final void Function(bool) onLogin;

  @override
  String toString() {
    return 'LoginRouteArgs{key: $key, onLogin: $onLogin}';
  }
}

/// generated route for
/// [_i2.IndexPage]
class IndexRoute extends _i20.PageRouteInfo<void> {
  const IndexRoute({List<_i20.PageRouteInfo>? children})
      : super(
          IndexRoute.name,
          path: '/',
          initialChildren: children,
        );

  static const String name = 'IndexRoute';
}

/// generated route for
/// [_i3.DocumentsPage]
class DocumentsRoute extends _i20.PageRouteInfo<void> {
  const DocumentsRoute()
      : super(
          DocumentsRoute.name,
          path: '/documents-page',
        );

  static const String name = 'DocumentsRoute';
}

/// generated route for
/// [_i4.FormsPage]
class FormsRoute extends _i20.PageRouteInfo<void> {
  const FormsRoute()
      : super(
          FormsRoute.name,
          path: '/forms-page',
        );

  static const String name = 'FormsRoute';
}

/// generated route for
/// [_i5.PastoralPointsPage]
class PastoralPointsRoute extends _i20.PageRouteInfo<void> {
  const PastoralPointsRoute()
      : super(
          PastoralPointsRoute.name,
          path: '/pastoral-points-page',
        );

  static const String name = 'PastoralPointsRoute';
}

/// generated route for
/// [_i6.DisciplinaryPointsPage]
class DisciplinaryPointsRoute extends _i20.PageRouteInfo<void> {
  const DisciplinaryPointsRoute()
      : super(
          DisciplinaryPointsRoute.name,
          path: '/disciplinary-points-page',
        );

  static const String name = 'DisciplinaryPointsRoute';
}

/// generated route for
/// [_i7.ScanPage]
class ScanRoute extends _i20.PageRouteInfo<void> {
  const ScanRoute()
      : super(
          ScanRoute.name,
          path: '/scan-page',
        );

  static const String name = 'ScanRoute';
}

/// generated route for
/// [_i8.ScanConfirmationPage]
class ScanConfirmationRoute
    extends _i20.PageRouteInfo<ScanConfirmationRouteArgs> {
  ScanConfirmationRoute({
    _i21.Key? key,
    required Map<String, dynamic> details,
  }) : super(
          ScanConfirmationRoute.name,
          path: '/scan-confirmation-page',
          args: ScanConfirmationRouteArgs(
            key: key,
            details: details,
          ),
        );

  static const String name = 'ScanConfirmationRoute';
}

class ScanConfirmationRouteArgs {
  const ScanConfirmationRouteArgs({
    this.key,
    required this.details,
  });

  final _i21.Key? key;

  final Map<String, dynamic> details;

  @override
  String toString() {
    return 'ScanConfirmationRouteArgs{key: $key, details: $details}';
  }
}

/// generated route for
/// [_i9.ProfilePage]
class ProfileRoute extends _i20.PageRouteInfo<void> {
  const ProfileRoute()
      : super(
          ProfileRoute.name,
          path: '/profile-page',
        );

  static const String name = 'ProfileRoute';
}

/// generated route for
/// [_i10.HomePage]
class HomeRoute extends _i20.PageRouteInfo<void> {
  const HomeRoute()
      : super(
          HomeRoute.name,
          path: 'home-page',
        );

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i11.AcademicsPage]
class AcademicsRoute extends _i20.PageRouteInfo<void> {
  const AcademicsRoute()
      : super(
          AcademicsRoute.name,
          path: 'academics-page',
        );

  static const String name = 'AcademicsRoute';
}

/// generated route for
/// [_i12.AttendancePage]
class AttendanceRoute extends _i20.PageRouteInfo<void> {
  const AttendanceRoute({List<_i20.PageRouteInfo>? children})
      : super(
          AttendanceRoute.name,
          path: 'attendance-page',
          initialChildren: children,
        );

  static const String name = 'AttendanceRoute';
}

/// generated route for
/// [_i13.MyFellowshipPage]
class MyFellowshipRoute extends _i20.PageRouteInfo<MyFellowshipRouteArgs> {
  MyFellowshipRoute({_i21.Key? key})
      : super(
          MyFellowshipRoute.name,
          path: 'my-fellowship-page',
          args: MyFellowshipRouteArgs(key: key),
        );

  static const String name = 'MyFellowshipRoute';
}

class MyFellowshipRouteArgs {
  const MyFellowshipRouteArgs({this.key});

  final _i21.Key? key;

  @override
  String toString() {
    return 'MyFellowshipRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i14.MorePage]
class MoreRoute extends _i20.PageRouteInfo<void> {
  const MoreRoute()
      : super(
          MoreRoute.name,
          path: 'more-page',
        );

  static const String name = 'MoreRoute';
}

/// generated route for
/// [_i15.VisionTabPage]
class VisionTabRoute extends _i20.PageRouteInfo<void> {
  const VisionTabRoute()
      : super(
          VisionTabRoute.name,
          path: 'vision-tab-page',
        );

  static const String name = 'VisionTabRoute';
}

/// generated route for
/// [_i16.PillarTabPage]
class PillarTabRoute extends _i20.PageRouteInfo<void> {
  const PillarTabRoute()
      : super(
          PillarTabRoute.name,
          path: 'pillar-tab-page',
        );

  static const String name = 'PillarTabRoute';
}

/// generated route for
/// [_i17.AnagkazoLiveTabPage]
class AnagkazoLiveTabRoute extends _i20.PageRouteInfo<void> {
  const AnagkazoLiveTabRoute()
      : super(
          AnagkazoLiveTabRoute.name,
          path: 'anagkazo-live-tab-page',
        );

  static const String name = 'AnagkazoLiveTabRoute';
}

/// generated route for
/// [_i18.FirstLoveExperienceTabPage]
class FirstLoveExperienceTabRoute extends _i20.PageRouteInfo<void> {
  const FirstLoveExperienceTabRoute()
      : super(
          FirstLoveExperienceTabRoute.name,
          path: 'first-love-experience-tab-page',
        );

  static const String name = 'FirstLoveExperienceTabRoute';
}

/// generated route for
/// [_i19.OtherEventsTabPage]
class OtherEventsTabRoute extends _i20.PageRouteInfo<void> {
  const OtherEventsTabRoute()
      : super(
          OtherEventsTabRoute.name,
          path: 'other-events-tab-page',
        );

  static const String name = 'OtherEventsTabRoute';
}
