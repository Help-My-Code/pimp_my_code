import 'package:chopper/chopper.dart';

part 'content.chopper.dart';

@ChopperApi(baseUrl: '/content')
abstract class ContentInteractor extends ChopperService {
  static ContentInteractor create([ChopperClient? client]) =>
      _$ContentInteractor(client);

  @Get(path: '/getFollowingPublicationsByUserId')
  Future<Response> getFollowingPublicationsByUserId(@Query() String userId);

  @Get(path: '/getPublicationsByUserId')
  Future<Response> getPublicationsByUserId(@Query() String userId);

  @Get(path: '/getPublicationsByGroupId')
  Future<Response> getPublicationsByGroupId(@Query() String groupId);

  @Post(path: '/create')
  Future<Response> createContent(
      {@Body() required Map<String, dynamic> fields});

  @Delete(path: '/delete')
  Future<Response> deleteContent({@Body() required Map<String, String> fields});

  @Get(path: 'getResponsesToContentById')
  Future<Response> getComments(@Query() String contentId);

  @Get(path: 'getById')
  Future<Response> getContent(@Query() String contentId);
}
