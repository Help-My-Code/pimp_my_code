import 'package:chopper/chopper.dart';

part 'content.chopper.dart';

@ChopperApi(baseUrl: '/content')
abstract class ContentInteractor extends ChopperService {
  static ContentInteractor create([ChopperClient? client]) =>
      _$ContentInteractor(client);

  @Get(path: '/getFollowingPublicationsByUserId')
  Future<Response> getFollowingPublicationsByUserId(@Query() String userId);

  @Post(path: '/create')
  Future<Response> createContent({@Body() required Map<String, String?> fields});

}
