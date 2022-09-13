// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter/material.dart' as _i9;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i13;

import '../../domain/auth/auth.facade.dart' as _i3;
import '../../domain/auth/auth.validator.dart' as _i5;
import '../../domain/core/sharedPref.model.dart' as _i14;
import '../../domain/dashboard/dashboard.facade.dart' as _i7;
import '../../domain/myFellowship/myFellowship.facade.dart' as _i11;
import '../../infrastructure/auth/auth.repo.dart' as _i4;
import '../../infrastructure/core/injectable.module.dart' as _i15;
import '../../infrastructure/dashboard/dashboard.repo.dart' as _i8;
import '../../infrastructure/myFellowship/myFellowship.repo.dart' as _i12;
import '../../infrastructure/service/b4a.service.dart' as _i6;
import '../auth/login/login_bloc.dart'
    as _i10; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final formKeyModule = _$FormKeyModule();
  final sharedPreferencesModule = _$SharedPreferencesModule();
  gh.factory<_i3.AuthFacade>(() => _i4.AuthRepo());
  gh.factory<_i5.AuthValidator>(() => _i5.AuthValidator());
  gh.factory<_i6.Back4appService>(() => _i6.Back4appService());
  gh.factory<_i7.DashboardFacade>(() => _i8.DashboardRepo());
  gh.singleton<_i9.GlobalKey<_i9.FormState>>(formKeyModule.formKey);
  gh.factory<_i10.LoginBloc>(() => _i10.LoginBloc(get<_i3.AuthFacade>()));
  gh.factory<_i11.MyFellowshipFacade>(() => _i12.MyFellowshipRepo());
  await gh.factoryAsync<_i13.SharedPreferences>(
      () => sharedPreferencesModule.prefs,
      preResolve: true);
  gh.factory<_i14.SharedPref>(
      () => _i14.SharedPref(get<_i13.SharedPreferences>()));
  return get;
}

class _$FormKeyModule extends _i15.FormKeyModule {}

class _$SharedPreferencesModule extends _i15.SharedPreferencesModule {}
