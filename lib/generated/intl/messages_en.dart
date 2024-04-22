// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "argumentError": MessageLookupByLibrary.simpleMessage(
            "Исключение, вызванное недопустимым аргументом функции или метода."),
        "assertionError": MessageLookupByLibrary.simpleMessage(
            "Утверждение assert в Dart не выполняется."),
        "auth": MessageLookupByLibrary.simpleMessage("Авторизация"),
        "badCertificate": MessageLookupByLibrary.simpleMessage(
            "Не удаётся подтвердить сертификат шифрования веб-сервера."),
        "badGateway": MessageLookupByLibrary.simpleMessage("Ошибка шлюза"),
        "badRequest": MessageLookupByLibrary.simpleMessage(
            "Неправильный, некорректный запрос."),
        "badResponse": MessageLookupByLibrary.simpleMessage(
            "Ошибка с понятием \"плохого ответа\" или подобными исключениями при работе с сетевыми запросами, когда сервер возвращает ответ, который не соответствует ожидаемому формату или содержит статус-код ошибки"),
        "concurrentModificationError": MessageLookupByLibrary.simpleMessage(
            "Объект изменен во время итерации."),
        "conflict": MessageLookupByLibrary.simpleMessage("Конфликт."),
        "connectionError":
            MessageLookupByLibrary.simpleMessage("Ошибка соединения."),
        "connectionTimeout": MessageLookupByLibrary.simpleMessage(
            "Истекло время ожидания для установления соединения с сервером."),
        "errorOccurred":
            MessageLookupByLibrary.simpleMessage("Произошла ошибка"),
        "expectationFailed":
            MessageLookupByLibrary.simpleMessage("Сбой при ожидании"),
        "failedDependency":
            MessageLookupByLibrary.simpleMessage("Неверная зависимость"),
        "flutterError": MessageLookupByLibrary.simpleMessage(
            "Специфическое для Flutter исключение для отчета об ошибках во фреймворке."),
        "forbidden":
            MessageLookupByLibrary.simpleMessage("В доступе отказано."),
        "formatException": MessageLookupByLibrary.simpleMessage(
            "Данные не соответствуют ожидаемому формату."),
        "gatewayTimeout": MessageLookupByLibrary.simpleMessage(
            "Время прохождения через межсетевой шлюз истекло"),
        "goneError": MessageLookupByLibrary.simpleMessage("Ресурс недоступен"),
        "handshakeException":
            MessageLookupByLibrary.simpleMessage("Ошибка SSL рукопожатия."),
        "httpException": MessageLookupByLibrary.simpleMessage(
            "Ошибка возникла при обработке HTTP-запроса."),
        "internalServerError":
            MessageLookupByLibrary.simpleMessage("Внутренняя ошибка сервера."),
        "ioException": MessageLookupByLibrary.simpleMessage(
            "Ошибка связана с операциями ввода-вывода."),
        "lengthRequired":
            MessageLookupByLibrary.simpleMessage("Необходимо указать длину"),
        "locked": MessageLookupByLibrary.simpleMessage("Заблокировано"),
        "memoryError": MessageLookupByLibrary.simpleMessage(
            "Операция не может быть выполнена из-за ограничений памяти."),
        "methodNotAllowed":
            MessageLookupByLibrary.simpleMessage("Недопустимый метод"),
        "missingExtension":
            MessageLookupByLibrary.simpleMessage("Отсутствуют расширения"),
        "noSuchMethodError": MessageLookupByLibrary.simpleMessage(
            "Ошибка возникла при попытке вызова метода, который не существует на объекте."),
        "notAcceptable":
            MessageLookupByLibrary.simpleMessage("Неприемлемый запрос"),
        "notExtended":
            MessageLookupByLibrary.simpleMessage("Недостаточно места"),
        "notFound":
            MessageLookupByLibrary.simpleMessage("Страница не найдена."),
        "notImplemented":
            MessageLookupByLibrary.simpleMessage("Метод не поддерживается"),
        "nullThrownError": MessageLookupByLibrary.simpleMessage(
            "Вместо ожидаемого значения функция получает null."),
        "paymentRequired":
            MessageLookupByLibrary.simpleMessage("Необходима оплата за запрос"),
        "preconditionFailed": MessageLookupByLibrary.simpleMessage(
            "Сбой при обработке предварительного условия"),
        "proxyAuthenticationRequired": MessageLookupByLibrary.simpleMessage(
            "Требуется идентификация прокси, файервола"),
        "rangeError": MessageLookupByLibrary.simpleMessage(
            "Значение не попадает в допустимый диапазон, например, при доступе к элементам списка."),
        "receiveTimeout": MessageLookupByLibrary.simpleMessage(
            "Истекло время ожидания при получении данных от сервера."),
        "requestCancel":
            MessageLookupByLibrary.simpleMessage("Запрос отменен."),
        "requestEntityTooLarge": MessageLookupByLibrary.simpleMessage(
            "Тело запроса превышает допустимый размер"),
        "requestTimeout":
            MessageLookupByLibrary.simpleMessage("Истекло время ожидания."),
        "requestUriTooLarge": MessageLookupByLibrary.simpleMessage(
            "Недопустимая длина URI запроса"),
        "requestedRangeNotSatisfiable": MessageLookupByLibrary.simpleMessage(
            "Диапазон не может быть обработан"),
        "search": MessageLookupByLibrary.simpleMessage("Поиск"),
        "sendTimeout": MessageLookupByLibrary.simpleMessage(
            "Истекло время ожидания при отправке данных серверу."),
        "serviceUnavailable":
            MessageLookupByLibrary.simpleMessage("Сервис недоступен."),
        "socketException":
            MessageLookupByLibrary.simpleMessage("Ошибка сокета."),
        "stateError": MessageLookupByLibrary.simpleMessage(
            "Операция недопустима из-за текущего состояния объекта."),
        "timeoutException": MessageLookupByLibrary.simpleMessage(
            "Ошибка превышения времени ожидания операции."),
        "tlsException": MessageLookupByLibrary.simpleMessage(
            "Специфическое исключение, связанное с ошибками безопасности транспортного уровня, например, при проблемах с TLS/SSL."),
        "tooManyRequests":
            MessageLookupByLibrary.simpleMessage("Слишком много запросов"),
        "typeError": MessageLookupByLibrary.simpleMessage(
            "Возникает при несовпадении типов, например, при попытке присвоения значения неправильного типа переменной."),
        "unauthorized": MessageLookupByLibrary.simpleMessage("Не авторизован."),
        "unknown": MessageLookupByLibrary.simpleMessage("Неизвестная ошибка."),
        "unprocessableEntity":
            MessageLookupByLibrary.simpleMessage("Необрабатываемый элемент"),
        "unsupportedError":
            MessageLookupByLibrary.simpleMessage("Операция не поддерживается."),
        "unsupportedMediaType":
            MessageLookupByLibrary.simpleMessage("Неподдерживаемый MIME тип"),
        "upgradeRequired":
            MessageLookupByLibrary.simpleMessage("Требуется обновление"),
        "versionNotSupported": MessageLookupByLibrary.simpleMessage(
            "Версия НТТР не поддерживается")
      };
}
