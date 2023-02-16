import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:student/core/config/injectable.core.config.dart';

final getIt = GetIt.instance;

@InjectableInit()
void initInjectable(String env) => $initGetIt(getIt, environment: env);
