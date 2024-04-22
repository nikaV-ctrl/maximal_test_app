import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:max_app/app/domain/entity/error_entity.dart';
import 'package:max_app/app/domain/error_handler/api_error_handler.dart';

@Singleton(as: ApiErrorHandler)
class DioApiErrorHandler extends ApiErrorHandler {
  @override
  ErrorEntity handleSpecificError(error) {
    error as DioException;
    if (baseErrorList.contains(error.error?.runtimeType)) {
      return handleBaseError(error);
    }
    ErrorEntity errorEntity = ErrorEntity(errorState: ErrorState.unknown);
    switch (error.type) {
      case DioExceptionType.cancel:
        errorEntity = ErrorEntity(errorState: ErrorState.cancel);
        break;

      case DioExceptionType.connectionTimeout:
        errorEntity = ErrorEntity(errorState: ErrorState.connectionTimeout);
        break;

      case DioExceptionType.connectionError:
        errorEntity = ErrorEntity(errorState: ErrorState.connectionError);
        break;

      case DioExceptionType.receiveTimeout:
        errorEntity = ErrorEntity(errorState: ErrorState.receiveTimeout);
        break;

      case DioExceptionType.badResponse:
        switch (error.response?.statusCode) {
          case 400:
            errorEntity = ErrorEntity(
              errorState: ErrorState.badResponse,
              statusCode: 400,
              message:
                  error.response?.data['error']?['message']?.toString() ?? '',
            );

            break;

          case 401:
            errorEntity = ErrorEntity(
              errorState: ErrorState.badResponse,
              statusCode: 401,
              message:
                  error.response?.data['error']?['message']?.toString() ?? '',
            );

            break;

          case 403:
            errorEntity = ErrorEntity(
              errorState: ErrorState.badResponse,
              statusCode: 403,
            );

            break;

          case 404:
            errorEntity = ErrorEntity(
              errorState: ErrorState.badResponse,
              statusCode: 404,
            );
            break;

          case 409:
            errorEntity = ErrorEntity(
              errorState: ErrorState.badResponse,
              statusCode: 401,
              message:
                  error.response?.data['error']?['message']?.toString() ?? '',
            );

            break;

          case 408:
            errorEntity = ErrorEntity(
              errorState: ErrorState.badResponse,
              statusCode: 408,
              message:
                  error.response?.data['error']?['message']?.toString() ?? '',
            );

            break;

          case 500:
            errorEntity = ErrorEntity(
              errorState: ErrorState.badResponse,
              statusCode: 500,
              message:
                  error.response?.data['error']?['message']?.toString() ?? '',
            );

            break;

          case 503:
            errorEntity = ErrorEntity(
              errorState: ErrorState.badResponse,
              statusCode: 503,
              message:
                  error.response?.data['error']?['message']?.toString() ?? '',
            );

            break;

          default:
            break;
        }

        break;

      default:
        break;
    }
    return errorEntity;
  }

  @override
  bool isSpecificError(error) => error is DioException;
}
