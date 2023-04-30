// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i23;
import 'package:flutter/material.dart' as _i24;
import 'package:student/infrastructure/academics/models/rotation.object.dart'
    as _i25;
import 'package:student/presentation/pages/academics/academics.page.dart'
    as _i1;
import 'package:student/presentation/pages/academics/rotation.page.dart'
    as _i21;
import 'package:student/presentation/pages/academics/tabs/other_points.tab.dart'
    as _i19;
import 'package:student/presentation/pages/academics/tabs/rotations.tab.dart'
    as _i20;
import 'package:student/presentation/pages/accommodation/accommodation.page.dart'
    as _i2;
import 'package:student/presentation/pages/attendance/attendance.page.dart'
    as _i3;
import 'package:student/presentation/pages/attendance/scan.page.dart' as _i4;
import 'package:student/presentation/pages/attendance/tabs/church.tab.dart'
    as _i5;
import 'package:student/presentation/pages/attendance/tabs/lecture.tab.dart'
    as _i6;
import 'package:student/presentation/pages/attendance/tabs/other.tab.dart'
    as _i7;
import 'package:student/presentation/pages/auth/login.page.dart' as _i8;
import 'package:student/presentation/pages/discipline/discipline.page.dart'
    as _i9;
import 'package:student/presentation/pages/documents/documents.page.dart'
    as _i10;
import 'package:student/presentation/pages/forms/forms.page.dart' as _i11;
import 'package:student/presentation/pages/home/home.page.dart' as _i12;
import 'package:student/presentation/pages/index.page.dart' as _i13;
import 'package:student/presentation/pages/ministry/ministry.page.dart' as _i14;
import 'package:student/presentation/pages/more/more.page.dart' as _i15;
import 'package:student/presentation/pages/my_fellowship/my_fellowship.page.dart'
    as _i16;
import 'package:student/presentation/pages/pastoral_points/pastoral_points.page.dart'
    as _i17;
import 'package:student/presentation/pages/profile/profile.page.dart' as _i22;
import 'package:student/presentation/pages/settings/settings.page.dart' as _i18;

abstract class $AppRouter extends _i23.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i23.PageFactory> pagesMap = {
    AcademicsRoute.name: (routeData) {
      return _i23.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.AcademicsPage(),
      );
    },
    AccommodationRoute.name: (routeData) {
      return _i23.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.AccommodationPage(),
      );
    },
    AttendanceRoute.name: (routeData) {
      return _i23.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i23.WrappedRoute(child: const _i3.AttendancePage()),
      );
    },
    ScanRoute.name: (routeData) {
      return _i23.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i23.WrappedRoute(child: const _i4.ScanPage()),
      );
    },
    ChurchTabRoute.name: (routeData) {
      return _i23.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.ChurchTabPage(),
      );
    },
    LectureTabRoute.name: (routeData) {
      return _i23.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.LectureTabPage(),
      );
    },
    OtherTabRoute.name: (routeData) {
      return _i23.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.OtherTabPage(),
      );
    },
    LoginRoute.name: (routeData) {
      final args = routeData.argsAs<LoginRouteArgs>(
          orElse: () => const LoginRouteArgs());
      return _i23.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i23.WrappedRoute(child: _i8.LoginPage(key: args.key)),
      );
    },
    DisciplineRoute.name: (routeData) {
      return _i23.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.DisciplinePage(),
      );
    },
    DocumentsRoute.name: (routeData) {
      return _i23.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i10.DocumentsPage(),
      );
    },
    FormsRoute.name: (routeData) {
      return _i23.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i11.FormsPage(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i23.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i12.HomePage(),
      );
    },
    IndexRoute.name: (routeData) {
      return _i23.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i13.IndexPage(),
      );
    },
    MinistryRoute.name: (routeData) {
      return _i23.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i14.MinistryPage(),
      );
    },
    MoreRoute.name: (routeData) {
      return _i23.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i15.MorePage(),
      );
    },
    MyFellowshipRoute.name: (routeData) {
      final args = routeData.argsAs<MyFellowshipRouteArgs>(
          orElse: () => const MyFellowshipRouteArgs());
      return _i23.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i23.WrappedRoute(child: _i16.MyFellowshipPage(key: args.key)),
      );
    },
    PastoralPointsRoute.name: (routeData) {
      return _i23.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i17.PastoralPointsPage(),
      );
    },
    SettingsRoute.name: (routeData) {
      return _i23.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i18.SettingsPage(),
      );
    },
    OtherPointsTabRoute.name: (routeData) {
      return _i23.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i19.OtherPointsTabPage(),
      );
    },
    RotationsTabRoute.name: (routeData) {
      return _i23.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i20.RotationsTabPage(),
      );
    },
    RotationRoute.name: (routeData) {
      final args = routeData.argsAs<RotationRouteArgs>();
      return _i23.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i21.RotationPage(
          key: args.key,
          rotation: args.rotation,
        ),
      );
    },
    ProfileRoute.name: (routeData) {
      final args = routeData.argsAs<ProfileRouteArgs>(
          orElse: () => const ProfileRouteArgs());
      return _i23.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i23.WrappedRoute(child: _i22.ProfilePage(key: args.key)),
      );
    },
  };
}

/// generated route for
/// [_i1.AcademicsPage]
class AcademicsRoute extends _i23.PageRouteInfo<void> {
  const AcademicsRoute({List<_i23.PageRouteInfo>? children})
      : super(
          AcademicsRoute.name,
          initialChildren: children,
        );

  static const String name = 'AcademicsRoute';

  static const _i23.PageInfo<void> page = _i23.PageInfo<void>(name);
}

/// generated route for
/// [_i2.AccommodationPage]
class AccommodationRoute extends _i23.PageRouteInfo<void> {
  const AccommodationRoute({List<_i23.PageRouteInfo>? children})
      : super(
          AccommodationRoute.name,
          initialChildren: children,
        );

  static const String name = 'AccommodationRoute';

  static const _i23.PageInfo<void> page = _i23.PageInfo<void>(name);
}

/// generated route for
/// [_i3.AttendancePage]
class AttendanceRoute extends _i23.PageRouteInfo<void> {
  const AttendanceRoute({List<_i23.PageRouteInfo>? children})
      : super(
          AttendanceRoute.name,
          initialChildren: children,
        );

  static const String name = 'AttendanceRoute';

  static const _i23.PageInfo<void> page = _i23.PageInfo<void>(name);
}

/// generated route for
/// [_i4.ScanPage]
class ScanRoute extends _i23.PageRouteInfo<void> {
  const ScanRoute({List<_i23.PageRouteInfo>? children})
      : super(
          ScanRoute.name,
          initialChildren: children,
        );

  static const String name = 'ScanRoute';

  static const _i23.PageInfo<void> page = _i23.PageInfo<void>(name);
}

/// generated route for
/// [_i5.ChurchTabPage]
class ChurchTabRoute extends _i23.PageRouteInfo<void> {
  const ChurchTabRoute({List<_i23.PageRouteInfo>? children})
      : super(
          ChurchTabRoute.name,
          initialChildren: children,
        );

  static const String name = 'ChurchTabRoute';

  static const _i23.PageInfo<void> page = _i23.PageInfo<void>(name);
}

/// generated route for
/// [_i6.LectureTabPage]
class LectureTabRoute extends _i23.PageRouteInfo<void> {
  const LectureTabRoute({List<_i23.PageRouteInfo>? children})
      : super(
          LectureTabRoute.name,
          initialChildren: children,
        );

  static const String name = 'LectureTabRoute';

  static const _i23.PageInfo<void> page = _i23.PageInfo<void>(name);
}

/// generated route for
/// [_i7.OtherTabPage]
class OtherTabRoute extends _i23.PageRouteInfo<void> {
  const OtherTabRoute({List<_i23.PageRouteInfo>? children})
      : super(
          OtherTabRoute.name,
          initialChildren: children,
        );

  static const String name = 'OtherTabRoute';

  static const _i23.PageInfo<void> page = _i23.PageInfo<void>(name);
}

/// generated route for
/// [_i8.LoginPage]
class LoginRoute extends _i23.PageRouteInfo<LoginRouteArgs> {
  LoginRoute({
    _i24.Key? key,
    List<_i23.PageRouteInfo>? children,
  }) : super(
          LoginRoute.name,
          args: LoginRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i23.PageInfo<LoginRouteArgs> page =
      _i23.PageInfo<LoginRouteArgs>(name);
}

class LoginRouteArgs {
  const LoginRouteArgs({this.key});

  final _i24.Key? key;

  @override
  String toString() {
    return 'LoginRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i9.DisciplinePage]
class DisciplineRoute extends _i23.PageRouteInfo<void> {
  const DisciplineRoute({List<_i23.PageRouteInfo>? children})
      : super(
          DisciplineRoute.name,
          initialChildren: children,
        );

  static const String name = 'DisciplineRoute';

  static const _i23.PageInfo<void> page = _i23.PageInfo<void>(name);
}

/// generated route for
/// [_i10.DocumentsPage]
class DocumentsRoute extends _i23.PageRouteInfo<void> {
  const DocumentsRoute({List<_i23.PageRouteInfo>? children})
      : super(
          DocumentsRoute.name,
          initialChildren: children,
        );

  static const String name = 'DocumentsRoute';

  static const _i23.PageInfo<void> page = _i23.PageInfo<void>(name);
}

/// generated route for
/// [_i11.FormsPage]
class FormsRoute extends _i23.PageRouteInfo<void> {
  const FormsRoute({List<_i23.PageRouteInfo>? children})
      : super(
          FormsRoute.name,
          initialChildren: children,
        );

  static const String name = 'FormsRoute';

  static const _i23.PageInfo<void> page = _i23.PageInfo<void>(name);
}

/// generated route for
/// [_i12.HomePage]
class HomeRoute extends _i23.PageRouteInfo<void> {
  const HomeRoute({List<_i23.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i23.PageInfo<void> page = _i23.PageInfo<void>(name);
}

/// generated route for
/// [_i13.IndexPage]
class IndexRoute extends _i23.PageRouteInfo<void> {
  const IndexRoute({List<_i23.PageRouteInfo>? children})
      : super(
          IndexRoute.name,
          initialChildren: children,
        );

  static const String name = 'IndexRoute';

  static const _i23.PageInfo<void> page = _i23.PageInfo<void>(name);
}

/// generated route for
/// [_i14.MinistryPage]
class MinistryRoute extends _i23.PageRouteInfo<void> {
  const MinistryRoute({List<_i23.PageRouteInfo>? children})
      : super(
          MinistryRoute.name,
          initialChildren: children,
        );

  static const String name = 'MinistryRoute';

  static const _i23.PageInfo<void> page = _i23.PageInfo<void>(name);
}

/// generated route for
/// [_i15.MorePage]
class MoreRoute extends _i23.PageRouteInfo<void> {
  const MoreRoute({List<_i23.PageRouteInfo>? children})
      : super(
          MoreRoute.name,
          initialChildren: children,
        );

  static const String name = 'MoreRoute';

  static const _i23.PageInfo<void> page = _i23.PageInfo<void>(name);
}

/// generated route for
/// [_i16.MyFellowshipPage]
class MyFellowshipRoute extends _i23.PageRouteInfo<MyFellowshipRouteArgs> {
  MyFellowshipRoute({
    _i24.Key? key,
    List<_i23.PageRouteInfo>? children,
  }) : super(
          MyFellowshipRoute.name,
          args: MyFellowshipRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'MyFellowshipRoute';

  static const _i23.PageInfo<MyFellowshipRouteArgs> page =
      _i23.PageInfo<MyFellowshipRouteArgs>(name);
}

class MyFellowshipRouteArgs {
  const MyFellowshipRouteArgs({this.key});

  final _i24.Key? key;

  @override
  String toString() {
    return 'MyFellowshipRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i17.PastoralPointsPage]
class PastoralPointsRoute extends _i23.PageRouteInfo<void> {
  const PastoralPointsRoute({List<_i23.PageRouteInfo>? children})
      : super(
          PastoralPointsRoute.name,
          initialChildren: children,
        );

  static const String name = 'PastoralPointsRoute';

  static const _i23.PageInfo<void> page = _i23.PageInfo<void>(name);
}

/// generated route for
/// [_i18.SettingsPage]
class SettingsRoute extends _i23.PageRouteInfo<void> {
  const SettingsRoute({List<_i23.PageRouteInfo>? children})
      : super(
          SettingsRoute.name,
          initialChildren: children,
        );

  static const String name = 'SettingsRoute';

  static const _i23.PageInfo<void> page = _i23.PageInfo<void>(name);
}

/// generated route for
/// [_i19.OtherPointsTabPage]
class OtherPointsTabRoute extends _i23.PageRouteInfo<void> {
  const OtherPointsTabRoute({List<_i23.PageRouteInfo>? children})
      : super(
          OtherPointsTabRoute.name,
          initialChildren: children,
        );

  static const String name = 'OtherPointsTabRoute';

  static const _i23.PageInfo<void> page = _i23.PageInfo<void>(name);
}

/// generated route for
/// [_i20.RotationsTabPage]
class RotationsTabRoute extends _i23.PageRouteInfo<void> {
  const RotationsTabRoute({List<_i23.PageRouteInfo>? children})
      : super(
          RotationsTabRoute.name,
          initialChildren: children,
        );

  static const String name = 'RotationsTabRoute';

  static const _i23.PageInfo<void> page = _i23.PageInfo<void>(name);
}

/// generated route for
/// [_i21.RotationPage]
class RotationRoute extends _i23.PageRouteInfo<RotationRouteArgs> {
  RotationRoute({
    _i24.Key? key,
    required _i25.RotationObject rotation,
    List<_i23.PageRouteInfo>? children,
  }) : super(
          RotationRoute.name,
          args: RotationRouteArgs(
            key: key,
            rotation: rotation,
          ),
          initialChildren: children,
        );

  static const String name = 'RotationRoute';

  static const _i23.PageInfo<RotationRouteArgs> page =
      _i23.PageInfo<RotationRouteArgs>(name);
}

class RotationRouteArgs {
  const RotationRouteArgs({
    this.key,
    required this.rotation,
  });

  final _i24.Key? key;

  final _i25.RotationObject rotation;

  @override
  String toString() {
    return 'RotationRouteArgs{key: $key, rotation: $rotation}';
  }
}

/// generated route for
/// [_i22.ProfilePage]
class ProfileRoute extends _i23.PageRouteInfo<ProfileRouteArgs> {
  ProfileRoute({
    _i24.Key? key,
    List<_i23.PageRouteInfo>? children,
  }) : super(
          ProfileRoute.name,
          args: ProfileRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static const _i23.PageInfo<ProfileRouteArgs> page =
      _i23.PageInfo<ProfileRouteArgs>(name);
}

class ProfileRouteArgs {
  const ProfileRouteArgs({this.key});

  final _i24.Key? key;

  @override
  String toString() {
    return 'ProfileRouteArgs{key: $key}';
  }
}
