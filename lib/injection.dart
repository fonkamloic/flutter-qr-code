

import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'injection.config.dart';

final GetIt getIt = GetIt.instance;

@injectableInit
void configureInjection(String env) async => 
await $initGetIt(getIt, environment: env);

abstract class Env {
  static const development = 'development';
  static const production = 'production';
  static const staging = 'staging';
}