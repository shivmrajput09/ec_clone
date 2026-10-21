import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';
import '../../domain/local_storage/secure_storage_manager.dart';

@LazySingleton(as: SecureStorageManager)
class SecureStorageManagerImpl implements SecureStorageManager {
  final FlutterSecureStorage _storage;

  SecureStorageManagerImpl() : _storage = const FlutterSecureStorage();

  @override
  Future<void> saveToken(String token) async {
    await _storage.write(key: 'jwt_token', value: token);
  }

  @override
  Future<String?> getToken() async {
    return await _storage.read(key: 'jwt_token');
  }

  @override
  Future<void> clearAll() async {
    await _storage.deleteAll();
  }
}