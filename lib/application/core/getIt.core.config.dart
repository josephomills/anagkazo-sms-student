// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i7;

import '../../domain/auth/auth.facade.dart' as _i3;
import '../../domain/core/sharedPref.model.dart' as _i8;
import '../../infrastructure/auth/auth.repo.dart' as _i4;
import '../../infrastructure/core/sharedPrefs.module.dart' as _i9;
import '../../infrastructure/service/b4a.service.dart' as _i5;
import '../auth/login/login_bloc.dart'
    as _i6; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final sharedPreferencesModule = _$SharedPreferencesModule();
  gh.lazySingleton<_i3.AuthFacade>(() => _i4.AuthRepo());
  gh.factory<_i5.Back4appService>(() => _i5.Back4appService());
  gh.factory<_i6.LoginBloc>(() => _i6.LoginBloc(get<_i3.AuthFacade>()));
  await gh.factoryAsync<_i7.SharedPreferences>(
      () => sharedPreferencesModule.prefs,
      preResolve: true);
  gh.factory<_i8.SharedPref>(
      () => _i8.SharedPref(get<_i7.SharedPreferences>()));
  return get;
}

class _$SharedPreferencesModule extends _i9.SharedPreferencesModule {}
