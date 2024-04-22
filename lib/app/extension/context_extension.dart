import 'package:flutter/material.dart';
import 'package:max_app/app/domain/entity/error_entity.dart';
import 'package:max_app/generated/l10n.dart';

extension ContextTheme on BuildContext {
  TextTheme get textTheme {
    return Theme.of(this).textTheme;
  }

  S get translate => S.of(this);

  String errorMessage(ErrorEntity errorEntity) {
    if (errorEntity.message.isNotEmpty) return errorEntity.message;
    switch (errorEntity.statusCode) {
      case 400:
        return translate.badRequest;
      case 401:
        return translate.unauthorized;
      case 402:
        return translate.paymentRequired;
      case 403:
        return translate.forbidden;
      case 404:
        return translate.notFound;
      case 405:
        return translate.methodNotAllowed;
      case 406:
        return translate.notAcceptable;
      case 407:
        return translate.proxyAuthenticationRequired;
      case 408:
        return translate.requestTimeout;
      case 409:
        return translate.conflict;
      case 410:
        return translate.goneError;
      case 411:
        return translate.lengthRequired;
      case 412:
        return translate.preconditionFailed;
      case 413:
        return translate.requestEntityTooLarge;
      case 414:
        return translate.requestUriTooLarge;
      case 415:
        return translate.unsupportedMediaType;
      case 416:
        return translate.requestedRangeNotSatisfiable;
      case 417:
        return translate.expectationFailed;
      case 422:
        return translate.unprocessableEntity;
      case 423:
        return translate.locked;
      case 424:
        return translate.failedDependency;
      case 426:
        return translate.upgradeRequired;
      case 429:
        return translate.tooManyRequests;
      case 500:
        return translate.internalServerError;
      case 501:
        return translate.notImplemented;
      case 502:
        return translate.badGateway;
      case 503:
        return translate.serviceUnavailable;
      case 504:
        return translate.gatewayTimeout;
      case 505:
        return translate.versionNotSupported;
      case 507:
        return translate.notExtended;
      case 510:
        return translate.missingExtension;
      default:
        switch (errorEntity.errorState) {
          case ErrorState.unknown:
            return translate.unknown;
          case ErrorState.error:
            return translate.errorOccurred;
          case ErrorState.argumentError:
            return translate.argumentError;
          case ErrorState.assertionError:
            return translate.assertionError;
          case ErrorState.badCertificate:
            return translate.badCertificate;
          case ErrorState.badResponse:
            return translate.badResponse;
          case ErrorState.cancel:
            return translate.requestCancel;
          case ErrorState.concurrentModificationError:
            return translate.concurrentModificationError;
          case ErrorState.connectionError:
            return translate.connectionError;
          case ErrorState.connectionTimeout:
            return translate.connectionTimeout;
          case ErrorState.flutterError:
            return translate.flutterError;
          case ErrorState.formatException:
            return translate.formatException;
          case ErrorState.handshakeException:
            return translate.handshakeException;
          case ErrorState.httpException:
            return translate.httpException;
          case ErrorState.ioException:
            return translate.ioException;
          case ErrorState.memoryError:
            return translate.memoryError;
          case ErrorState.noSuchMethodError:
            return translate.noSuchMethodError;
          case ErrorState.nullThrownError:
            return translate.nullThrownError;
          case ErrorState.rangeError:
            return translate.rangeError;
          case ErrorState.receiveTimeout:
            return translate.receiveTimeout;
          case ErrorState.sendTimeout:
            return translate.sendTimeout;
          case ErrorState.socketException:
            return translate.socketException;
          case ErrorState.stateError:
            return translate.stateError;
          case ErrorState.timeoutException:
            return translate.timeoutException;
          case ErrorState.tlsException:
            return translate.tlsException;
          case ErrorState.typeError:
            return translate.typeError;
          case ErrorState.unsupportedError:
            return translate.unsupportedError;
          default:
            return translate.errorOccurred;
        }
    }
  }
}
