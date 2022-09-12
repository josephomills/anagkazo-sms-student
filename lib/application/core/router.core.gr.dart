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
import 'package:auto_route/auto_route.dart' as _i12;
import 'package:flutter/material.dart' as _i13;

import '../../presentation/pages/academics/academics.page.dart' as _i5;
import '../../presentation/pages/attendance/attendance.page.dart' as _i7;
import '../../presentation/pages/auth/login.page.dart' as _i1;
import '../../presentation/pages/auth/profile.page.dart' as _i3;
import '../../presentation/pages/dashboard/dashboard.page.dart' as _i4;
import '../../presentation/pages/disciplinaryPoints/disciplinaryPoints.page.dart'
    as _i11;
import '../../presentation/pages/documents/documents.page.dart' as _i6;
import '../../presentation/pages/forms/forms.page.dart' as _i8;
import '../../presentation/pages/home.page.dart' as _i2;
import '../../presentation/pages/myFellowship/myFellowship.page.dart' as _i9;
import '../../presentation/pages/pastoralPoints/pastoralPoints.page.dart'
    as _i10;
import 'authGard.core.dart' as _i14;

class AppRouter extends _i12.RootStackRouter {
  AppRouter(
      {_i13.GlobalKey<_i13.NavigatorState>? navigatorKey,
      required this.authGuard})
      : super(navigatorKey);

  final _i14.AuthGuard authGuard;

  @override
  final Map<String, _i12.PageFactory> pagesMap = {
    LoginRoute.name: (routeData) {
      final args = routeData.argsAs<LoginRouteArgs>();
      return _i12.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i12.WrappedRoute(
              child: _i1.LoginPage(key: args.key, onLogin: args.onLogin)));
    },
    HomeRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i12.WrappedRoute(child: const _i2.HomePage()));
    },
    ProfileRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.ProfilePage());
    },
    DashboardRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.DashboardPage());
    },
    AcademicsRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.AcademicsPage());
    },
    DocumentsRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.DocumentsPage());
    },
    AttendanceRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i7.AttendancePage());
    },
    FormsRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i8.FormsPage());
    },
    MyFellowshipRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i9.MyFellowshipPage());
    },
    PastoralPointsRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i10.PastoralPointsPage());
    },
    DisciplinaryPointsRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i11.DisciplinaryPointsPage());
    }
  };

  @override
  List<_i12.RouteConfig> get routes => [
        _i12.RouteConfig(LoginRoute.name, path: '/login-page'),
        _i12.RouteConfig(HomeRoute.name, path: '/', meta: <String, dynamic>{
          'title': 'Home'
        }, guards: [
          authGuard
        ], children: [
          _i12.RouteConfig(DashboardRoute.name,
              path: 'dashboard-page',
              parent: HomeRoute.name,
              meta: <String, dynamic>{'title': 'Dashboard'}),
          _i12.RouteConfig(AcademicsRoute.name,
              path: 'academics-page',
              parent: HomeRoute.name,
              meta: <String, dynamic>{'title': 'Academics'}),
          _i12.RouteConfig(DocumentsRoute.name,
              path: 'documents-page',
              parent: HomeRoute.name,
              meta: <String, dynamic>{'title': 'Documents'}),
          _i12.RouteConfig(AttendanceRoute.name,
              path: 'attendance-page',
              parent: HomeRoute.name,
              meta: <String, dynamic>{'title': 'Attendance'}),
          _i12.RouteConfig(FormsRoute.name,
              path: 'forms-page',
              parent: HomeRoute.name,
              meta: <String, dynamic>{'title': 'Forms'}),
          _i12.RouteConfig(MyFellowshipRoute.name,
              path: 'my-fellowship-page',
              parent: HomeRoute.name,
              meta: <String, dynamic>{'title': 'My Fellowship'}),
          _i12.RouteConfig(PastoralPointsRoute.name,
              path: 'pastoral-points-page',
              parent: HomeRoute.name,
              meta: <String, dynamic>{'title': 'Pastoral Points'}),
          _i12.RouteConfig(DisciplinaryPointsRoute.name,
              path: 'disciplinary-points-page',
              parent: HomeRoute.name,
              meta: <String, dynamic>{'title': 'Disciplinary Points'})
        ]),
        _i12.RouteConfig(ProfileRoute.name,
            path: '/profile-page', guards: [authGuard])
      ];
}

/// generated route for
/// [_i1.LoginPage]
class LoginRoute extends _i12.PageRouteInfo<LoginRouteArgs> {
  LoginRoute({_i13.Key? key, required void Function(bool) onLogin})
      : super(LoginRoute.name,
            path: '/login-page',
            args: LoginRouteArgs(key: key, onLogin: onLogin));

  static const String name = 'LoginRoute';
}

class LoginRouteArgs {
  const LoginRouteArgs({this.key, required this.onLogin});

  final _i13.Key? key;

  final void Function(bool) onLogin;

  @override
  String toString() {
    return 'LoginRouteArgs{key: $key, onLogin: $onLogin}';
  }
}

/// generated route for
/// [_i2.HomePage]
class HomeRoute extends _i12.PageRouteInfo<void> {
  const HomeRoute({List<_i12.PageRouteInfo>? children})
      : super(HomeRoute.name, path: '/', initialChildren: children);

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i3.ProfilePage]
class ProfileRoute extends _i12.PageRouteInfo<void> {
  const ProfileRoute() : super(ProfileRoute.name, path: '/profile-page');

  static const String name = 'ProfileRoute';
}

/// generated route for
/// [_i4.DashboardPage]
class DashboardRoute extends _i12.PageRouteInfo<void> {
  const DashboardRoute() : super(DashboardRoute.name, path: 'dashboard-page');

  static const String name = 'DashboardRoute';
}

/// generated route for
/// [_i5.AcademicsPage]
class AcademicsRoute extends _i12.PageRouteInfo<void> {
  const AcademicsRoute() : super(AcademicsRoute.name, path: 'academics-page');

  static const String name = 'AcademicsRoute';
}

/// generated route for
/// [_i6.DocumentsPage]
class DocumentsRoute extends _i12.PageRouteInfo<void> {
  const DocumentsRoute() : super(DocumentsRoute.name, path: 'documents-page');

  static const String name = 'DocumentsRoute';
}

/// generated route for
/// [_i7.AttendancePage]
class AttendanceRoute extends _i12.PageRouteInfo<void> {
  const AttendanceRoute()
      : super(AttendanceRoute.name, path: 'attendance-page');

  static const String name = 'AttendanceRoute';
}

/// generated route for
/// [_i8.FormsPage]
class FormsRoute extends _i12.PageRouteInfo<void> {
  const FormsRoute() : super(FormsRoute.name, path: 'forms-page');

  static const String name = 'FormsRoute';
}

/// generated route for
/// [_i9.MyFellowshipPage]
class MyFellowshipRoute extends _i12.PageRouteInfo<void> {
  const MyFellowshipRoute()
      : super(MyFellowshipRoute.name, path: 'my-fellowship-page');

  static const String name = 'MyFellowshipRoute';
}

/// generated route for
/// [_i10.PastoralPointsPage]
class PastoralPointsRoute extends _i12.PageRouteInfo<void> {
  const PastoralPointsRoute()
      : super(PastoralPointsRoute.name, path: 'pastoral-points-page');

  static const String name = 'PastoralPointsRoute';
}

/// generated route for
/// [_i11.DisciplinaryPointsPage]
class DisciplinaryPointsRoute extends _i12.PageRouteInfo<void> {
  const DisciplinaryPointsRoute()
      : super(DisciplinaryPointsRoute.name, path: 'disciplinary-points-page');

  static const String name = 'DisciplinaryPointsRoute';
}
