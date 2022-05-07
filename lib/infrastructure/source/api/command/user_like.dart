import 'package:chopper/chopper.dart';

part 'user_like.chopper.dart';

@ChopperApi(baseUrl: 'userReactToContent')
abstract class UserLikeInteractor extends ChopperService {
  static UserLikeInteractor create([ChopperClient? client]) =>
      _$UserLikeInteractor(client);
  @Post(path: '/create')
  Future<Response> createLikeOrDislike(@Body() Map<String, dynamic> body);
}
