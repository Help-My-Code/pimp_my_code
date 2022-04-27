import 'package:chopper/chopper.dart';

part 'content.chopper.dart';

@ChopperApi(baseUrl: '/content')
abstract class ContentInteractor extends ChopperService {
  static ContentInteractor create([ChopperClient? client]) =>
      _$ContentInteractor(client);
}
