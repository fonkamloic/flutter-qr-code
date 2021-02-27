import 'package:chopper/chopper.dart';
import 'package:dartz/dartz.dart';
import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:qr_refresh/domain/i_seed_gen_facade.dart';
import 'package:qr_refresh/domain/seed.dart';
import 'package:qr_refresh/domain/seed_failure.dart';
import 'package:qr_refresh/infrastructure/seed_dtos.dart';
import 'package:qr_refresh/repository/qr_gen_service.dart';

class SeedGenRepository implements ISeedGenFacade {
  final QRGenService qrGen;
  final DataConnectionChecker checker;

  SeedGenRepository(this.qrGen, this.checker);

  @override
  Future<Either<SeedFailure, Seed>> getNewSeed() async {
    if (await checker.hasConnection) {
      final Response response = await qrGen.getQRseed();
      if (response.isSuccessful && response.statusCode == 200) {
        final Seed seed = SeedDto.fromResponse(response).toDomain();
        return right(seed);
      }
      return left(const SeedFailure.unableToGetSeed());
    } else {
      return left(const SeedFailure.noInternetConnection());
    }
  }
}
