// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'open_albion_api.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers

class _OpenAlbionApi implements OpenAlbionApi {
  _OpenAlbionApi(
    this._dio, {
    this.baseUrl,
  }) {
    baseUrl ??= 'https://api.openalbion.com/api/weaponry';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<ResponseCategoryList> getCategoryList({
    required String appCheckToken,
    required String apiToken,
  }) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{r'X-Firebase-AppCheck': appCheckToken};
    _headers.removeWhere((k, v) => v == null);
    final Map<String, dynamic>? _data = null;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ResponseCategoryList>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/categories?api_token=${apiToken}',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = ResponseCategoryList.fromJson(_result.data!);
    return value;
  }

  @override
  Future<ResponseItemList> getItemListBySubCategoryId({
    required String appCheckToken,
    required String apiToken,
    required String path,
    required int subId,
  }) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{r'X-Firebase-AppCheck': appCheckToken};
    _headers.removeWhere((k, v) => v == null);
    final Map<String, dynamic>? _data = null;
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<ResponseItemList>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/${path}?subcategory_id=${subId}&api_token=${apiToken}',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = ResponseItemList.fromJson(_result.data!);
    return value;
  }

  @override
  Future<ResponseEnchantmentList> getItemDetailById({
    required String appCheckToken,
    required String apiToken,
    required String itemType,
    required String itemType2,
    required int itemId,
  }) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{r'X-Firebase-AppCheck': appCheckToken};
    _headers.removeWhere((k, v) => v == null);
    final Map<String, dynamic>? _data = null;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ResponseEnchantmentList>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/${itemType}-stats/${itemType2}/${itemId}?api_token=${apiToken}',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = ResponseEnchantmentList.fromJson(_result.data!);
    return value;
  }

  @override
  Future<ResponseSlotList> getSpellDetailById({
    required String appCheckToken,
    required String apiToken,
    required String itemType,
    required int itemId,
  }) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{r'X-Firebase-AppCheck': appCheckToken};
    _headers.removeWhere((k, v) => v == null);
    final Map<String, dynamic>? _data = null;
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<ResponseSlotList>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/spells/${itemType}/${itemId}?api_token=${apiToken}',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = ResponseSlotList.fromJson(_result.data!);
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
