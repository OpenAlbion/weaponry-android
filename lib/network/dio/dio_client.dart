
import 'package:dio/dio.dart';
import 'package:openalbion_weaponry/network/open_albion_api.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioClient {
  late Dio dio;
  late OpenAlbionApi mApi;
  static final DioClient _singleton = DioClient.internal();

  factory DioClient() {
    return _singleton;
  }

  DioClient.internal() {
    dio = Dio();
    dio.options.connectTimeout = Duration(seconds: 10);
    dio.interceptors.add(PrettyDioLogger());
  }

  // OpenAlbionApi dataProjectApi(){
  //       dio.options.headers = {
  //     "Content-Type": Headers.jsonContentType,
  //     "Accept": Headers.jsonContentType,
  //   };

  //   mApi = OpenAlbionApi(dio);

  //   return mApi;
  // }

  //   OpenAlbionApi toolApi(){
  //       dio.options.headers = {
  //     "Content-Type": Headers.jsonContentType,
  //     "Accept": Headers.jsonContentType,
  //   };

  //   mApi = OpenAlbionApi(dio, baseUrl: OpenAlbionApi.ALBION_TOOL_URL);

  //   return mApi;
  // }
}
