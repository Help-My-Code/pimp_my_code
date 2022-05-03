// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_member.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_brace_in_string_interps
class _$GroupMemberInteractor extends GroupMemberInteractor {
  _$GroupMemberInteractor([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = GroupMemberInteractor;

  @override
  Future<Response<dynamic>> getByMemberId(String memberId) {
    final $url = '/groupMember/getByMemberId';
    final $params = <String, dynamic>{'memberId': memberId};
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<dynamic, dynamic>($request);
  }
}
