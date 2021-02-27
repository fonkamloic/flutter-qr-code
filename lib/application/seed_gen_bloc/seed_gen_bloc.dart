import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:qr_refresh/domain/i_seed_gen_facade.dart';
import 'package:qr_refresh/domain/seed.dart';
import 'package:qr_refresh/domain/seed_failure.dart';

part 'seed_gen_event.dart';
part 'seed_gen_state.dart';
part 'seed_gen_bloc.freezed.dart';

@injectable
class SeedGenBloc extends Bloc<SeedGenEvent, SeedGenState> {
  final ISeedGenFacade iSeedGenFacade;
  SeedGenBloc(this.iSeedGenFacade) : super(const SeedGenState.fetchingSeed());

  @override
  Stream<SeedGenState> mapEventToState(
    SeedGenEvent event,
  ) async* {
    yield* event.map(getSeed: (e) async* {
      yield const SeedGenState.fetchingSeed();
      final Either<SeedFailure, Seed> failureOrSeed =
          await iSeedGenFacade.getNewSeed();

      yield failureOrSeed.fold(
        (failure) => SeedGenState.fetchFailed(failure: failure),
        (seed) => SeedGenState.fetchSuccess(seed: seed),
      );
    });
  }
}
