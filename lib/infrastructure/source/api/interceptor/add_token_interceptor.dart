import 'dart:async';

import 'package:chopper/chopper.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class AddTokenInterceptor implements RequestInterceptor {
  final FlutterSecureStorage _storage;

  AddTokenInterceptor(this._storage);
  @override
  FutureOr<Request> onRequest(Request request) async {
    final String? token = await _storage.read(key: 'token');

    if (token != null) {
      return applyHeader(
        request,
        'Authorization',
        'Bearer $token',
      );
    }
    return request;
  }
}
