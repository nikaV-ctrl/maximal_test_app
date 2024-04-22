import 'dart:async';
import 'dart:io';
import 'package:flutter/widgets.dart';
import 'package:max_app/app/domain/entity/error_entity.dart';

abstract class AppErrorHandler {
  bool isSpecificError(error);

  ErrorEntity handleSpecificError(dynamic error);

  ErrorEntity handleError(error) {
    if (error is ErrorEntity) return error;
    ErrorEntity entity = ErrorEntity(errorState: ErrorState.unknown);
    if (isSpecificError(error)) {
      entity = handleSpecificError(error);
    } else {
      return handleBaseError(error);
    }
    return entity;
  }

  List<Type> baseErrorList = [
    Error,
    FormatException,
    IOException,
    TimeoutException,
    ArgumentError,
    RangeError,
    NoSuchMethodError,
    StateError,
    UnsupportedError,
    ConcurrentModificationError,
    FlutterError,
    AssertionError,
    TypeError,
    HandshakeException,
    SocketException,
    HttpException,
    TlsException,
  ];

  ErrorEntity handleBaseError(dynamic error) {
    Map<Type, ErrorState> errorMap = {
      Error: ErrorState.error,
      NoSuchMethodError: ErrorState.nullThrownError,
      FormatException: ErrorState.formatException,
      IOException: ErrorState.ioException,
      TimeoutException: ErrorState.timeoutException,
      ArgumentError: ErrorState.argumentError,
      RangeError: ErrorState.rangeError,
      StateError: ErrorState.stateError,
      UnsupportedError: ErrorState.unsupportedError,
      ConcurrentModificationError: ErrorState.concurrentModificationError,
      FlutterError: ErrorState.flutterError,
      AssertionError: ErrorState.assertionError,
      TypeError: ErrorState.typeError,
      HandshakeException: ErrorState.handshakeException,
      SocketException: ErrorState.socketException,
      HttpException: ErrorState.httpException,
      TlsException: ErrorState.tlsException,
    };

    ErrorState? state = errorMap[error.runtimeType];
    return ErrorEntity(errorState: state ?? ErrorState.unknown);
  }
}
