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
import 'package:auto_route/auto_route.dart' as _i6;
import 'package:flutter/material.dart' as _i7;

import '../../presentation/pages/attendance/attendance.page.dart' as _i2;
import '../../presentation/pages/attendance/scan.page.dart' as _i3;
import '../../presentation/pages/attendance/scanConfirmation.page.dart' as _i4;
import '../../presentation/pages/auth/login.page.dart' as _i1;
import '../../presentation/pages/auth/profile.page.dart' as _i5;
import 'authGard.core.dart' as _i8;

class AppRouter extends _i6.RootStackRouter {
  AppRouter(
      {_i7.GlobalKey<_i7.NavigatorState>? navigatorKey,
      required this.authGuard})
      : super(navigatorKey);

  final _i8.AuthGuard authGuard;

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    LoginRoute.name: (routeData) {
      final args = routeData.argsAs<LoginRouteArgs>();
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i6.WrappedRoute(
              child: _i1.LoginPage(key: args.key, onLogin: args.onLogin)));
    },
    AttendanceRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.AttendancePage());
    },
    ScanRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.ScanPage());
    },
    ScanConfirmationRoute.name: (routeData) {
      final args = routeData.argsAs<ScanConfirmationRouteArgs>();
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData,
          child:
              _i4.ScanConfirmationPage(key: args.key, details: args.details));
    },
    ProfileRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.ProfilePage());
    }
  };

  @override
  List<_i6.RouteConfig> get routes => [
        _i6.RouteConfig(LoginRoute.name, path: '/login-page'),
        _i6.RouteConfig(AttendanceRoute.name, path: '/', guards: [authGuard]),
        _i6.RouteConfig(ScanRoute.name,
            path: '/scan-page', guards: [authGuard]),
        _i6.RouteConfig(ScanConfirmationRoute.name,
            path: '/scan-confirmation-page', guards: [authGuard]),
        _i6.RouteConfig(ProfileRoute.name,
            path: '/profile-page', guards: [authGuard])
      ];
}

/// generated route for
/// [_i1.LoginPage]
class LoginRoute extends _i6.PageRouteInfo<LoginRouteArgs> {
  LoginRoute({_i7.Key? key, required void Function(bool) onLogin})
      : super(LoginRoute.name,
            path: '/login-page',
            args: LoginRouteArgs(key: key, onLogin: onLogin));

  static const String name = 'LoginRoute';
}

class LoginRouteArgs {
  const LoginRouteArgs({this.key, required this.onLogin});

  final _i7.Key? key;

  final void Function(bool) onLogin;

  @override
  String toString() {
    return 'LoginRouteArgs{key: $key, onLogin: $onLogin}';
  }
}

/// generated route for
/// [_i2.AttendancePage]
class AttendanceRoute extends _i6.PageRouteInfo<void> {
  const AttendanceRoute() : super(AttendanceRoute.name, path: '/');

  static const String name = 'AttendanceRoute';
}

/// generated route for
/// [_i3.ScanPage]
class ScanRoute extends _i6.PageRouteInfo<void> {
  const ScanRoute() : super(ScanRoute.name, path: '/scan-page');

  static const String name = 'ScanRoute';
}

/// generated route for
/// [_i4.ScanConfirmationPage]
class ScanConfirmationRoute
    extends _i6.PageRouteInfo<ScanConfirmationRouteArgs> {
  ScanConfirmationRoute({_i7.Key? key, required Map<String, dynamic> details})
      : super(ScanConfirmationRoute.name,
            path: '/scan-confirmation-page',
            args: ScanConfirmationRouteArgs(key: key, details: details));

  static const String name = 'ScanConfirmationRoute';
}

class ScanConfirmationRouteArgs {
  const ScanConfirmationRouteArgs({this.key, required this.details});

  final _i7.Key? key;

  final Map<String, dynamic> details;

  @override
  String toString() {
    return 'ScanConfirmationRouteArgs{key: $key, details: $details}';
  }
}

/// generated route for
/// [_i5.ProfilePage]
class ProfileRoute extends _i6.PageRouteInfo<void> {
  const ProfileRoute() : super(ProfileRoute.name, path: '/profile-page');

  static const String name = 'ProfileRoute';
}
