import 'package:chopper/chopper.dart';

part 'group_member.chopper.dart';

@ChopperApi(baseUrl: '/groupMember')
abstract class GroupMemberInteractor extends ChopperService {
  static GroupMemberInteractor create([ChopperClient? client]) =>
      _$GroupMemberInteractor(client);

  @Get(path: '/getByMemberId')
  Future<Response> getByMemberId(@Query() String memberId);

  @Get(path: '/getByGroupId')
  Future<Response> getByGroupId(@Query() String groupId);

  @Post(path: '/create')
  Future<Response> createGroupMember({@Body() required Map<String, String> fields});

  @Delete(path: '/delete')
  Future<Response> deleteGroupMember({@Body() required Map<String, String> fields});

  @Put(path: '/update')
  Future<Response> updateGroupMember({@Body() required Map<String, String> fields});
}
