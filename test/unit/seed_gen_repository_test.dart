import 'package:qr_refresh/domain/i_seed_gen_facade.dart';

import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:mockito/mockito.dart';
import 'package:qr_refresh/domain/seed.dart';
import 'package:qr_refresh/domain/seed_failure.dart';
import 'package:qr_refresh/injection.dart';

class MockSeedGenRepository extends Mock implements ISeedGenFacade {}

void main() {
  MockSeedGenRepository mockSeedGenRepository;
  setUp(() {
    mockSeedGenRepository = MockSeedGenRepository();
  });

  test("REST should return a valid response when connected to the internet ",
      () {
    // arange
    const Seed seed =
        Seed(value: "3iuoiuhwr9huwrhwu3", timeLeft: Duration(seconds: 15));
// act
    when(mockSeedGenRepository.getNewSeed())
        .thenAnswer((_) async => Future.value(const Right(seed)));

    // assert
    expect(mockSeedGenRepository.getNewSeed(),
        isA<Future<Either<SeedFailure, Seed>>>());
  });
}
