// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_brace_in_string_interps
class _$NotificationInteractor extends NotificationInteractor {
  _$NotificationInteractor([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = NotificationInteractor;

  @override
  Future<Response<dynamic>> seeAllNotificationsByUserId(
      {required Map<String, String> fields}) {
    final $url = '/notification/seeAllNotificationsByUserId';
    final $body = fields;
    final $request = Request('PUT', $url, client.baseUrl, body: $body);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> getByUserId(String userId) {
    final $url = '/notification/getByUserId';
    final $params = <String, dynamic>{'userId': userId};
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<dynamic, dynamic>($request);
  }
}
