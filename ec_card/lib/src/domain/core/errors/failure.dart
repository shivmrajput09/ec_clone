// lib/src/domain/core/errors/failures.dart

abstract class Failure {
  final String message;
  Failure(this.message);
}

// Jab server crash ho ya 500 error aaye
class ServerFailure extends Failure {
  ServerFailure([super.message = 'Server Error occurred. Please try again.']);
}

// Jab user ka internet band ho
class NetworkFailure extends Failure {
  NetworkFailure([super.message = 'No Internet Connection. Check your network.']);
}

// Jab token expire ho jaye ya login galat ho (401)
class AuthFailure extends Failure {
  AuthFailure([super.message = 'Unauthorized. Please login again.']);
}