import 'package:chopper/chopper.dart';

part 'group.chopper.dart';

@ChopperApi(baseUrl: '/group')
abstract class GroupInteractor extends ChopperService {
  static GroupInteractor create([ChopperClient? client]) =>
      _$GroupInteractor(client);

  @Get(path: '/getByName')
  Future<Response> getByName(@Query() String name);

  @Get(path: '/getById')
  Future<Response> getById(@Query() String groupId);

  @Get(path: '/getByCreatorId')
  Future<Response> getByCreatorId(@Query() String creatorId);

  @Put(path: '/update')
  Future<Response> update({@Body() required Map<String, String> fields});
}
