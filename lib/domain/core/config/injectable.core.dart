import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:student/domain/core/config/injectable.core.config.dart';

final getIt = GetIt.instance;

@InjectableInit()
Future<void> initInjectable(String env) async =>
    await getIt.init(environment: env);
