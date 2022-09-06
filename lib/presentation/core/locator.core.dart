import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:student/presentation/core/locator.core.config.dart';

final locator = GetIt.instance;

@InjectableInit()
void setupLocator(String env) => $initGetIt(locator, environment: env);
