import 'dart:async';
import 'package:alice/alice.dart';
import 'package:cnubot_app/app/1_data/3_environment/environment.dart';
import 'package:cnubot_app/app/2_dio/constant_dio.dart';
import 'package:dio/dio.dart';
import 'package:dio_cache_interceptor/dio_cache_interceptor.dart';
import 'package:flutter/material.dart';

import 'package:cnubot_app/app/2_dio/0_interceptor/logging_interceptor.dart';

class DioHelper {
  Dio? dio;
  Alice? alice;

  DioHelper() {
    alice = Alice(showNotification: false);
    final options = BaseOptions(
      receiveTimeout: ConstantDio.timeout,
      connectTimeout: ConstantDio.timeout,
    );

    options.baseUrl = EnvironmentConstant.config ?? 'test';
    dio = Dio(
      options,
    );
    dio!.interceptors.add(LoggingInterceptors());
    dio!.interceptors.add(alice!.getDioInterceptor());
    dio!.interceptors.add(DioCacheInterceptor(options: dioCacheOptions));
  }
  Future<List<dynamic>> getList(String url,
      {dynamic param, bool? refresh}) async {
    final response = await dio!.get(
      url,
      queryParameters: param,
      options: refresh == true
          ? dioCacheOptions.copyWith(policy: CachePolicy.refresh).toOptions()
          : null,
    );
    return response.data as List<dynamic>;
  }

  Future<Map<String, dynamic>> get(String url,
      {dynamic param, bool? refresh}) async {
    final response = await dio!.get(
      url,
      queryParameters: param,
      options: refresh == true
          ? dioCacheOptions.copyWith(policy: CachePolicy.refresh).toOptions()
          : null,
    );
    return response.data as Map<String, dynamic>;
  }

  Future<Map<String, dynamic>> post(String url, dynamic body) async {
    final response = await dio!.post(url, data: body);
    return response.data as Map<String, dynamic>;
  }

  Future<Map<String, dynamic>> patch(String url, dynamic body) async {
    final response = await dio!.patch(url, data: body);
    debugPrint('[Response] ${response.data.runtimeType} ${response.data}');
    return response.data as Map<String, dynamic>;
  }

  Future<Map<String, dynamic>> put(String url, dynamic body) async {
    final response = await dio!.put(url, data: body);
    debugPrint('[Response] ${response.data.runtimeType} ${response.data}');
    return response.data as Map<String, dynamic>;
  }

  Future<Map<String, dynamic>> delete(String url, dynamic body) async {
    final response = await dio!.delete(url, data: body);
    debugPrint('[Response] ${response.data.runtimeType} ${response.data}');
    return response.data as Map<String, dynamic>;
  }

  void errorCheck(Map<String, dynamic> result, String err) {
    if (result['code'] != 0) {
      throw err;
    }
  }
}

CacheOptions dioCacheOptions = CacheOptions(
  store: MemCacheStore(),
  hitCacheOnErrorExcept: [401, 403],
  maxStale: const Duration(hours: 6),
);
