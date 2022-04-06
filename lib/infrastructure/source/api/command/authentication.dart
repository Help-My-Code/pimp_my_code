import 'package:chopper/chopper.dart';

part 'authentication.chopper.dart';

@ChopperApi(baseUrl: '/auth')
abstract class AuthenticationInteractor extends ChopperService {
  static AuthenticationInteractor create([ChopperClient? client]) =>
      _$AuthenticationInteractor(client);

  @Post(path: '/login')
  Future<Response> login({@Body() required Map<String, String> fields});
  @Post(path: '/register')
  Future<Response> register({@Body() required Map<String, String> fields});
}
