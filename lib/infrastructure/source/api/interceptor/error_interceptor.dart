import 'dart:async';

import 'package:chopper/chopper.dart';

import '../../../../core/exception.dart';
import '../../../../core/http_code.dart';

class RequestErrorInterceptor implements ResponseInterceptor {
  @override
  FutureOr<Response> onResponse(Response response) {
    if (response.statusCode >= HttpCode.internalServerError) {
      throw ServerException();
    }
    if (response.statusCode == HttpCode.notFound) {
      throw const NotFoundRequestException();
    }
    if (response.statusCode == HttpCode.conflict) {
      throw ConflictRequestException(response.error.toString());
    }
    if (response.statusCode == HttpCode.forbidden) {
      throw ForbiddenRequestException(response.error.toString());
    }
    if (HttpCode.unauthorized == response.statusCode) {
      throw NotAllowedRequestException(response.statusCode);
    }
    if (response.isSuccessful == false) {
      throw BadRequestException(response.error.toString());
    }

    return response;
  }
}
