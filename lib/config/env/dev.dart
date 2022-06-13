import 'base.dart';

class DeveloppementConfig extends Config {
  @override
  String get baseUrl => 'http://localhost:3000';

  @override
  String get browserUrl => 'http://localhost';

  @override
  String get liveCodingUrl => 'http://localhost:4200/';
}
