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
import 'package:auto_route/auto_route.dart' as _i19;
import 'package:flutter/material.dart' as _i20;

import '../../presentation/pages/academics/academics.page.dart' as _i7;
import '../../presentation/pages/attendance/attendance.page.dart' as _i9;
import '../../presentation/pages/attendance/scan.page.dart' as _i3;
import '../../presentation/pages/attendance/scanConfirmation.page.dart' as _i4;
import '../../presentation/pages/attendance/tabs/anagkazoLive.tab.dart' as _i16;
import '../../presentation/pages/attendance/tabs/firstLoveExperience.tab.dart'
    as _i17;
import '../../presentation/pages/attendance/tabs/otherEvents.tab.dart' as _i18;
import '../../presentation/pages/attendance/tabs/pillar.tab.dart' as _i15;
import '../../presentation/pages/attendance/tabs/vision.tab.dart' as _i14;
import '../../presentation/pages/auth/login.page.dart' as _i1;
import '../../presentation/pages/auth/profile.page.dart' as _i5;
import '../../presentation/pages/dashboard/dashboard.page.dart' as _i6;
import '../../presentation/pages/disciplinaryPoints/disciplinaryPoints.page.dart'
    as _i13;
import '../../presentation/pages/documents/documents.page.dart' as _i8;
import '../../presentation/pages/forms/forms.page.dart' as _i10;
import '../../presentation/pages/home.page.dart' as _i2;
import '../../presentation/pages/myFellowship/myFellowship.page.dart' as _i11;
import '../../presentation/pages/pastoralPoints/pastoralPoints.page.dart'
    as _i12;
import 'authGard.core.dart' as _i21;

class AppRouter extends _i19.RootStackRouter {
  AppRouter(
      {_i20.GlobalKey<_i20.NavigatorState>? navigatorKey,
      required this.authGuard})
      : super(navigatorKey);

  final _i21.AuthGuard authGuard;

  @override
  final Map<String, _i19.PageFactory> pagesMap = {
    LoginRoute.name: (routeData) {
      final args = routeData.argsAs<LoginRouteArgs>();
      return _i19.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i19.WrappedRoute(
              child: _i1.LoginPage(key: args.key, onLogin: args.onLogin)));
    },
    HomeRoute.name: (routeData) {
      return _i19.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i19.WrappedRoute(child: const _i2.HomePage()));
    },
    ScanRoute.name: (routeData) {
      return _i19.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i19.WrappedRoute(child: const _i3.ScanPage()));
    },
    ScanConfirmationRoute.name: (routeData) {
      final args = routeData.argsAs<ScanConfirmationRouteArgs>();
      return _i19.MaterialPageX<dynamic>(
          routeData: routeData,
          child:
              _i4.ScanConfirmationPage(key: args.key, details: args.details));
    },
    ProfileRoute.name: (routeData) {
      return _i19.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.ProfilePage());
    },
    DashboardRoute.name: (routeData) {
      return _i19.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.DashboardPage());
    },
    AcademicsRoute.name: (routeData) {
      return _i19.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i7.AcademicsPage());
    },
    DocumentsRoute.name: (routeData) {
      return _i19.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i8.DocumentsPage());
    },
    AttendanceRoute.name: (routeData) {
      return _i19.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i19.WrappedRoute(child: const _i9.AttendancePage()));
    },
    FormsRoute.name: (routeData) {
      return _i19.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i10.FormsPage());
    },
    MyFellowshipRoute.name: (routeData) {
      final args = routeData.argsAs<MyFellowshipRouteArgs>(
          orElse: () => const MyFellowshipRouteArgs());
      return _i19.MaterialPageX<dynamic>(
          routeData: routeData,
          child:
              _i19.WrappedRoute(child: _i11.MyFellowshipPage(key: args.key)));
    },
    PastoralPointsRoute.name: (routeData) {
      return _i19.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i12.PastoralPointsPage());
    },
    DisciplinaryPointsRoute.name: (routeData) {
      return _i19.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i13.DisciplinaryPointsPage());
    },
    VisionTabRoute.name: (routeData) {
      return _i19.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i14.VisionTabPage());
    },
    PillarTabRoute.name: (routeData) {
      return _i19.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i15.PillarTabPage());
    },
    AnagkazoLiveTabRoute.name: (routeData) {
      return _i19.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i16.AnagkazoLiveTabPage());
    },
    FirstLoveExperienceTabRoute.name: (routeData) {
      return _i19.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i17.FirstLoveExperienceTabPage());
    },
    OtherEventsTabRoute.name: (routeData) {
      return _i19.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i18.OtherEventsTabPage());
    }
  };

  @override
  List<_i19.RouteConfig> get routes => [
        _i19.RouteConfig(LoginRoute.name, path: '/login-page'),
        _i19.RouteConfig(HomeRoute.name, path: '/', meta: <String, dynamic>{
          'title': 'Home'
        }, guards: [
          authGuard
        ], children: [
          _i19.RouteConfig(DashboardRoute.name,
              path: 'dashboard-page',
              parent: HomeRoute.name,
              meta: <String, dynamic>{'title': 'Dashboard'},
              guards: [authGuard]),
          _i19.RouteConfig(AcademicsRoute.name,
              path: 'academics-page',
              parent: HomeRoute.name,
              meta: <String, dynamic>{'title': 'Academics'},
              guards: [authGuard]),
          _i19.RouteConfig(DocumentsRoute.name,
              path: 'documents-page',
              parent: HomeRoute.name,
              meta: <String, dynamic>{'title': 'Documents'},
              guards: [authGuard]),
          _i19.RouteConfig(AttendanceRoute.name,
              path: 'attendance-page',
              parent: HomeRoute.name,
              meta: <String, dynamic>{
                'title': 'Attendance'
              },
              guards: [
                authGuard
              ],
              children: [
                _i19.RouteConfig(VisionTabRoute.name,
                    path: 'vision-tab-page',
                    parent: AttendanceRoute.name,
                    meta: <String, dynamic>{'title': 'Vision Lecture'}),
                _i19.RouteConfig(PillarTabRoute.name,
                    path: 'pillar-tab-page',
                    parent: AttendanceRoute.name,
                    meta: <String, dynamic>{'title': 'Pillar Lecture'}),
                _i19.RouteConfig(AnagkazoLiveTabRoute.name,
                    path: 'anagkazo-live-tab-page',
                    parent: AttendanceRoute.name,
                    meta: <String, dynamic>{'title': 'Anagkazo Live'}),
                _i19.RouteConfig(FirstLoveExperienceTabRoute.name,
                    path: 'first-love-experience-tab-page',
                    parent: AttendanceRoute.name,
                    meta: <String, dynamic>{'title': 'First Love Experience'}),
                _i19.RouteConfig(OtherEventsTabRoute.name,
                    path: 'other-events-tab-page',
                    parent: AttendanceRoute.name,
                    meta: <String, dynamic>{'title': 'Other Events'})
              ]),
          _i19.RouteConfig(FormsRoute.name,
              path: 'forms-page',
              parent: HomeRoute.name,
              meta: <String, dynamic>{'title': 'Forms'},
              guards: [authGuard]),
          _i19.RouteConfig(MyFellowshipRoute.name,
              path: 'my-fellowship-page',
              parent: HomeRoute.name,
              meta: <String, dynamic>{'title': 'My Fellowship'},
              guards: [authGuard]),
          _i19.RouteConfig(PastoralPointsRoute.name,
              path: 'pastoral-points-page',
              parent: HomeRoute.name,
              meta: <String, dynamic>{'title': 'Pastoral Points'},
              guards: [authGuard]),
          _i19.RouteConfig(DisciplinaryPointsRoute.name,
              path: 'disciplinary-points-page',
              parent: HomeRoute.name,
              meta: <String, dynamic>{'title': 'Disciplinary Points'},
              guards: [authGuard])
        ]),
        _i19.RouteConfig(ScanRoute.name,
            path: '/scan-page', guards: [authGuard]),
        _i19.RouteConfig(ScanConfirmationRoute.name,
            path: '/scan-confirmation-page', guards: [authGuard]),
        _i19.RouteConfig(ProfileRoute.name,
            path: '/profile-page', guards: [authGuard])
      ];
}

/// generated route for
/// [_i1.LoginPage]
class LoginRoute extends _i19.PageRouteInfo<LoginRouteArgs> {
  LoginRoute({_i20.Key? key, required void Function(bool) onLogin})
      : super(LoginRoute.name,
            path: '/login-page',
            args: LoginRouteArgs(key: key, onLogin: onLogin));

  static const String name = 'LoginRoute';
}

class LoginRouteArgs {
  const LoginRouteArgs({this.key, required this.onLogin});

  final _i20.Key? key;

  final void Function(bool) onLogin;

  @override
  String toString() {
    return 'LoginRouteArgs{key: $key, onLogin: $onLogin}';
  }
}

/// generated route for
/// [_i2.HomePage]
class HomeRoute extends _i19.PageRouteInfo<void> {
  const HomeRoute({List<_i19.PageRouteInfo>? children})
      : super(HomeRoute.name, path: '/', initialChildren: children);

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i3.ScanPage]
class ScanRoute extends _i19.PageRouteInfo<void> {
  const ScanRoute() : super(ScanRoute.name, path: '/scan-page');

  static const String name = 'ScanRoute';
}

/// generated route for
/// [_i4.ScanConfirmationPage]
class ScanConfirmationRoute
    extends _i19.PageRouteInfo<ScanConfirmationRouteArgs> {
  ScanConfirmationRoute({_i20.Key? key, required Map<String, dynamic> details})
      : super(ScanConfirmationRoute.name,
            path: '/scan-confirmation-page',
            args: ScanConfirmationRouteArgs(key: key, details: details));

  static const String name = 'ScanConfirmationRoute';
}

class ScanConfirmationRouteArgs {
  const ScanConfirmationRouteArgs({this.key, required this.details});

  final _i20.Key? key;

  final Map<String, dynamic> details;

  @override
  String toString() {
    return 'ScanConfirmationRouteArgs{key: $key, details: $details}';
  }
}

/// generated route for
/// [_i5.ProfilePage]
class ProfileRoute extends _i19.PageRouteInfo<void> {
  const ProfileRoute() : super(ProfileRoute.name, path: '/profile-page');

  static const String name = 'ProfileRoute';
}

/// generated route for
/// [_i6.DashboardPage]
class DashboardRoute extends _i19.PageRouteInfo<void> {
  const DashboardRoute() : super(DashboardRoute.name, path: 'dashboard-page');

  static const String name = 'DashboardRoute';
}

/// generated route for
/// [_i7.AcademicsPage]
class AcademicsRoute extends _i19.PageRouteInfo<void> {
  const AcademicsRoute() : super(AcademicsRoute.name, path: 'academics-page');

  static const String name = 'AcademicsRoute';
}

/// generated route for
/// [_i8.DocumentsPage]
class DocumentsRoute extends _i19.PageRouteInfo<void> {
  const DocumentsRoute() : super(DocumentsRoute.name, path: 'documents-page');

  static const String name = 'DocumentsRoute';
}

/// generated route for
/// [_i9.AttendancePage]
class AttendanceRoute extends _i19.PageRouteInfo<void> {
  const AttendanceRoute({List<_i19.PageRouteInfo>? children})
      : super(AttendanceRoute.name,
            path: 'attendance-page', initialChildren: children);

  static const String name = 'AttendanceRoute';
}

/// generated route for
/// [_i10.FormsPage]
class FormsRoute extends _i19.PageRouteInfo<void> {
  const FormsRoute() : super(FormsRoute.name, path: 'forms-page');

  static const String name = 'FormsRoute';
}

/// generated route for
/// [_i11.MyFellowshipPage]
class MyFellowshipRoute extends _i19.PageRouteInfo<MyFellowshipRouteArgs> {
  MyFellowshipRoute({_i20.Key? key})
      : super(MyFellowshipRoute.name,
            path: 'my-fellowship-page', args: MyFellowshipRouteArgs(key: key));

  static const String name = 'MyFellowshipRoute';
}

class MyFellowshipRouteArgs {
  const MyFellowshipRouteArgs({this.key});

  final _i20.Key? key;

  @override
  String toString() {
    return 'MyFellowshipRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i12.PastoralPointsPage]
class PastoralPointsRoute extends _i19.PageRouteInfo<void> {
  const PastoralPointsRoute()
      : super(PastoralPointsRoute.name, path: 'pastoral-points-page');

  static const String name = 'PastoralPointsRoute';
}

/// generated route for
/// [_i13.DisciplinaryPointsPage]
class DisciplinaryPointsRoute extends _i19.PageRouteInfo<void> {
  const DisciplinaryPointsRoute()
      : super(DisciplinaryPointsRoute.name, path: 'disciplinary-points-page');

  static const String name = 'DisciplinaryPointsRoute';
}

/// generated route for
/// [_i14.VisionTabPage]
class VisionTabRoute extends _i19.PageRouteInfo<void> {
  const VisionTabRoute() : super(VisionTabRoute.name, path: 'vision-tab-page');

  static const String name = 'VisionTabRoute';
}

/// generated route for
/// [_i15.PillarTabPage]
class PillarTabRoute extends _i19.PageRouteInfo<void> {
  const PillarTabRoute() : super(PillarTabRoute.name, path: 'pillar-tab-page');

  static const String name = 'PillarTabRoute';
}

/// generated route for
/// [_i16.AnagkazoLiveTabPage]
class AnagkazoLiveTabRoute extends _i19.PageRouteInfo<void> {
  const AnagkazoLiveTabRoute()
      : super(AnagkazoLiveTabRoute.name, path: 'anagkazo-live-tab-page');

  static const String name = 'AnagkazoLiveTabRoute';
}

/// generated route for
/// [_i17.FirstLoveExperienceTabPage]
class FirstLoveExperienceTabRoute extends _i19.PageRouteInfo<void> {
  const FirstLoveExperienceTabRoute()
      : super(FirstLoveExperienceTabRoute.name,
            path: 'first-love-experience-tab-page');

  static const String name = 'FirstLoveExperienceTabRoute';
}

/// generated route for
/// [_i18.OtherEventsTabPage]
class OtherEventsTabRoute extends _i19.PageRouteInfo<void> {
  const OtherEventsTabRoute()
      : super(OtherEventsTabRoute.name, path: 'other-events-tab-page');

  static const String name = 'OtherEventsTabRoute';
}
