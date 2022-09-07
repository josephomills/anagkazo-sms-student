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
import 'package:auto_route/auto_route.dart' as _i10;
import 'package:flutter/material.dart' as _i11;
import 'package:flutterfire_ui/auth.dart' as _i13;

import '../../presentation/pages/attendance/attendance.page.dart' as _i6;
import '../../presentation/pages/attendance/scan.page.dart' as _i7;
import '../../presentation/pages/attendance/scanConfirmation.page.dart' as _i8;
import '../../presentation/pages/auth/forgotPassword.page.dart' as _i3;
import '../../presentation/pages/auth/login.page.dart' as _i1;
import '../../presentation/pages/auth/otp.page.dart' as _i5;
import '../../presentation/pages/auth/phone.page.dart' as _i4;
import '../../presentation/pages/auth/profile.page.dart' as _i9;
import '../../presentation/pages/auth/register.page.dart' as _i2;
import 'authGard.core.dart' as _i12;

class AppRouter extends _i10.RootStackRouter {
  AppRouter(
      {_i11.GlobalKey<_i11.NavigatorState>? navigatorKey,
      required this.authGuard})
      : super(navigatorKey);

  final _i12.AuthGuard authGuard;

  @override
  final Map<String, _i10.PageFactory> pagesMap = {
    LoginRoute.name: (routeData) {
      final args = routeData.argsAs<LoginRouteArgs>();
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i1.LoginPage(key: args.key, onLogin: args.onLogin));
    },
    RegisterRoute.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.RegisterPage());
    },
    ForgotPasswordRoute.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.ForgotPasswordPage());
    },
    PhoneVerificationRoute.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.PhoneVerificationPage());
    },
    OtpRoute.name: (routeData) {
      final args = routeData.argsAs<OtpRouteArgs>();
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i5.OtpPage(
              key: args.key,
              action: args.action,
              phone: args.phone,
              flowKey: args.flowKey));
    },
    AttendanceRoute.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.AttendancePage());
    },
    ScanRoute.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i7.ScanPage());
    },
    ScanConfirmationRoute.name: (routeData) {
      final args = routeData.argsAs<ScanConfirmationRouteArgs>();
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData,
          child:
              _i8.ScanConfirmationPage(key: args.key, details: args.details));
    },
    ProfileRoute.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i9.ProfilePage());
    }
  };

  @override
  List<_i10.RouteConfig> get routes => [
        _i10.RouteConfig(LoginRoute.name, path: '/login-page'),
        _i10.RouteConfig(RegisterRoute.name, path: '/register-page'),
        _i10.RouteConfig(ForgotPasswordRoute.name,
            path: '/forgot-password-page'),
        _i10.RouteConfig(PhoneVerificationRoute.name,
            path: '/phone-verification-page', guards: [authGuard]),
        _i10.RouteConfig(OtpRoute.name, path: '/otp-page', guards: [authGuard]),
        _i10.RouteConfig(AttendanceRoute.name, path: '/', guards: [authGuard]),
        _i10.RouteConfig(ScanRoute.name,
            path: '/scan-page', guards: [authGuard]),
        _i10.RouteConfig(ScanConfirmationRoute.name,
            path: '/scan-confirmation-page', guards: [authGuard]),
        _i10.RouteConfig(ProfileRoute.name,
            path: '/profile-page', guards: [authGuard])
      ];
}

/// generated route for
/// [_i1.LoginPage]
class LoginRoute extends _i10.PageRouteInfo<LoginRouteArgs> {
  LoginRoute({_i11.Key? key, required void Function(bool) onLogin})
      : super(LoginRoute.name,
            path: '/login-page',
            args: LoginRouteArgs(key: key, onLogin: onLogin));

  static const String name = 'LoginRoute';
}

class LoginRouteArgs {
  const LoginRouteArgs({this.key, required this.onLogin});

  final _i11.Key? key;

  final void Function(bool) onLogin;

  @override
  String toString() {
    return 'LoginRouteArgs{key: $key, onLogin: $onLogin}';
  }
}

/// generated route for
/// [_i2.RegisterPage]
class RegisterRoute extends _i10.PageRouteInfo<void> {
  const RegisterRoute() : super(RegisterRoute.name, path: '/register-page');

  static const String name = 'RegisterRoute';
}

/// generated route for
/// [_i3.ForgotPasswordPage]
class ForgotPasswordRoute extends _i10.PageRouteInfo<void> {
  const ForgotPasswordRoute()
      : super(ForgotPasswordRoute.name, path: '/forgot-password-page');

  static const String name = 'ForgotPasswordRoute';
}

/// generated route for
/// [_i4.PhoneVerificationPage]
class PhoneVerificationRoute extends _i10.PageRouteInfo<void> {
  const PhoneVerificationRoute()
      : super(PhoneVerificationRoute.name, path: '/phone-verification-page');

  static const String name = 'PhoneVerificationRoute';
}

/// generated route for
/// [_i5.OtpPage]
class OtpRoute extends _i10.PageRouteInfo<OtpRouteArgs> {
  OtpRoute(
      {_i11.Key? key,
      required _i13.AuthAction action,
      required String phone,
      required Object flowKey})
      : super(OtpRoute.name,
            path: '/otp-page',
            args: OtpRouteArgs(
                key: key, action: action, phone: phone, flowKey: flowKey));

  static const String name = 'OtpRoute';
}

class OtpRouteArgs {
  const OtpRouteArgs(
      {this.key,
      required this.action,
      required this.phone,
      required this.flowKey});

  final _i11.Key? key;

  final _i13.AuthAction action;

  final String phone;

  final Object flowKey;

  @override
  String toString() {
    return 'OtpRouteArgs{key: $key, action: $action, phone: $phone, flowKey: $flowKey}';
  }
}

/// generated route for
/// [_i6.AttendancePage]
class AttendanceRoute extends _i10.PageRouteInfo<void> {
  const AttendanceRoute() : super(AttendanceRoute.name, path: '/');

  static const String name = 'AttendanceRoute';
}

/// generated route for
/// [_i7.ScanPage]
class ScanRoute extends _i10.PageRouteInfo<void> {
  const ScanRoute() : super(ScanRoute.name, path: '/scan-page');

  static const String name = 'ScanRoute';
}

/// generated route for
/// [_i8.ScanConfirmationPage]
class ScanConfirmationRoute
    extends _i10.PageRouteInfo<ScanConfirmationRouteArgs> {
  ScanConfirmationRoute({_i11.Key? key, required Map<String, dynamic> details})
      : super(ScanConfirmationRoute.name,
            path: '/scan-confirmation-page',
            args: ScanConfirmationRouteArgs(key: key, details: details));

  static const String name = 'ScanConfirmationRoute';
}

class ScanConfirmationRouteArgs {
  const ScanConfirmationRouteArgs({this.key, required this.details});

  final _i11.Key? key;

  final Map<String, dynamic> details;

  @override
  String toString() {
    return 'ScanConfirmationRouteArgs{key: $key, details: $details}';
  }
}

/// generated route for
/// [_i9.ProfilePage]
class ProfileRoute extends _i10.PageRouteInfo<void> {
  const ProfileRoute() : super(ProfileRoute.name, path: '/profile-page');

  static const String name = 'ProfileRoute';
}
