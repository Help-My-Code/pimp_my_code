// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'follow.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_brace_in_string_interps
class _$FollowInteractor extends FollowInteractor {
  _$FollowInteractor([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = FollowInteractor;

  @override
  Future<Response<dynamic>> getByFollowerId(String followerId) {
    final $url = '/follow/getByFollowerId';
    final $params = <String, dynamic>{'followerId': followerId};
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> getByUserId(String userId) {
    final $url = '/follow/getByUserId';
    final $params = <String, dynamic>{'userId': userId};
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> createFollow(
      {required Map<String, String> fields}) {
    final $url = '/follow/create';
    final $body = fields;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> deleteFollow(
      {required Map<String, String> fields}) {
    final $url = '/follow/delete';
    final $body = fields;
    final $request = Request('DELETE', $url, client.baseUrl, body: $body);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> updateFollow(
      {required Map<String, String> fields}) {
    final $url = '/follow/update';
    final $body = fields;
    final $request = Request('PUT', $url, client.baseUrl, body: $body);
    return client.send<dynamic, dynamic>($request);
  }
}
