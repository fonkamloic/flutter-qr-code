// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:data_connection_checker/data_connection_checker.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i5;

import 'application/seed_gen_bloc/seed_gen_bloc.dart' as _i9;
import 'core/injectable_modules.dart' as _i10;
import 'core/my_cache.dart' as _i8;
import 'domain/i_seed_gen_facade.dart' as _i6;
import 'infrastructure/send_gen_repository.dart' as _i7;
import 'repository/qr_gen_service.dart'
    as _i4; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String environment, _i2.EnvironmentFilter environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final myInjectableModule = _$MyInjectableModule();
  gh.lazySingleton<_i3.DataConnectionChecker>(
      () => myInjectableModule.connectionChecker);
  gh.lazySingleton<_i4.QRGenService>(() => myInjectableModule.qrGenService);
  await gh.factoryAsync<_i5.SharedPreferences>(
      () => myInjectableModule.sharedPreference,
      preResolve: true);
  gh.lazySingleton<_i6.ISeedGenFacade>(() => _i7.SeedGenRepository(
      get<_i4.QRGenService>(), get<_i3.DataConnectionChecker>()));
  gh.lazySingleton<_i8.Persistence>(
      () => _i8.Persistence(get<_i5.SharedPreferences>()));
  gh.factory<_i9.SeedGenBloc>(() => _i9.SeedGenBloc(get<_i6.ISeedGenFacade>()));
  return get;
}

class _$MyInjectableModule extends _i10.MyInjectableModule {}
