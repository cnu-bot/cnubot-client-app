import 'dart:async';
import 'package:alice/alice.dart';
import 'package:cnubot_app/app/2_dio/constants_dio.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import '../1_data/3_environment/environment.dart';
import '0_interceptor/logging_interceptor.dart';

class DioHelper {
  Dio? dio;
  Alice? alice;

  DioHelper() {
    alice = Alice(showNotification: false);
    var options = BaseOptions(
        receiveTimeout: ConstantsDio.timeout,
        connectTimeout: ConstantsDio.timeout);

    options.baseUrl = EnvironmentConstants.config ?? 'test';
    dio = Dio(
      options,
    );
    dio!.interceptors.add(LoggingInterceptors());
    dio!.interceptors
        .add(alice!.getDioInterceptor()); //displays logs in notification view
  }
  Future<Map<String, dynamic>> get(String url,
      {dynamic param, dynamic options}) async {
    var response = await dio!.get(
      url,
      queryParameters: param,
      options: options,
    );
    return response.data as Map<String, dynamic>;
  }

  Future<Map<String, dynamic>> post(String url, dynamic body) async {
    var response = await dio!.post(url, data: body);
    return response.data as Map<String, dynamic>;
  }

  Future<Map<String, dynamic>> patch(String url, dynamic body) async {
    var response = await dio!.patch(url, data: body);
    debugPrint('[Response] ${response.data.runtimeType} ${response.data}');
    return response.data as Map<String, dynamic>;
  }

  Future<Map<String, dynamic>> put(String url, dynamic body) async {
    var response = await dio!.put(url, data: body);
    debugPrint('[Response] ${response.data.runtimeType} ${response.data}');
    return response.data as Map<String, dynamic>;
  }

  Future<Map<String, dynamic>> delete(String url, dynamic body) async {
    var response = await dio!.delete(url, data: body);
    debugPrint('[Response] ${response.data.runtimeType} ${response.data}');
    return response.data as Map<String, dynamic>;
  }

  void errorCheck(Map<String, dynamic> result, String err) {
    if (result['code'] != 0) {
      throw err;
    }
  }
}

/// Api Response codes
class DioResponseCode {
  static const int success200 = 200;
  static const int success201 = 201;
  static const int error400 = 400;
  static const int error499 = 499;
  static const int error401 = 201;
  static const int error404 = 201;
  static const int error500 = 500;
  static const int internetUnavailable = 999;
  static const int unknown = 533;
}
