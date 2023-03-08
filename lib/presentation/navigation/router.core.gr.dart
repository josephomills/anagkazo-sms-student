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
import 'package:auto_route/auto_route.dart' as _i18;
import 'package:flutter/material.dart' as _i19;

import '../pages/academics/academics.page.dart' as _i11;
import '../pages/attendance/attendance.page.dart' as _i12;
import '../pages/attendance/scan.page.dart' as _i7;
import '../pages/attendance/scan_confirmation.page.dart' as _i8;
import '../pages/attendance/tabs/church.tab.dart' as _i16;
import '../pages/attendance/tabs/lecture.tab.dart' as _i15;
import '../pages/attendance/tabs/other.tab.dart' as _i17;
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
import 'auth_gard.core.dart' as _i20;

class AppRouter extends _i18.RootStackRouter {
  AppRouter({
    _i19.GlobalKey<_i19.NavigatorState>? navigatorKey,
    required this.authGuard,
  }) : super(navigatorKey);

  final _i20.AuthGuard authGuard;

  @override
  final Map<String, _i18.PageFactory> pagesMap = {
    LoginRoute.name: (routeData) {
      final args = routeData.argsAs<LoginRouteArgs>(
          orElse: () => const LoginRouteArgs());
      return _i18.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i18.WrappedRoute(child: _i1.LoginPage(key: args.key)),
      );
    },
    IndexRoute.name: (routeData) {
      return _i18.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.IndexPage(),
      );
    },
    DocumentsRoute.name: (routeData) {
      return _i18.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.DocumentsPage(),
      );
    },
    FormsRoute.name: (routeData) {
      return _i18.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.FormsPage(),
      );
    },
    PastoralPointsRoute.name: (routeData) {
      return _i18.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i5.PastoralPointsPage(),
      );
    },
    DisciplinaryPointsRoute.name: (routeData) {
      return _i18.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i6.DisciplinaryPointsPage(),
      );
    },
    ScanRoute.name: (routeData) {
      return _i18.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i18.WrappedRoute(child: const _i7.ScanPage()),
      );
    },
    ScanConfirmationRoute.name: (routeData) {
      final args = routeData.argsAs<ScanConfirmationRouteArgs>();
      return _i18.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i8.ScanConfirmationPage(
          key: args.key,
          details: args.details,
        ),
      );
    },
    ProfileRoute.name: (routeData) {
      return _i18.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i9.ProfilePage(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i18.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i10.HomePage(),
      );
    },
    AcademicsRoute.name: (routeData) {
      return _i18.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i11.AcademicsPage(),
      );
    },
    AttendanceRoute.name: (routeData) {
      return _i18.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i18.WrappedRoute(child: const _i12.AttendancePage()),
      );
    },
    MyFellowshipRoute.name: (routeData) {
      final args = routeData.argsAs<MyFellowshipRouteArgs>(
          orElse: () => const MyFellowshipRouteArgs());
      return _i18.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i18.WrappedRoute(child: _i13.MyFellowshipPage(key: args.key)),
      );
    },
    MoreRoute.name: (routeData) {
      return _i18.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i14.MorePage(),
      );
    },
    LectureTabRoute.name: (routeData) {
      return _i18.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i15.LectureTabPage(),
      );
    },
    ChurchTabRoute.name: (routeData) {
      return _i18.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i16.ChurchTabPage(),
      );
    },
    OtherTabRoute.name: (routeData) {
      return _i18.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i17.OtherTabPage(),
      );
    },
  };

  @override
  List<_i18.RouteConfig> get routes => [
        _i18.RouteConfig(
          LoginRoute.name,
          path: '/login-page',
        ),
        _i18.RouteConfig(
          IndexRoute.name,
          path: '/',
          meta: <String, dynamic>{'title': 'Index'},
          guards: [authGuard],
          children: [
            _i18.RouteConfig(
              HomeRoute.name,
              path: 'home',
              parent: IndexRoute.name,
              meta: <String, dynamic>{'title': 'Home'},
            ),
            _i18.RouteConfig(
              AcademicsRoute.name,
              path: 'academics',
              parent: IndexRoute.name,
              meta: <String, dynamic>{'title': 'Academics'},
            ),
            _i18.RouteConfig(
              AttendanceRoute.name,
              path: 'attendance',
              parent: IndexRoute.name,
              meta: <String, dynamic>{'title': 'Attendance'},
              children: [
                _i18.RouteConfig(
                  LectureTabRoute.name,
                  path: 'lectures',
                  parent: AttendanceRoute.name,
                  meta: <String, dynamic>{'title': 'Lectures'},
                ),
                _i18.RouteConfig(
                  ChurchTabRoute.name,
                  path: 'church',
                  parent: AttendanceRoute.name,
                  meta: <String, dynamic>{'title': 'Church Services'},
                ),
                _i18.RouteConfig(
                  OtherTabRoute.name,
                  path: 'other',
                  parent: AttendanceRoute.name,
                  meta: <String, dynamic>{'title': 'Other Events'},
                ),
              ],
            ),
            _i18.RouteConfig(
              MyFellowshipRoute.name,
              path: 'ministry',
              parent: IndexRoute.name,
              meta: <String, dynamic>{'title': 'My Fellowship'},
            ),
            _i18.RouteConfig(
              MoreRoute.name,
              path: 'more',
              parent: IndexRoute.name,
              meta: <String, dynamic>{'title': 'More'},
            ),
          ],
        ),
        _i18.RouteConfig(
          DocumentsRoute.name,
          path: 'documents',
          meta: <String, dynamic>{'title': 'Documents'},
        ),
        _i18.RouteConfig(
          FormsRoute.name,
          path: 'forms',
          meta: <String, dynamic>{'title': 'Forms'},
        ),
        _i18.RouteConfig(
          PastoralPointsRoute.name,
          path: 'pastoral-points',
          meta: <String, dynamic>{'title': 'Pastoral Points'},
        ),
        _i18.RouteConfig(
          DisciplinaryPointsRoute.name,
          path: 'discipline',
          meta: <String, dynamic>{'title': 'Disciplinary Points'},
        ),
        _i18.RouteConfig(
          ScanRoute.name,
          path: 'scan',
        ),
        _i18.RouteConfig(
          ScanConfirmationRoute.name,
          path: '/scan-confirmation-page',
        ),
        _i18.RouteConfig(
          ProfileRoute.name,
          path: 'profile',
        ),
      ];
}

/// generated route for
/// [_i1.LoginPage]
class LoginRoute extends _i18.PageRouteInfo<LoginRouteArgs> {
  LoginRoute({_i19.Key? key})
      : super(
          LoginRoute.name,
          path: '/login-page',
          args: LoginRouteArgs(key: key),
        );

  static const String name = 'LoginRoute';
}

class LoginRouteArgs {
  const LoginRouteArgs({this.key});

  final _i19.Key? key;

  @override
  String toString() {
    return 'LoginRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i2.IndexPage]
class IndexRoute extends _i18.PageRouteInfo<void> {
  const IndexRoute({List<_i18.PageRouteInfo>? children})
      : super(
          IndexRoute.name,
          path: '/',
          initialChildren: children,
        );

  static const String name = 'IndexRoute';
}

/// generated route for
/// [_i3.DocumentsPage]
class DocumentsRoute extends _i18.PageRouteInfo<void> {
  const DocumentsRoute()
      : super(
          DocumentsRoute.name,
          path: 'documents',
        );

  static const String name = 'DocumentsRoute';
}

/// generated route for
/// [_i4.FormsPage]
class FormsRoute extends _i18.PageRouteInfo<void> {
  const FormsRoute()
      : super(
          FormsRoute.name,
          path: 'forms',
        );

  static const String name = 'FormsRoute';
}

/// generated route for
/// [_i5.PastoralPointsPage]
class PastoralPointsRoute extends _i18.PageRouteInfo<void> {
  const PastoralPointsRoute()
      : super(
          PastoralPointsRoute.name,
          path: 'pastoral-points',
        );

  static const String name = 'PastoralPointsRoute';
}

/// generated route for
/// [_i6.DisciplinaryPointsPage]
class DisciplinaryPointsRoute extends _i18.PageRouteInfo<void> {
  const DisciplinaryPointsRoute()
      : super(
          DisciplinaryPointsRoute.name,
          path: 'discipline',
        );

  static const String name = 'DisciplinaryPointsRoute';
}

/// generated route for
/// [_i7.ScanPage]
class ScanRoute extends _i18.PageRouteInfo<void> {
  const ScanRoute()
      : super(
          ScanRoute.name,
          path: 'scan',
        );

  static const String name = 'ScanRoute';
}

/// generated route for
/// [_i8.ScanConfirmationPage]
class ScanConfirmationRoute
    extends _i18.PageRouteInfo<ScanConfirmationRouteArgs> {
  ScanConfirmationRoute({
    _i19.Key? key,
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

  final _i19.Key? key;

  final Map<String, dynamic> details;

  @override
  String toString() {
    return 'ScanConfirmationRouteArgs{key: $key, details: $details}';
  }
}

/// generated route for
/// [_i9.ProfilePage]
class ProfileRoute extends _i18.PageRouteInfo<void> {
  const ProfileRoute()
      : super(
          ProfileRoute.name,
          path: 'profile',
        );

  static const String name = 'ProfileRoute';
}

/// generated route for
/// [_i10.HomePage]
class HomeRoute extends _i18.PageRouteInfo<void> {
  const HomeRoute()
      : super(
          HomeRoute.name,
          path: 'home',
        );

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i11.AcademicsPage]
class AcademicsRoute extends _i18.PageRouteInfo<void> {
  const AcademicsRoute()
      : super(
          AcademicsRoute.name,
          path: 'academics',
        );

  static const String name = 'AcademicsRoute';
}

/// generated route for
/// [_i12.AttendancePage]
class AttendanceRoute extends _i18.PageRouteInfo<void> {
  const AttendanceRoute({List<_i18.PageRouteInfo>? children})
      : super(
          AttendanceRoute.name,
          path: 'attendance',
          initialChildren: children,
        );

  static const String name = 'AttendanceRoute';
}

/// generated route for
/// [_i13.MyFellowshipPage]
class MyFellowshipRoute extends _i18.PageRouteInfo<MyFellowshipRouteArgs> {
  MyFellowshipRoute({_i19.Key? key})
      : super(
          MyFellowshipRoute.name,
          path: 'ministry',
          args: MyFellowshipRouteArgs(key: key),
        );

  static const String name = 'MyFellowshipRoute';
}

class MyFellowshipRouteArgs {
  const MyFellowshipRouteArgs({this.key});

  final _i19.Key? key;

  @override
  String toString() {
    return 'MyFellowshipRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i14.MorePage]
class MoreRoute extends _i18.PageRouteInfo<void> {
  const MoreRoute()
      : super(
          MoreRoute.name,
          path: 'more',
        );

  static const String name = 'MoreRoute';
}

/// generated route for
/// [_i15.LectureTabPage]
class LectureTabRoute extends _i18.PageRouteInfo<void> {
  const LectureTabRoute()
      : super(
          LectureTabRoute.name,
          path: 'lectures',
        );

  static const String name = 'LectureTabRoute';
}

/// generated route for
/// [_i16.ChurchTabPage]
class ChurchTabRoute extends _i18.PageRouteInfo<void> {
  const ChurchTabRoute()
      : super(
          ChurchTabRoute.name,
          path: 'church',
        );

  static const String name = 'ChurchTabRoute';
}

/// generated route for
/// [_i17.OtherTabPage]
class OtherTabRoute extends _i18.PageRouteInfo<void> {
  const OtherTabRoute()
      : super(
          OtherTabRoute.name,
          path: 'other',
        );

  static const String name = 'OtherTabRoute';
}
