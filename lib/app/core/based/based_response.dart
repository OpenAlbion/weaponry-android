// ignore_for_file: overridden_fields, annotate_overrides

sealed class BasedResponse<T> {
  T? data;
  String? message;
  String? code;
}

class ResponseSuccess<T> extends BasedResponse<T> {
  final T? data;

  ResponseSuccess({required this.data}) {
    data = super.data;
  }
}

class ResponseAuthExpired<T> extends BasedResponse<T> {}

class ResponseError<T> extends BasedResponse<T> {
  final String? message;
  final String? code;

  ResponseError({required this.message, required this.code}) {
    message = this.message;
    code = this.code;
  }
}
