import 'package:injectable/injectable.dart';
import 'package:max_app/app/data/dio/dio_client.dart';
import 'package:max_app/app/domain/app_api.dart';
import 'package:max_app/app/domain/app_config.dart';

@Singleton(as: AppApi)
class DioAppApi extends AppApi {
  late final DioClient dioClient;

  DioAppApi(AppConfig appConfig) {
    dioClient = DioClient(appConfig);
  }

  @override
  Future get<T>(String url,
      {Map<String, dynamic>? headers,
      Map<String, dynamic>? queryParameters,
      Map<String, dynamic>? body}) {
    try {
      return dioClient.request.get(
        url,
        queryParameters: queryParameters,
        data: body,
      );
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future post<T>(
    String url, {
    Map<String, dynamic>? headers,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? body,
  }) async {
    try {
      dioClient.request.post(
        url,
        queryParameters: queryParameters,
        data: body,
      );
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future put<T>(String url,
      {Map<String, dynamic>? headers,
      Map<String, dynamic>? queryParameters,
      Map<String, dynamic>? body}) {
    try {
      return dioClient.request
          .put(url, queryParameters: queryParameters, data: body);
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future delete<T>(String url,
      {Map<String, dynamic>? headers,
      Map<String, dynamic>? queryParameters,
      Map<String, dynamic>? body}) {
    try {
      return dioClient.request
          .delete(url, queryParameters: queryParameters, data: body);
    } catch (_) {
      rethrow;
    }
  }
}
