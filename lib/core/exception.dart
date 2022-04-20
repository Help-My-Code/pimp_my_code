import 'package:easy_localization/easy_localization.dart';

class ServerException implements Exception {}

class BadRequestException implements Exception {
  final String message;
  const BadRequestException(this.message);
  @override
  String toString() => message.tr();
}

class NotFoundRequestException extends BadRequestException {
  const NotFoundRequestException() : super('ressource_not_found');
}

class RequestUnauthorizedException extends BadRequestException {
  const RequestUnauthorizedException(String message) : super(message);
}

class GoneRequestException extends BadRequestException {
  const GoneRequestException(String message) : super(message);
}

class ConflictRequestException extends BadRequestException {
  const ConflictRequestException(String message) : super(message);
}

class ForbiddenRequestException extends BadRequestException {
  const ForbiddenRequestException(String message) : super(message);
}

class RequestNotSendException implements Exception {}

class NotAllowedRequestException implements Exception {
  final int statusCode;
  const NotAllowedRequestException(this.statusCode);
}
