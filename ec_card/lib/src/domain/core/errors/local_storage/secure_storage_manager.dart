abstract class SecureStorageManager {
  Future<void> saveToken(String token);
  Future<String?> getToken();
  Future<void> clearAll();
}