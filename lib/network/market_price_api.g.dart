// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'market_price_api.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers

class _MarketPriceApi implements MarketPriceApi {
  _MarketPriceApi(
    this._dio, {
    this.baseUrl,
  }) {
    baseUrl ??= 'https://api.openalbion.com/api/weaponryV2';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<List<MarketPriceVO>> getMarketPrice({
    required String key,
    required String locations,
    required String region,
    required String itemId,
    required String quality,
  }) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{r'X-WEAPONRY-KEY': key};
    _headers.removeWhere((k, v) => v == null);
    final Map<String, dynamic>? _data = null;
    final _result = await _dio
        .fetch<List<dynamic>>(_setStreamType<List<MarketPriceVO>>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/aod/${region}/item/${itemId}/price?locations=${locations}&qualities=${quality}',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    var value = _result.data!
        .map((dynamic i) => MarketPriceVO.fromJson(i as Map<String, dynamic>))
        .toList();
    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }
}
