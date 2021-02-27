part of 'seed_gen_bloc.dart';

@freezed
abstract class SeedGenState with _$SeedGenState {
   const factory SeedGenState.fetchingSeed() = _Loading;
  const factory SeedGenState.fetchFailed({@required SeedFailure failure}) =
      _Failure;
  const factory SeedGenState.fetchSuccess({@required Seed seed}) = _SeedState;
}
