// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_brace_in_string_interps
class _$GroupInteractor extends GroupInteractor {
  _$GroupInteractor([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = GroupInteractor;

  @override
  Future<Response<dynamic>> getByName(String name) {
    final $url = '/group/getByName';
    final $params = <String, dynamic>{'name': name};
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> getById(String groupId) {
    final $url = '/group/getById';
    final $params = <String, dynamic>{'groupId': groupId};
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> getByCreatorId(String creatorId) {
    final $url = '/group/getByCreatorId';
    final $params = <String, dynamic>{'creatorId': creatorId};
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<dynamic, dynamic>($request);
  }
}
