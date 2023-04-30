import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:student/domain/core/config/injectable.core.config.dart';

final getIt = GetIt.instance;

@InjectableInit()
void initInjectable(String env) => getIt.init(environment: env);
