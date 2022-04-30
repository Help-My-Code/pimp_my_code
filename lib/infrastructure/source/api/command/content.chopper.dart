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
}
