enum ErrorState {
  badCertificate,
  badResponse,
  cancel,
  connectionError,
  connectionTimeout,
  receiveTimeout,
  sendTimeout,
  unknown,
  error,
  nullThrownError,
  formatException,
  ioException,
  timeoutException,
  argumentError,
  rangeError,
  noSuchMethodError,
  stateError,
  unsupportedError,
  concurrentModificationError,
  memoryError,
  flutterError,
  assertionError,
  typeError,
  handshakeException,
  socketException,
  tlsException,
  httpException,
}

class ErrorEntity {
  final ErrorState errorState;
  final String message;
  final int? statusCode;
  final StackTrace? stackTrace;

  ErrorEntity({
    required this.errorState,
    this.message = '',
    this.statusCode,
    this.stackTrace,
  });

  ErrorEntity copyWith({
    ErrorState? errorState,
    String? message,
    int? statusCode,
    StackTrace? stackTrace,
  }) {
    return ErrorEntity(
      errorState: errorState ?? this.errorState,
      message: message ?? this.message,
      statusCode: statusCode ?? this.statusCode,
      stackTrace: stackTrace ?? this.stackTrace,
    );
  }

  factory ErrorEntity.fromJson(Map<String, dynamic> json) {
    return ErrorEntity(
      errorState: typeValues.map[json["errorState"]]!,
      message: json['message'],
      stackTrace: json['stackTrace'],
      statusCode: json['statusCode'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "errorState": typeValues.reverse[errorState],
      "message": message,
      "stackTrace": stackTrace,
      "statusCode": statusCode,
    };
  }
}

final typeValues = EnumValues({
  "badCertificate": ErrorState.badCertificate,
  "badResponse": ErrorState.badResponse,
  "cancel": ErrorState.cancel,
  "connectionError": ErrorState.connectionError,
  "connectionTimeout": ErrorState.connectionTimeout,
  "receiveTimeout": ErrorState.receiveTimeout,
  "sendTimeout": ErrorState.sendTimeout,
  "unknown": ErrorState.unknown,
  "error": ErrorState.error,
  "nullThrownError": ErrorState.nullThrownError,
  "formatException": ErrorState.formatException,
  "ioException": ErrorState.ioException,
  "timeoutException": ErrorState.timeoutException,
  "argumentError": ErrorState.argumentError,
  "rangeError": ErrorState.rangeError,
  "noSuchMethodError": ErrorState.noSuchMethodError,
  "stateError": ErrorState.stateError,
  "unsupportedError": ErrorState.unsupportedError,
  "concurrentModificationError": ErrorState.concurrentModificationError,
  "memoryError": ErrorState.memoryError,
  "flutterError": ErrorState.flutterError,
  "assertionError": ErrorState.assertionError,
  "typeError": ErrorState.typeError,
  "handshakeException": ErrorState.handshakeException,
  "socketException": ErrorState.socketException,
  "httpException": ErrorState.httpException,
  "tlsException": ErrorState.tlsException,
});

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
