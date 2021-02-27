import 'package:chopper/chopper.dart';
part 'qr_gen_service.chopper.dart';

@ChopperApi()
abstract class QRGenService extends ChopperService {
  @Get(path: '/seed')
  Future<Response> getQRseed();

  static QRGenService create() {
    final client = ChopperClient(
        baseUrl:
            'https://fq741r6kaj.execute-api.us-east-2.amazonaws.com/generate',
        services: [
          _$QRGenService(),
        ],
        converter: const JsonConverter(),
        interceptors: [
          // HeadersInterceptor({'Cache-Control': 'no-cache'}),  // this interceptor is user to set a header to all client request
          HttpLoggingInterceptor(),
          CurlInterceptor() // use to perform request in terminal
        ]);
    return _$QRGenService(client);
  }
}
