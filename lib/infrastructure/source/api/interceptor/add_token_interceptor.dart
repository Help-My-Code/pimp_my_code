import 'dart:async';

import 'package:chopper/chopper.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AddTokenInterceptor implements RequestInterceptor {
  final SharedPreferences _storage;

  AddTokenInterceptor(this._storage);
  @override
  FutureOr<Request> onRequest(Request request) async {
    final String? token = _storage.getString('token');

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
