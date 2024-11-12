import 'package:get_storage/get_storage.dart';

class Storage {
  final GetStorage _storage = GetStorage();

  void login(bool isLogin) => _storage.write('isLogin', isLogin);
  bool isLogin() => _storage.read<bool>('isLogin') ?? false;
  void logout() {
    _storage.write("isLogin", false);
  }

  void token(String token) => _storage.write('token', token);
  String getToken() => _storage.read('token');
}