import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:solar_energy_prediction/core/constants/enviroment_values.dart';
import 'package:solar_energy_prediction/networking/http_client_configurer.dart';

class DioClient implements HttpClientConfigurer {
  late Dio dio;

  DioClient({
    Dio? dio,
  }) {
    this.dio = dio ?? Dio();
    configureHttpClient(
      baseUrl: Environment.baseUrl,
      apiKey: Environment.weatherApiKey,
    );
  }

  @override
  configureHttpClient({
    required String baseUrl,
    required String apiKey,
  }) {
    dio.options = BaseOptions(
      baseUrl: baseUrl,
      headers: {
        'accept': 'application/json',
      },
      connectTimeout: const Duration(seconds: 10),
      sendTimeout: const Duration(seconds: 10),
      receiveTimeout: const Duration(seconds: 10),
    );
    dio.interceptors.add(
      LogInterceptor(
        request: true,
        responseBody: true,
        logPrint: (logs) {
          debugPrint(logs.toString());
        },
      ),
    );
    dio.interceptors.add(
      WeatherApiKeyQueryParamInterceptor(weatherApiKey: apiKey),
    );
  }
}

class WeatherApiKeyQueryParamInterceptor extends Interceptor {
  final String weatherApiKey;

  WeatherApiKeyQueryParamInterceptor({required this.weatherApiKey});

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.queryParameters.addAll({
      'appid': weatherApiKey,
      'units': 'metric',
    });
    super.onRequest(options, handler);
  }
}
