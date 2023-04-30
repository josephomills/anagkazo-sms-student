// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter/material.dart' as _i13;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:student/application/app/app_bloc.dart' as _i22;
import 'package:student/application/attendance/attendance/attendance_bloc.dart'
    as _i23;
import 'package:student/application/attendance/scan/scan_bloc.dart' as _i26;
import 'package:student/application/auth/auth/auth_bloc.dart' as _i24;
import 'package:student/application/auth/login/login_bloc.dart' as _i15;
import 'package:student/application/dashbaord/dashboard_bloc.dart' as _i10;
import 'package:student/application/home/home_bloc.dart' as _i14;
import 'package:student/application/myFellowship/my_fellowship_bloc.dart'
    as _i25;
import 'package:student/application/settings/settings_bloc.dart' as _i20;
import 'package:student/domain/app/app.facade.dart' as _i3;
import 'package:student/domain/attendance/attendance.facade.dart' as _i5;
import 'package:student/domain/attendance/scan/scan.facade.dart' as _i18;
import 'package:student/domain/auth/auth.facade.dart' as _i7;
import 'package:student/domain/core/config/injectable_modules.dart' as _i27;
import 'package:student/domain/core/util/validator.dart' as _i21;
import 'package:student/domain/dashboard/dashboard.facade.dart' as _i11;
import 'package:student/domain/myFellowship/myFellowship.facade.dart' as _i16;
import 'package:student/infrastructure/app/app.repo.dart' as _i4;
import 'package:student/infrastructure/attendance/attendance.repo.dart' as _i6;
import 'package:student/infrastructure/attendance/scan.repo.dart' as _i19;
import 'package:student/infrastructure/auth/auth.repo.dart' as _i8;
import 'package:student/infrastructure/dashboard/dashboard.repo.dart' as _i12;
import 'package:student/infrastructure/myFellowship/myFellowship.repo.dart'
    as _i17;
import 'package:student/infrastructure/myFellowship/service/b4a.service.dart'
    as _i9;

extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final formModule = _$FormModule();
    gh.factory<_i3.AppFacade>(() => _i4.AppRepo());
    gh.factory<_i5.AttendanceFacade>(() => _i6.AttendanceRepo());
    gh.factory<_i7.AuthFacade>(() => _i8.AuthRepo());
    gh.factory<_i9.Back4appService>(() => _i9.Back4appService());
    gh.factory<_i10.DashboardBloc>(() => _i10.DashboardBloc());
    gh.factory<_i11.DashboardFacade>(() => _i12.DashboardRepo());
    gh.factory<_i13.GlobalKey<_i13.FormState>>(() => formModule.formKey);
    gh.factory<_i14.HomeBloc>(() => _i14.HomeBloc());
    gh.factory<_i15.LoginBloc>(() => _i15.LoginBloc(gh<_i7.AuthFacade>()));
    gh.factory<_i16.MyFellowshipFacade>(() => _i17.MyFellowshipRepo());
    gh.factory<_i18.ScanFacade>(() => _i19.ScanRepo());
    gh.singleton<_i20.SettingsBloc>(_i20.SettingsBloc());
    gh.factory<_i21.Validator>(() => _i21.Validator());
    gh.singleton<_i22.AppBloc>(_i22.AppBloc(gh<_i3.AppFacade>()));
    gh.factory<_i23.AttendanceBloc>(
        () => _i23.AttendanceBloc(gh<_i5.AttendanceFacade>()));
    gh.singleton<_i24.AuthBloc>(_i24.AuthBloc(gh<_i7.AuthFacade>()));
    gh.factory<_i25.MyFellowshipBloc>(
        () => _i25.MyFellowshipBloc(gh<_i16.MyFellowshipFacade>()));
    gh.factory<_i26.ScanBloc>(() => _i26.ScanBloc(gh<_i18.ScanFacade>()));
    return this;
  }
}

class _$FormModule extends _i27.FormModule {}
