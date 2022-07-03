import 'base.dart';

class ProductionConfig extends Config {
  @override
  String get baseUrl => 'https://backend.dev.pimp-my-code.xyz';

  @override
  String get browserUrl => const String.fromEnvironment('WEB_URL', defaultValue: 'http://localhost');

  @override
  String get liveCodingUrl => const String.fromEnvironment('LIVE_BACKEND', defaultValue: 'http://localhost/4200');
}
