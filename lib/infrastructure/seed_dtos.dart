import 'package:chopper/chopper.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:qr_refresh/domain/seed.dart';
part 'seed_dtos.freezed.dart';

@immutable
@freezed
abstract class SeedDto implements _$SeedDto {
  const SeedDto._();

  factory SeedDto({
    @required String value,
    @required DateTime expires_at,
  }) = _SeedDto;

  Seed toDomain() {
    return Seed(
        value: value,
        timeLeft:
            Duration(seconds: expires_at.difference(DateTime.now()).inSeconds));
  }

  factory SeedDto.fromResponse(Response response) => SeedDto(
      value: response.body['seed'] as String,
      expires_at: DateTime.fromMillisecondsSinceEpoch(
          response.body['expires_at'] as int));
}
