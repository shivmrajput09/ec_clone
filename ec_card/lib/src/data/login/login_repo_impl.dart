// lib/src/data/login/login_repo_impl.dart

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../domain/core/errors/failures.dart';
import '../../domain/local_storage/secure_storage_manager.dart';
import '../../domain/login/login_repo.dart';
import '../core/api/api_handler.dart';

// @LazySingleton GetIt ko batata hai ki jab koi UI LoginRepo mange, toh yeh class deni hai
@LazySingleton(as: LoginRepo)
class LoginRepoImpl implements LoginRepo {
  final Dio _dio;
  final SecureStorageManager _storageManager;

  // Constructor mein GetIt automatically Dio aur Storage de dega
  LoginRepoImpl(this._dio, this._storageManager);

  @override
  Future<Either<Failure, bool>> login({
    required String email, 
    required String password,
  }) async {
    // ApiHandler humein crash se bachayega
    return await ApiHandler.execute(() async {
      
      final response = await _dio.post(
        'auth/login', // BaseURL pehle se ApiModule mein set hai
        data: {
          'email': email,
          'password': password,
        },
      );

      // Agar login successful hai, toh token extract karke Secure Storage mein save karo
      if (response.statusCode == 200 || response.statusCode == 201) {
        final token = response.data['token']; // API ke response format par depend karega
        if (token != null) {
          await _storageManager.saveToken(token);
          return true;
        }
      }
      
      throw Exception('Token not found in response');
    });
  }
}