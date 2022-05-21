import 'package:chopper/chopper.dart';

part 'follow.chopper.dart';

@ChopperApi(baseUrl: '/follow')
abstract class FollowInteractor extends ChopperService {
  static FollowInteractor create([ChopperClient? client]) =>
      _$FollowInteractor(client);

  @Get(path: '/getByFollowerId')
  Future<Response> getByFollowerId(@Query() String followerId);

  @Get(path: '/getByUserId')
  Future<Response> getByUserId(@Query() String userId);

  @Post(path: '/create')
  Future<Response> createFollow({@Body() required Map<String, String> fields});

  @Delete(path: '/delete')
  Future<Response> deleteFollow({@Body() required Map<String, String> fields});

  @Put(path: '/update')
  Future<Response> updateFollow({@Body() required Map<String, String> fields});
}
