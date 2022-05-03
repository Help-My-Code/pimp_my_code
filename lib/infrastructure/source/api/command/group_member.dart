import 'package:chopper/chopper.dart';

part 'group_member.chopper.dart';

@ChopperApi(baseUrl: '/groupMember')
abstract class GroupMemberInteractor extends ChopperService {
  static GroupMemberInteractor create([ChopperClient? client]) =>
      _$GroupMemberInteractor(client);

  @Get(path: '/getByMemberId')
  Future<Response> getByMemberId(@Query() String memberId);
}
