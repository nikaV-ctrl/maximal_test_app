// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Поиск`
  String get search {
    return Intl.message(
      'Поиск',
      name: 'search',
      desc: '',
      args: [],
    );
  }

  /// `Авторизация`
  String get auth {
    return Intl.message(
      'Авторизация',
      name: 'auth',
      desc: '',
      args: [],
    );
  }

  /// `Неправильный, некорректный запрос.`
  String get badRequest {
    return Intl.message(
      'Неправильный, некорректный запрос.',
      name: 'badRequest',
      desc: '',
      args: [],
    );
  }

  /// `Не авторизован.`
  String get unauthorized {
    return Intl.message(
      'Не авторизован.',
      name: 'unauthorized',
      desc: '',
      args: [],
    );
  }

  /// `Истекло время ожидания.`
  String get requestTimeout {
    return Intl.message(
      'Истекло время ожидания.',
      name: 'requestTimeout',
      desc: '',
      args: [],
    );
  }

  /// `Конфликт.`
  String get conflict {
    return Intl.message(
      'Конфликт.',
      name: 'conflict',
      desc: '',
      args: [],
    );
  }

  /// `Внутренняя ошибка сервера.`
  String get internalServerError {
    return Intl.message(
      'Внутренняя ошибка сервера.',
      name: 'internalServerError',
      desc: '',
      args: [],
    );
  }

  /// `Сервис недоступен.`
  String get serviceUnavailable {
    return Intl.message(
      'Сервис недоступен.',
      name: 'serviceUnavailable',
      desc: '',
      args: [],
    );
  }

  /// `Не удаётся подтвердить сертификат шифрования веб-сервера.`
  String get badCertificate {
    return Intl.message(
      'Не удаётся подтвердить сертификат шифрования веб-сервера.',
      name: 'badCertificate',
      desc: '',
      args: [],
    );
  }

  /// `Неизвестная ошибка.`
  String get unknown {
    return Intl.message(
      'Неизвестная ошибка.',
      name: 'unknown',
      desc: '',
      args: [],
    );
  }

  /// `Исключение, вызванное недопустимым аргументом функции или метода.`
  String get argumentError {
    return Intl.message(
      'Исключение, вызванное недопустимым аргументом функции или метода.',
      name: 'argumentError',
      desc: '',
      args: [],
    );
  }

  /// `Утверждение assert в Dart не выполняется.`
  String get assertionError {
    return Intl.message(
      'Утверждение assert в Dart не выполняется.',
      name: 'assertionError',
      desc: '',
      args: [],
    );
  }

  /// `Ошибка с понятием "плохого ответа" или подобными исключениями при работе с сетевыми запросами, когда сервер возвращает ответ, который не соответствует ожидаемому формату или содержит статус-код ошибки`
  String get badResponse {
    return Intl.message(
      'Ошибка с понятием "плохого ответа" или подобными исключениями при работе с сетевыми запросами, когда сервер возвращает ответ, который не соответствует ожидаемому формату или содержит статус-код ошибки',
      name: 'badResponse',
      desc: '',
      args: [],
    );
  }

  /// `Запрос отменен.`
  String get requestCancel {
    return Intl.message(
      'Запрос отменен.',
      name: 'requestCancel',
      desc: '',
      args: [],
    );
  }

  /// `Объект изменен во время итерации.`
  String get concurrentModificationError {
    return Intl.message(
      'Объект изменен во время итерации.',
      name: 'concurrentModificationError',
      desc: '',
      args: [],
    );
  }

  /// `Ошибка соединения.`
  String get connectionError {
    return Intl.message(
      'Ошибка соединения.',
      name: 'connectionError',
      desc: '',
      args: [],
    );
  }

  /// `Истекло время ожидания для установления соединения с сервером.`
  String get connectionTimeout {
    return Intl.message(
      'Истекло время ожидания для установления соединения с сервером.',
      name: 'connectionTimeout',
      desc: '',
      args: [],
    );
  }

  /// `Специфическое для Flutter исключение для отчета об ошибках во фреймворке.`
  String get flutterError {
    return Intl.message(
      'Специфическое для Flutter исключение для отчета об ошибках во фреймворке.',
      name: 'flutterError',
      desc: '',
      args: [],
    );
  }

  /// `Данные не соответствуют ожидаемому формату.`
  String get formatException {
    return Intl.message(
      'Данные не соответствуют ожидаемому формату.',
      name: 'formatException',
      desc: '',
      args: [],
    );
  }

  /// `Ошибка SSL рукопожатия.`
  String get handshakeException {
    return Intl.message(
      'Ошибка SSL рукопожатия.',
      name: 'handshakeException',
      desc: '',
      args: [],
    );
  }

  /// `Ошибка возникла при обработке HTTP-запроса.`
  String get httpException {
    return Intl.message(
      'Ошибка возникла при обработке HTTP-запроса.',
      name: 'httpException',
      desc: '',
      args: [],
    );
  }

  /// `Ошибка связана с операциями ввода-вывода.`
  String get ioException {
    return Intl.message(
      'Ошибка связана с операциями ввода-вывода.',
      name: 'ioException',
      desc: '',
      args: [],
    );
  }

  /// `Операция не может быть выполнена из-за ограничений памяти.`
  String get memoryError {
    return Intl.message(
      'Операция не может быть выполнена из-за ограничений памяти.',
      name: 'memoryError',
      desc: '',
      args: [],
    );
  }

  /// `Ошибка возникла при попытке вызова метода, который не существует на объекте.`
  String get noSuchMethodError {
    return Intl.message(
      'Ошибка возникла при попытке вызова метода, который не существует на объекте.',
      name: 'noSuchMethodError',
      desc: '',
      args: [],
    );
  }

  /// `Вместо ожидаемого значения функция получает null.`
  String get nullThrownError {
    return Intl.message(
      'Вместо ожидаемого значения функция получает null.',
      name: 'nullThrownError',
      desc: '',
      args: [],
    );
  }

  /// `Значение не попадает в допустимый диапазон, например, при доступе к элементам списка.`
  String get rangeError {
    return Intl.message(
      'Значение не попадает в допустимый диапазон, например, при доступе к элементам списка.',
      name: 'rangeError',
      desc: '',
      args: [],
    );
  }

  /// `Истекло время ожидания при получении данных от сервера.`
  String get receiveTimeout {
    return Intl.message(
      'Истекло время ожидания при получении данных от сервера.',
      name: 'receiveTimeout',
      desc: '',
      args: [],
    );
  }

  /// `Истекло время ожидания при отправке данных серверу.`
  String get sendTimeout {
    return Intl.message(
      'Истекло время ожидания при отправке данных серверу.',
      name: 'sendTimeout',
      desc: '',
      args: [],
    );
  }

  /// `Ошибка сокета.`
  String get socketException {
    return Intl.message(
      'Ошибка сокета.',
      name: 'socketException',
      desc: '',
      args: [],
    );
  }

  /// `Операция недопустима из-за текущего состояния объекта.`
  String get stateError {
    return Intl.message(
      'Операция недопустима из-за текущего состояния объекта.',
      name: 'stateError',
      desc: '',
      args: [],
    );
  }

  /// `Ошибка превышения времени ожидания операции.`
  String get timeoutException {
    return Intl.message(
      'Ошибка превышения времени ожидания операции.',
      name: 'timeoutException',
      desc: '',
      args: [],
    );
  }

  /// `Специфическое исключение, связанное с ошибками безопасности транспортного уровня, например, при проблемах с TLS/SSL.`
  String get tlsException {
    return Intl.message(
      'Специфическое исключение, связанное с ошибками безопасности транспортного уровня, например, при проблемах с TLS/SSL.',
      name: 'tlsException',
      desc: '',
      args: [],
    );
  }

  /// `Возникает при несовпадении типов, например, при попытке присвоения значения неправильного типа переменной.`
  String get typeError {
    return Intl.message(
      'Возникает при несовпадении типов, например, при попытке присвоения значения неправильного типа переменной.',
      name: 'typeError',
      desc: '',
      args: [],
    );
  }

  /// `Операция не поддерживается.`
  String get unsupportedError {
    return Intl.message(
      'Операция не поддерживается.',
      name: 'unsupportedError',
      desc: '',
      args: [],
    );
  }

  /// `Страница не найдена.`
  String get notFound {
    return Intl.message(
      'Страница не найдена.',
      name: 'notFound',
      desc: '',
      args: [],
    );
  }

  /// `В доступе отказано.`
  String get forbidden {
    return Intl.message(
      'В доступе отказано.',
      name: 'forbidden',
      desc: '',
      args: [],
    );
  }

  /// `Необходима оплата за запрос`
  String get paymentRequired {
    return Intl.message(
      'Необходима оплата за запрос',
      name: 'paymentRequired',
      desc: '',
      args: [],
    );
  }

  /// `Недопустимый метод`
  String get methodNotAllowed {
    return Intl.message(
      'Недопустимый метод',
      name: 'methodNotAllowed',
      desc: '',
      args: [],
    );
  }

  /// `Неприемлемый запрос`
  String get notAcceptable {
    return Intl.message(
      'Неприемлемый запрос',
      name: 'notAcceptable',
      desc: '',
      args: [],
    );
  }

  /// `Требуется идентификация прокси, файервола`
  String get proxyAuthenticationRequired {
    return Intl.message(
      'Требуется идентификация прокси, файервола',
      name: 'proxyAuthenticationRequired',
      desc: '',
      args: [],
    );
  }

  /// `Ресурс недоступен`
  String get goneError {
    return Intl.message(
      'Ресурс недоступен',
      name: 'goneError',
      desc: '',
      args: [],
    );
  }

  /// `Необходимо указать длину`
  String get lengthRequired {
    return Intl.message(
      'Необходимо указать длину',
      name: 'lengthRequired',
      desc: '',
      args: [],
    );
  }

  /// `Сбой при обработке предварительного условия`
  String get preconditionFailed {
    return Intl.message(
      'Сбой при обработке предварительного условия',
      name: 'preconditionFailed',
      desc: '',
      args: [],
    );
  }

  /// `Тело запроса превышает допустимый размер`
  String get requestEntityTooLarge {
    return Intl.message(
      'Тело запроса превышает допустимый размер',
      name: 'requestEntityTooLarge',
      desc: '',
      args: [],
    );
  }

  /// `Недопустимая длина URI запроса`
  String get requestUriTooLarge {
    return Intl.message(
      'Недопустимая длина URI запроса',
      name: 'requestUriTooLarge',
      desc: '',
      args: [],
    );
  }

  /// `Неподдерживаемый MIME тип`
  String get unsupportedMediaType {
    return Intl.message(
      'Неподдерживаемый MIME тип',
      name: 'unsupportedMediaType',
      desc: '',
      args: [],
    );
  }

  /// `Диапазон не может быть обработан`
  String get requestedRangeNotSatisfiable {
    return Intl.message(
      'Диапазон не может быть обработан',
      name: 'requestedRangeNotSatisfiable',
      desc: '',
      args: [],
    );
  }

  /// `Сбой при ожидании`
  String get expectationFailed {
    return Intl.message(
      'Сбой при ожидании',
      name: 'expectationFailed',
      desc: '',
      args: [],
    );
  }

  /// `Необрабатываемый элемент`
  String get unprocessableEntity {
    return Intl.message(
      'Необрабатываемый элемент',
      name: 'unprocessableEntity',
      desc: '',
      args: [],
    );
  }

  /// `Заблокировано`
  String get locked {
    return Intl.message(
      'Заблокировано',
      name: 'locked',
      desc: '',
      args: [],
    );
  }

  /// `Неверная зависимость`
  String get failedDependency {
    return Intl.message(
      'Неверная зависимость',
      name: 'failedDependency',
      desc: '',
      args: [],
    );
  }

  /// `Требуется обновление`
  String get upgradeRequired {
    return Intl.message(
      'Требуется обновление',
      name: 'upgradeRequired',
      desc: '',
      args: [],
    );
  }

  /// `Слишком много запросов`
  String get tooManyRequests {
    return Intl.message(
      'Слишком много запросов',
      name: 'tooManyRequests',
      desc: '',
      args: [],
    );
  }

  /// `Метод не поддерживается`
  String get notImplemented {
    return Intl.message(
      'Метод не поддерживается',
      name: 'notImplemented',
      desc: '',
      args: [],
    );
  }

  /// `Ошибка шлюза`
  String get badGateway {
    return Intl.message(
      'Ошибка шлюза',
      name: 'badGateway',
      desc: '',
      args: [],
    );
  }

  /// `Время прохождения через межсетевой шлюз истекло`
  String get gatewayTimeout {
    return Intl.message(
      'Время прохождения через межсетевой шлюз истекло',
      name: 'gatewayTimeout',
      desc: '',
      args: [],
    );
  }

  /// `Версия НТТР не поддерживается`
  String get versionNotSupported {
    return Intl.message(
      'Версия НТТР не поддерживается',
      name: 'versionNotSupported',
      desc: '',
      args: [],
    );
  }

  /// `Недостаточно места`
  String get notExtended {
    return Intl.message(
      'Недостаточно места',
      name: 'notExtended',
      desc: '',
      args: [],
    );
  }

  /// `Отсутствуют расширения`
  String get missingExtension {
    return Intl.message(
      'Отсутствуют расширения',
      name: 'missingExtension',
      desc: '',
      args: [],
    );
  }

  /// `Произошла ошибка`
  String get errorOccurred {
    return Intl.message(
      'Произошла ошибка',
      name: 'errorOccurred',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ru'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
