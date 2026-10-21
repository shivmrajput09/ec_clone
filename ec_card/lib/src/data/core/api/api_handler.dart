import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import '../../../domain/core/errors/failures.dart';

class ApiHandler {
  // Ek generic function jo tumhari kisi bhi API call ko safely execute karega
  static Future<Either<Failure, T>> execute<T>(Future<T> Function() apiRequest) async {
    try {
      // API call run karne ki koshish karo
      final response = await apiRequest();
      
      // Agar success hua, toh 'Right' mein data return karo
      return Right(response); 
      
    } on DioException catch (e) {
      // 1. Internet Disconnection ya Server band hone par
      if (e.type == DioExceptionType.connectionError || e.type == DioExceptionType.unknown) {
        return Left(NetworkFailure());
      }
      
      // 2. Timeout Errors
      if (e.type == DioExceptionType.connectionTimeout || e.type == DioExceptionType.receiveTimeout) {
        return Left(ServerFailure('Connection timed out. Server is too slow.'));
      }
      
      // 3. 401 Unauthorized (Token expire)
      if (e.response?.statusCode == 401) {
        return Left(AuthFailure());
      }

      // 4. Default Server Error (500 ya 404 etc)
      return Left(ServerFailure('Server Error: ${e.response?.statusCode}'));
      
    } catch (e) {
      // 5. Kisi aur anjaan crash (jaise JSON parsing error) ko pakadna
      return Left(ServerFailure('Unexpected error: $e'));
    }
  }
}