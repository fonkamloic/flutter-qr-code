import 'package:freezed_annotation/freezed_annotation.dart';

part 'seed_failure.freezed.dart';
@immutable
@freezed
abstract class SeedFailure with _$SeedFailure{
  const factory SeedFailure.unableToGetSeed() = UnableToGetSeed;
  const factory SeedFailure.noInternetConnection() = NoInternetConnection;
}