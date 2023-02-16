// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter/material.dart' as _i12;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../application/attendance/attendance/attendance_bloc.dart' as _i19;
import '../../application/attendance/scan/scan_bloc.dart' as _i21;
import '../../application/auth/login/login_bloc.dart' as _i14;
import '../../application/dashbaord/dashboard_bloc.dart' as _i9;
import '../../application/home/home_bloc.dart' as _i13;
import '../../application/myFellowship/my_fellowship_bloc.dart' as _i20;
import '../../domain/attendance/attendance.facade.dart' as _i3;
import '../../domain/attendance/scan/scan.facade.dart' as _i17;
import '../../domain/auth/auth.facade.dart' as _i5;
import '../../domain/auth/auth.validator.dart' as _i7;
import '../../domain/dashboard/dashboard.facade.dart' as _i10;
import '../../domain/myFellowship/myFellowship.facade.dart' as _i15;
import '../../infrastructure/attendance/attendance.repo.dart' as _i4;
import '../../infrastructure/attendance/scan.repo.dart' as _i18;
import '../../infrastructure/auth/auth.repo.dart' as _i6;
import '../../infrastructure/dashboard/dashboard.repo.dart' as _i11;
import '../../infrastructure/myFellowship/myFellowship.repo.dart' as _i16;
import '../../infrastructure/myFellowship/service/b4a.service.dart' as _i8;
import 'injectable.modules.dart'
    as _i22; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final formKeyModule = _$FormKeyModule();
  gh.factory<_i3.AttendanceFacade>(() => _i4.AttendanceRepo());
  gh.factory<_i5.AuthFacade>(() => _i6.AuthRepo());
  gh.factory<_i7.AuthValidator>(() => _i7.AuthValidator());
  gh.factory<_i8.Back4appService>(() => _i8.Back4appService());
  gh.lazySingleton<_i9.DashboardBloc>(() => _i9.DashboardBloc());
  gh.factory<_i10.DashboardFacade>(() => _i11.DashboardRepo());
  gh.factory<_i12.GlobalKey<_i12.FormState>>(() => formKeyModule.formKey);
  gh.lazySingleton<_i13.HomeBloc>(() => _i13.HomeBloc());
  gh.lazySingleton<_i14.LoginBloc>(() => _i14.LoginBloc(get<_i5.AuthFacade>()));
  gh.factory<_i15.MyFellowshipFacade>(() => _i16.MyFellowshipRepo());
  gh.factory<_i17.ScanFacade>(() => _i18.ScanRepo());
  gh.lazySingleton<_i19.AttendanceBloc>(
      () => _i19.AttendanceBloc(get<_i3.AttendanceFacade>()));
  gh.lazySingleton<_i20.MyFellowshipBloc>(
      () => _i20.MyFellowshipBloc(get<_i15.MyFellowshipFacade>()));
  gh.lazySingleton<_i21.ScanBloc>(() => _i21.ScanBloc(get<_i17.ScanFacade>()));
  return get;
}

class _$FormKeyModule extends _i22.FormKeyModule {}
