abstract class AppApi {
  Future<dynamic> get<T>(
    String url, {
    Map<String, dynamic>? headers,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? body,
  });
  Future<dynamic> post<T>(
    String url, {
    Map<String, dynamic>? headers,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? body,
  });
  Future<dynamic> put<T>(
    String url, {
    Map<String, dynamic>? headers,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? body,
  });
  Future<dynamic> delete<T>(
    String url, {
    Map<String, dynamic>? headers,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? body,
  });
}
