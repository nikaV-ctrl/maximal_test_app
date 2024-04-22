import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:max_app/app/domain/app_config.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioClient {
  late final Dio request;
  DioClient(AppConfig appConfig) {
    String baseUrl = appConfig.baseUrl;
    final options = BaseOptions(
      baseUrl: baseUrl,
      connectTimeout: const Duration(seconds: 30),
      contentType: 'application/json',
    );
    request = Dio(options);
    if (kDebugMode) {
      addInterceptor(
        PrettyDioLogger(
          compact: false,
          requestHeader: true,
          requestBody: true,
        ),
      );
    }
  }

  void addInterceptor(Interceptor interceptor) {
    if (request.interceptors.contains(interceptor)) {
      request.interceptors.remove(interceptor);
    }
    deleteInterceptor(interceptor.runtimeType);

    request.interceptors.add(interceptor);
  }

  void deleteInterceptor(Type type) {
    request.interceptors.removeWhere((element) => element.runtimeType == type);
  }
}
