import 'package:chopper/chopper.dart';

@ChopperApi(baseUrl: '/auth')
abstract class AuthenticationInteractor extends ChopperService {
  @Post(path: '/login')
  Future<Response> login(@Body() Map<String, String> fields);
  @Post(path: '/register')
  Future<Response> register({@Body() Map<String, String> fields});
}
