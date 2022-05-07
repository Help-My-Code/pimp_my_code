import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import '../../../core/usecase.dart';

class LogoutUseCase extends NoParamsUseCase {
  final FlutterSecureStorage _storage;

  LogoutUseCase(this._storage);
  @override
  Future<void> call() async {
    await _storage.deleteAll();
  }
}
