import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class PrefsAndAppData {
  FlutterSecureStorage storage = FlutterSecureStorage();

  Future<void> saveAccessToken(String accessToken) async {
    await storage.write(key: 'access_token', value: accessToken);
  }

  Future<String?> getAccessToken() async {
    return await storage.read(key: 'access_token');
  }

  Future<void> deleteAccessToken() async {
    await storage.delete(key: 'access_token');
  }
}
