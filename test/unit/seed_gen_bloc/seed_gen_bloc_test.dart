import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_test/bloc_test.dart';

import 'package:mockito/mockito.dart';
import 'package:qr_refresh/application/seed_gen_bloc/seed_gen_bloc.dart';
import 'package:qr_refresh/domain/i_seed_gen_facade.dart';
import 'package:qr_refresh/domain/seed.dart';
import 'package:qr_refresh/domain/seed_failure.dart';
import 'package:qr_refresh/injection.dart';

class MockSeedGenRepository extends Mock implements ISeedGenFacade {}

void main() {
  SeedGenBloc seedGenBloc;
  MockSeedGenRepository seedGenRepository;

  setUp(() {
    seedGenRepository = MockSeedGenRepository();
    seedGenBloc = SeedGenBloc(seedGenRepository);
  });

  const Seed seed =
      Seed(value: "3iuoiuhwr9huwrhwu3", timeLeft: Duration(seconds: 15));

  const SeedFailure failureNoInternet = SeedFailure.noInternetConnection();
  const SeedFailure failureGetSeedFailed = SeedFailure.unableToGetSeed();
  tearDown(() {
    seedGenBloc?.close();
  });

  test("Throws AssertionError when SeedRepository is null", () {
    expect(() => getIt<SeedGenBloc>(), throwsAssertionError);
  });

  test('initial state is correct', () {
    expect(seedGenBloc.state, const SeedGenState.fetchingSeed());
  });

  group('GetSeed Trigered', () {
    blocTest<SeedGenBloc, SeedGenState>(
      'emits [SeedGenState.fetchSuccess] for successful fetch',
      build: () {
        when(seedGenRepository.getNewSeed())
            .thenAnswer((_) => Future.value(const Right(seed)));
        return seedGenBloc;
      },
      act: (bloc) => bloc.add(const SeedGenEvent.getSeed()),
      expect: <SeedGenState>[
        const SeedGenState.fetchingSeed(),
        const SeedGenState.fetchSuccess(seed: seed),
      ],
    );
    blocTest<SeedGenBloc, SeedGenState>(
      'emits [SeedGenState.fetchFailed] for an unsuccessful fetch',
      build: () {
        when(seedGenRepository.getNewSeed())
            .thenAnswer((_) => Future.value(const Left(failureNoInternet)));
        return seedGenBloc;
      },
      act: (bloc) => bloc.add(const SeedGenEvent.getSeed()),
      expect: <SeedGenState>[
        const SeedGenState.fetchingSeed(),
        const SeedGenState.fetchFailed(failure: failureNoInternet),
      ],
    );
    blocTest<SeedGenBloc, SeedGenState>(
      'emits [SeedGenState.fetchFailed] for an unsuccessful fetch',
      build: () {
        when(seedGenRepository.getNewSeed())
            .thenAnswer((_) => Future.value(const Left(failureGetSeedFailed)));
        return seedGenBloc;
      },
      act: (bloc) => bloc.add(const SeedGenEvent.getSeed()),
      expect: <SeedGenState>[
        const SeedGenState.fetchingSeed(),
        const SeedGenState.fetchFailed(failure: failureGetSeedFailed),
      ],
    );
  });
}
