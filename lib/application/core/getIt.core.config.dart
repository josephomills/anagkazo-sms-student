// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter/material.dart' as _i6;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i8;

import '../../domain/auth/auth.facade.dart' as _i3;
import '../../domain/core/sharedPref.model.dart' as _i9;
import '../../infrastructure/auth/auth.repo.dart' as _i4;
import '../../infrastructure/core/injectable.module.dart' as _i10;
import '../../infrastructure/service/b4a.service.dart' as _i5;
import '../auth/login/login_bloc.dart'
    as _i7; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final formKeyModule = _$FormKeyModule();
  final sharedPreferencesModule = _$SharedPreferencesModule();
  gh.lazySingleton<_i3.AuthFacade>(() => _i4.AuthRepo());
  gh.factory<_i5.Back4appService>(() => _i5.Back4appService());
  gh.lazySingleton<_i6.GlobalKey<_i6.FormState>>(() => formKeyModule.formKey);
  gh.factory<_i7.LoginBloc>(() => _i7.LoginBloc(get<_i3.AuthFacade>()));
  await gh.factoryAsync<_i8.SharedPreferences>(
      () => sharedPreferencesModule.prefs,
      preResolve: true);
  gh.factory<_i9.SharedPref>(
      () => _i9.SharedPref(get<_i8.SharedPreferences>()));
  return get;
}

class _$FormKeyModule extends _i10.FormKeyModule {}

class _$SharedPreferencesModule extends _i10.SharedPreferencesModule {}
