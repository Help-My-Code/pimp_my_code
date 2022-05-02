import 'package:chopper/chopper.dart';

part 'program.chopper.dart';

@ChopperApi(baseUrl: '/program')
abstract class ProgramInteractor extends ChopperService {
  static ProgramInteractor create([ChopperClient? client]) =>
      _$ProgramInteractor(client);

  @Post(path: '/execute')
  Future<Response> execute({@Body() required Map<String, String> fields});
}
