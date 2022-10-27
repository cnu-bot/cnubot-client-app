// ignore_for_file: unnecessary_null_comparison

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

/// Interceptor class for logging request/response from api
class LoggingInterceptors extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    debugPrint(
        "--> ${options.method != null ? options.method.toUpperCase() : 'METHOD'} ${"${options.baseUrl}${options.path}"}");
    debugPrint('Headers:');
    options.headers.forEach((k, v) => debugPrint('$k: $v'));
    debugPrint('queryParameters:');
    options.queryParameters.forEach((k, v) => debugPrint('$k: $v'));
    if (options.data != null) {
      debugPrint('Body: ${options.data}');
    }
    debugPrint(
        "--> END ${options.method != null ? options.method.toUpperCase() : 'METHOD'}");
    return super.onRequest(options, handler);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    debugPrint('eeerorororor ${err.response}');
    debugPrint(
        "<-- ${err.message} ${(err.response?.requestOptions != null ? (err.response!.requestOptions.baseUrl + err.requestOptions.path) : 'URL')}");
    debugPrint(
        "${err.response != null ? err.response?.data : 'Unknown Error'}");
    debugPrint('<-- End error');
    debugPrint(
        'ERROR[${err.response?.statusCode}] => PATH: ${err.requestOptions.baseUrl}');
    return super.onError(err, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    debugPrint(
        "<-- ${response.statusCode} ${(response.requestOptions != null ? (response.requestOptions.baseUrl + response.requestOptions.path) : 'URL')}");
    debugPrint('Headers:');
    response.headers.forEach((k, v) => debugPrint('$k: $v'));
    debugPrint('Response: ${response.data}');
    debugPrint('<-- END HTTP');
    return super.onResponse(response, handler);
  }
}
