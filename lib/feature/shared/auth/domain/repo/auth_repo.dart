import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:doctor_hunt/core/failure/failure.dart';

abstract class AuthRepo {
  Future<Either<Failure, UserCredential>> signInWithEmailAndPassword({
    required String email,
    required String password,
  });
  Future<Either<Failure, UserCredential>> signUpWithEmailAndPassword({
    required String email,
    required String password,
  });
  Future<Either<Failure, Unit>> signOut();
}
