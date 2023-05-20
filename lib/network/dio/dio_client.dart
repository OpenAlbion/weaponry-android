import 'package:dio/dio.dart';
import 'package:openalbion_weaponry/network/market_price_api.dart';
import 'package:openalbion_weaponry/network/open_albion_api.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioClient {
  late Dio _dio;
  late OpenAlbionApi _mApi;
  late MarketPriceApi _marketApi;
  static final DioClient _singleton = DioClient.internal();

  factory DioClient() {
    return _singleton;
  }

  DioClient.internal() {
    _dio = Dio();
    _dio.options.connectTimeout = Duration(seconds: 10);
    _dio.interceptors.add(PrettyDioLogger());
  }

  OpenAlbionApi openAlbionApi() {
    _dio.options.headers = {
      "Content-Type": Headers.jsonContentType,
      "Accept": Headers.jsonContentType,
    };

    _mApi = OpenAlbionApi(_dio);
    return _mApi;
  }

  MarketPriceApi marketPriceApi() {
    _dio.options.headers = {
      "Content-Type": Headers.jsonContentType,
      "Accept": Headers.jsonContentType,
    };

    _marketApi = MarketPriceApi(_dio);

    return _marketApi;
  }

  //   OpenAlbionApi toolApi(){
  //       dio.options.headers = {
  //     "Content-Type": Headers.jsonContentType,
  //     "Accept": Headers.jsonContentType,
  //   };

  //   mApi = OpenAlbionApi(dio, baseUrl: OpenAlbionApi.ALBION_TOOL_URL);

  //   return mApi;
  // }
}
