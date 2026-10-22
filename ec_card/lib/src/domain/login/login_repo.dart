// lib/src/domain/login/login_repo.dart

import 'package:dartz/dartz.dart';
import '../core/errors/failures.dart';

// Yeh UI aur Data layer ke beech ka bridge hai
abstract class LoginRepo {
  // Login function jo email aur password lega aur Either (Success ya Failure) return karega
  Future<Either<Failure, bool>> login({
    required String email, 
    required String password,
  });
  
  // Signup aur baki auth contracts bhi yahan aayenge
}