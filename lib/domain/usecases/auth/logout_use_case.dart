import 'package:shared_preferences/shared_preferences.dart';
import '../../../core/usecase.dart';

class LogoutUseCase extends NoParamsUseCase {
  final SharedPreferences _storage;

  LogoutUseCase(this._storage);
  @override
  Future<void> call() async {
    await _storage.remove('token');
    await _storage.remove('id');
  }
}
