// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'content.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_brace_in_string_interps
class _$ContentInteractor extends ContentInteractor {
  _$ContentInteractor([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = ContentInteractor;

  @override
  Future<Response<dynamic>> getFollowingPublicationsByUserId(String userId) {
    final $url = '/content/getFollowingPublicationsByUserId';
    final $params = <String, dynamic>{'userId': userId};
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> getPublicationsByUserId(String userId) {
    final $url = '/content/getPublicationsByUserId';
    final $params = <String, dynamic>{'userId': userId};
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> getPublicationsByGroupId(String groupId) {
    final $url = '/content/getPublicationsByGroupId';
    final $params = <String, dynamic>{'groupId': groupId};
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> createContent(
      {required Map<String, dynamic> fields}) {
    final $url = '/content/create';
    final $body = fields;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> getComments(String contentId) {
    final $url = '/content/getResponsesToContentById';
    final $params = <String, dynamic>{'contentId': contentId};
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> getContent(String contentId) {
    final $url = '/content/getById';
    final $params = <String, dynamic>{'contentId': contentId};
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<dynamic, dynamic>($request);
  }
}
