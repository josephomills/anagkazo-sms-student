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

import '../pages/academics/academics.page.dart' as _i13;
import '../pages/accommodation/accommodation.page.dart' as _i11;
import '../pages/attendance/attendance.page.dart' as _i14;
import '../pages/attendance/scan.page.dart' as _i7;
import '../pages/attendance/scan_confirmation.page.dart' as _i8;
import '../pages/attendance/tabs/church.tab.dart' as _i18;
import '../pages/attendance/tabs/lecture.tab.dart' as _i17;
import '../pages/attendance/tabs/other.tab.dart' as _i19;
import '../pages/auth/login.page.dart' as _i1;
import '../pages/auth/profile.page.dart' as _i9;
import '../pages/discipline/discipline.page.dart' as _i6;
import '../pages/documents/documents.page.dart' as _i3;
import '../pages/forms/forms.page.dart' as _i4;
import '../pages/home/home.page.dart' as _i12;
import '../pages/index.page.dart' as _i2;
import '../pages/more/more.page.dart' as _i16;
import '../pages/my_fellowship/my_fellowship.page.dart' as _i15;
import '../pages/pastoral_points/pastoral_points.page.dart' as _i5;
import '../pages/settings/settings.page.dart' as _i10;
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
      final args = routeData.argsAs<LoginRouteArgs>(
          orElse: () => const LoginRouteArgs());
      return _i20.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i20.WrappedRoute(child: _i1.LoginPage(key: args.key)),
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
    DisciplineRoute.name: (routeData) {
      return _i20.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i6.DisciplinePage(),
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
    SettingsRoute.name: (routeData) {
      return _i20.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i10.SettingsPage(),
      );
    },
    AccommodationRoute.name: (routeData) {
      return _i20.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i11.AccommodationPage(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i20.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i12.HomePage(),
      );
    },
    AcademicsRoute.name: (routeData) {
      return _i20.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i13.AcademicsPage(),
      );
    },
    AttendanceRoute.name: (routeData) {
      return _i20.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i20.WrappedRoute(child: const _i14.AttendancePage()),
      );
    },
    MyFellowshipRoute.name: (routeData) {
      final args = routeData.argsAs<MyFellowshipRouteArgs>(
          orElse: () => const MyFellowshipRouteArgs());
      return _i20.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i20.WrappedRoute(child: _i15.MyFellowshipPage(key: args.key)),
      );
    },
    MoreRoute.name: (routeData) {
      return _i20.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i16.MorePage(),
      );
    },
    LectureTabRoute.name: (routeData) {
      return _i20.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i17.LectureTabPage(),
      );
    },
    ChurchTabRoute.name: (routeData) {
      return _i20.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i18.ChurchTabPage(),
      );
    },
    OtherTabRoute.name: (routeData) {
      return _i20.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i19.OtherTabPage(),
      );
    },
  };

  @override
  List<_i20.RouteConfig> get routes => [
        _i20.RouteConfig(
          LoginRoute.name,
          path: 'login',
        ),
        _i20.RouteConfig(
          IndexRoute.name,
          path: '/',
          meta: <String, dynamic>{'title': 'Index'},
          guards: [authGuard],
          children: [
            _i20.RouteConfig(
              HomeRoute.name,
              path: 'home',
              parent: IndexRoute.name,
              meta: <String, dynamic>{'title': 'Home'},
            ),
            _i20.RouteConfig(
              AcademicsRoute.name,
              path: 'academics',
              parent: IndexRoute.name,
              meta: <String, dynamic>{'title': 'Academics'},
            ),
            _i20.RouteConfig(
              AttendanceRoute.name,
              path: 'attendance',
              parent: IndexRoute.name,
              meta: <String, dynamic>{'title': 'Attendance'},
              children: [
                _i20.RouteConfig(
                  LectureTabRoute.name,
                  path: 'lectures',
                  parent: AttendanceRoute.name,
                  meta: <String, dynamic>{'title': 'Lectures'},
                ),
                _i20.RouteConfig(
                  ChurchTabRoute.name,
                  path: 'church',
                  parent: AttendanceRoute.name,
                  meta: <String, dynamic>{'title': 'Church Services'},
                ),
                _i20.RouteConfig(
                  OtherTabRoute.name,
                  path: 'other',
                  parent: AttendanceRoute.name,
                  meta: <String, dynamic>{'title': 'Other Events'},
                ),
              ],
            ),
            _i20.RouteConfig(
              MyFellowshipRoute.name,
              path: 'ministry',
              parent: IndexRoute.name,
              meta: <String, dynamic>{'title': 'My Fellowship'},
            ),
            _i20.RouteConfig(
              MoreRoute.name,
              path: 'more',
              parent: IndexRoute.name,
              meta: <String, dynamic>{'title': 'More'},
            ),
          ],
        ),
        _i20.RouteConfig(
          DocumentsRoute.name,
          path: 'documents',
          meta: <String, dynamic>{'title': 'Documents'},
        ),
        _i20.RouteConfig(
          FormsRoute.name,
          path: 'forms',
          meta: <String, dynamic>{'title': 'Forms'},
        ),
        _i20.RouteConfig(
          PastoralPointsRoute.name,
          path: 'pastoral-points',
          meta: <String, dynamic>{'title': 'Pastoral Points'},
        ),
        _i20.RouteConfig(
          DisciplineRoute.name,
          path: 'discipline',
          meta: <String, dynamic>{'title': 'Discipline'},
        ),
        _i20.RouteConfig(
          ScanRoute.name,
          path: 'scan',
        ),
        _i20.RouteConfig(
          ScanConfirmationRoute.name,
          path: '/scan-confirmation-page',
        ),
        _i20.RouteConfig(
          ProfileRoute.name,
          path: 'profile',
          meta: <String, dynamic>{'title': 'Profile'},
        ),
        _i20.RouteConfig(
          SettingsRoute.name,
          path: 'settings',
          meta: <String, dynamic>{'title': 'Settings'},
        ),
        _i20.RouteConfig(
          AccommodationRoute.name,
          path: 'accommodation',
          meta: <String, dynamic>{'title': 'Accommodation'},
        ),
      ];
}

/// generated route for
/// [_i1.LoginPage]
class LoginRoute extends _i20.PageRouteInfo<LoginRouteArgs> {
  LoginRoute({_i21.Key? key})
      : super(
          LoginRoute.name,
          path: 'login',
          args: LoginRouteArgs(key: key),
        );

  static const String name = 'LoginRoute';
}

class LoginRouteArgs {
  const LoginRouteArgs({this.key});

  final _i21.Key? key;

  @override
  String toString() {
    return 'LoginRouteArgs{key: $key}';
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
          path: 'documents',
        );

  static const String name = 'DocumentsRoute';
}

/// generated route for
/// [_i4.FormsPage]
class FormsRoute extends _i20.PageRouteInfo<void> {
  const FormsRoute()
      : super(
          FormsRoute.name,
          path: 'forms',
        );

  static const String name = 'FormsRoute';
}

/// generated route for
/// [_i5.PastoralPointsPage]
class PastoralPointsRoute extends _i20.PageRouteInfo<void> {
  const PastoralPointsRoute()
      : super(
          PastoralPointsRoute.name,
          path: 'pastoral-points',
        );

  static const String name = 'PastoralPointsRoute';
}

/// generated route for
/// [_i6.DisciplinePage]
class DisciplineRoute extends _i20.PageRouteInfo<void> {
  const DisciplineRoute()
      : super(
          DisciplineRoute.name,
          path: 'discipline',
        );

  static const String name = 'DisciplineRoute';
}

/// generated route for
/// [_i7.ScanPage]
class ScanRoute extends _i20.PageRouteInfo<void> {
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
          path: 'profile',
        );

  static const String name = 'ProfileRoute';
}

/// generated route for
/// [_i10.SettingsPage]
class SettingsRoute extends _i20.PageRouteInfo<void> {
  const SettingsRoute()
      : super(
          SettingsRoute.name,
          path: 'settings',
        );

  static const String name = 'SettingsRoute';
}

/// generated route for
/// [_i11.AccommodationPage]
class AccommodationRoute extends _i20.PageRouteInfo<void> {
  const AccommodationRoute()
      : super(
          AccommodationRoute.name,
          path: 'accommodation',
        );

  static const String name = 'AccommodationRoute';
}

/// generated route for
/// [_i12.HomePage]
class HomeRoute extends _i20.PageRouteInfo<void> {
  const HomeRoute()
      : super(
          HomeRoute.name,
          path: 'home',
        );

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i13.AcademicsPage]
class AcademicsRoute extends _i20.PageRouteInfo<void> {
  const AcademicsRoute()
      : super(
          AcademicsRoute.name,
          path: 'academics',
        );

  static const String name = 'AcademicsRoute';
}

/// generated route for
/// [_i14.AttendancePage]
class AttendanceRoute extends _i20.PageRouteInfo<void> {
  const AttendanceRoute({List<_i20.PageRouteInfo>? children})
      : super(
          AttendanceRoute.name,
          path: 'attendance',
          initialChildren: children,
        );

  static const String name = 'AttendanceRoute';
}

/// generated route for
/// [_i15.MyFellowshipPage]
class MyFellowshipRoute extends _i20.PageRouteInfo<MyFellowshipRouteArgs> {
  MyFellowshipRoute({_i21.Key? key})
      : super(
          MyFellowshipRoute.name,
          path: 'ministry',
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
/// [_i16.MorePage]
class MoreRoute extends _i20.PageRouteInfo<void> {
  const MoreRoute()
      : super(
          MoreRoute.name,
          path: 'more',
        );

  static const String name = 'MoreRoute';
}

/// generated route for
/// [_i17.LectureTabPage]
class LectureTabRoute extends _i20.PageRouteInfo<void> {
  const LectureTabRoute()
      : super(
          LectureTabRoute.name,
          path: 'lectures',
        );

  static const String name = 'LectureTabRoute';
}

/// generated route for
/// [_i18.ChurchTabPage]
class ChurchTabRoute extends _i20.PageRouteInfo<void> {
  const ChurchTabRoute()
      : super(
          ChurchTabRoute.name,
          path: 'church',
        );

  static const String name = 'ChurchTabRoute';
}

/// generated route for
/// [_i19.OtherTabPage]
class OtherTabRoute extends _i20.PageRouteInfo<void> {
  const OtherTabRoute()
      : super(
          OtherTabRoute.name,
          path: 'other',
        );

  static const String name = 'OtherTabRoute';
}
