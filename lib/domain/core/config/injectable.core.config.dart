// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter/material.dart' as _i12;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart' as _i17;
import 'package:student/application/attendance/attendance/attendance_bloc.dart'
    as _i20;
import 'package:student/application/attendance/scan/scan_bloc.dart' as _i22;
import 'package:student/application/auth/login/login_bloc.dart' as _i14;
import 'package:student/application/dashbaord/dashboard_bloc.dart' as _i9;
import 'package:student/application/home/home_bloc.dart' as _i13;
import 'package:student/application/myFellowship/my_fellowship_bloc.dart'
    as _i21;
import 'package:student/domain/attendance/attendance.facade.dart' as _i3;
import 'package:student/domain/attendance/scan/scan.facade.dart' as _i18;
import 'package:student/domain/auth/auth.facade.dart' as _i5;
import 'package:student/domain/auth/auth_validator.dart' as _i7;
import 'package:student/domain/core/config/injectable_modules.dart' as _i23;
import 'package:student/domain/dashboard/dashboard.facade.dart' as _i10;
import 'package:student/domain/myFellowship/myFellowship.facade.dart' as _i15;
import 'package:student/infrastructure/attendance/attendance.repo.dart' as _i4;
import 'package:student/infrastructure/attendance/scan.repo.dart' as _i19;
import 'package:student/infrastructure/auth/auth.repo.dart' as _i6;
import 'package:student/infrastructure/dashboard/dashboard.repo.dart' as _i11;
import 'package:student/infrastructure/myFellowship/myFellowship.repo.dart'
    as _i16;
import 'package:student/infrastructure/myFellowship/service/b4a.service.dart'
    as _i8; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final formKeyModule = _$FormKeyModule();
    final authModule = _$AuthModule();
    gh.factory<_i3.AttendanceFacade>(() => _i4.AttendanceRepo());
    gh.factory<_i5.AuthFacade>(() => _i6.AuthRepo());
    gh.factory<_i7.AuthValidator>(() => _i7.AuthValidator());
    gh.factory<_i8.Back4appService>(() => _i8.Back4appService());
    gh.lazySingleton<_i9.DashboardBloc>(() => _i9.DashboardBloc());
    gh.factory<_i10.DashboardFacade>(() => _i11.DashboardRepo());
    gh.factory<_i12.GlobalKey<_i12.FormState>>(() => formKeyModule.formKey);
    gh.lazySingleton<_i13.HomeBloc>(() => _i13.HomeBloc());
    gh.lazySingleton<_i14.LoginBloc>(
        () => _i14.LoginBloc(gh<_i5.AuthFacade>()));
    gh.factory<_i15.MyFellowshipFacade>(() => _i16.MyFellowshipRepo());
    await gh.singletonAsync<_i17.ParseUser>(
      () => authModule.currentUser(),
      preResolve: true,
    );
    gh.factory<_i18.ScanFacade>(() => _i19.ScanRepo());
    gh.lazySingleton<_i20.AttendanceBloc>(
        () => _i20.AttendanceBloc(gh<_i3.AttendanceFacade>()));
    gh.lazySingleton<_i21.MyFellowshipBloc>(
        () => _i21.MyFellowshipBloc(gh<_i15.MyFellowshipFacade>()));
    gh.lazySingleton<_i22.ScanBloc>(() => _i22.ScanBloc(gh<_i18.ScanFacade>()));
    return this;
  }
}

class _$FormKeyModule extends _i23.FormKeyModule {}

class _$AuthModule extends _i23.AuthModule {}
