import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:openalbion_weaponry/app/core/based/based_response.dart';
import 'package:openalbion_weaponry/network/api_constants.dart';

class ErrorMapper {
  static mapDioToResponseError<T>(DioException dioError) {
    debugPrint("dio: ${dioError.type}");
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        {
          return ResponseError<T>(
              code: ApiConstants.STATUS_CODE_CONNECT_TIMEOUT,
              message: "Connect Timeout");
        }

      case DioExceptionType.receiveTimeout:
        {
          return ResponseError<T>(
              code: ApiConstants.STATUS_CODE_RECEIVE_TIMEOUT,
              message: "Response Timeout");
        }

      case DioExceptionType.badResponse:
        return ResponseError<T>(
            code: dioError.response!.statusCode.toString(),
            message:
                takeMessageFromDioResponseJson(dioError.response.toString()));

      case DioExceptionType.connectionError:
        return ResponseError<T>(code: "-", message: "Unable to connect server");

      case DioExceptionType.unknown:
        if (dioError.error is SocketException) {
          return ResponseError<T>(
              code: ApiConstants.STATUS_CODE_RECEIVE_TIMEOUT,
              message: "Unable to connect local server.");
        }

      default:
        {
          var message = dioError.error ?? "unknown error ";
          return ResponseError<T>(code: "-", message: message.toString());
        }
    }
  }

  static String takeMessageFromDioResponseJson(String message) {
    try {
      final messageJson = json.decode(message);
      return messageJson['message'].toString();
    } on FormatException {
      return message;
    }
  }

  static BasedResponse<T> mappedToServerError<T>(String? message) {
    if (message == "Invalid Token") {
      return ResponseAuthExpired();
    }
    return ResponseError<T>(code: "-", message: message);
  }
}
