// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_like.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_brace_in_string_interps
class _$UserLikeInteractor extends UserLikeInteractor {
  _$UserLikeInteractor([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = UserLikeInteractor;

  @override
  Future<Response<dynamic>> createLikeOrDislike(Map<String, dynamic> body) {
    final $url = 'userReactToContent/create';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> deleteUserReactToContent(
      Map<String, dynamic> body) {
    final $url = 'userReactToContent/delete';
    final $body = body;
    final $request = Request('DELETE', $url, client.baseUrl, body: $body);
    return client.send<dynamic, dynamic>($request);
  }
}
