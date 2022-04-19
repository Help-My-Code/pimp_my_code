import 'package:jwt_decoder/jwt_decoder.dart';

class TokenDecoder {
  static Map<String, dynamic> convertTokenToMap(String token) =>
      JwtDecoder.decode(token);
}
