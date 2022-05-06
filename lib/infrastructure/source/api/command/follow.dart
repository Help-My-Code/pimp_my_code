import 'package:chopper/chopper.dart';

part 'follow.chopper.dart';

@ChopperApi(baseUrl: '/follow')
abstract class FollowInteractor extends ChopperService {
  static FollowInteractor create([ChopperClient? client]) =>
      _$FollowInteractor(client);

  @Get(path: '/getByFollowerId')
  Future<Response> getByFollowerId(@Query() String followerId);
}
