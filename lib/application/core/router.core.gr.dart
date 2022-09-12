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
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i5;

import '../../presentation/pages/auth/login.page.dart' as _i1;
import '../../presentation/pages/auth/profile.page.dart' as _i3;
import '../../presentation/pages/dashboard.page.dart' as _i2;
import 'authGard.core.dart' as _i6;

class AppRouter extends _i4.RootStackRouter {
  AppRouter(
      {_i5.GlobalKey<_i5.NavigatorState>? navigatorKey,
      required this.authGuard})
      : super(navigatorKey);

  final _i6.AuthGuard authGuard;

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    LoginRoute.name: (routeData) {
      final args = routeData.argsAs<LoginRouteArgs>();
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i4.WrappedRoute(
              child: _i1.LoginPage(key: args.key, onLogin: args.onLogin)));
    },
    DashboardRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i4.WrappedRoute(child: const _i2.DashboardPage()));
    },
    ProfileRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.ProfilePage());
    }
  };

  @override
  List<_i4.RouteConfig> get routes => [
        _i4.RouteConfig(LoginRoute.name, path: '/login-page'),
        _i4.RouteConfig(DashboardRoute.name, path: '/', guards: [authGuard]),
        _i4.RouteConfig(ProfileRoute.name,
            path: '/profile-page', guards: [authGuard])
      ];
}

/// generated route for
/// [_i1.LoginPage]
class LoginRoute extends _i4.PageRouteInfo<LoginRouteArgs> {
  LoginRoute({_i5.Key? key, required void Function(bool) onLogin})
      : super(LoginRoute.name,
            path: '/login-page',
            args: LoginRouteArgs(key: key, onLogin: onLogin));

  static const String name = 'LoginRoute';
}

class LoginRouteArgs {
  const LoginRouteArgs({this.key, required this.onLogin});

  final _i5.Key? key;

  final void Function(bool) onLogin;

  @override
  String toString() {
    return 'LoginRouteArgs{key: $key, onLogin: $onLogin}';
  }
}

/// generated route for
/// [_i2.DashboardPage]
class DashboardRoute extends _i4.PageRouteInfo<void> {
  const DashboardRoute() : super(DashboardRoute.name, path: '/');

  static const String name = 'DashboardRoute';
}

/// generated route for
/// [_i3.ProfilePage]
class ProfileRoute extends _i4.PageRouteInfo<void> {
  const ProfileRoute() : super(ProfileRoute.name, path: '/profile-page');

  static const String name = 'ProfileRoute';
}
