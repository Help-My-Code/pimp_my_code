import 'package:chopper/chopper.dart';

part 'user.chopper.dart';

@ChopperApi(baseUrl: '/user')
abstract class UserInteractor extends ChopperService {
  static UserInteractor create([ChopperClient? client]) =>
      _$UserInteractor(client);

  @Get(path: '/getByName')
  Future<Response> getByName(@Query() String name);

  @Get(path: '/getById')
  Future<Response> getById(@Query() String id);
}
