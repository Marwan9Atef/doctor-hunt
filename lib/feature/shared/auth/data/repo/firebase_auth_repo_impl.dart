import 'package:dartz/dartz.dart';
import 'package:doctor_hunt/feature/shared/auth/data/service/auth_remote_service.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:doctor_hunt/core/error/app_exception.dart';
import 'package:doctor_hunt/core/failure/failure.dart';

import 'package:doctor_hunt/feature/shared/auth/domain/repo/auth_repo.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: AuthRepo)
class FirebaseAuthRepoImpl implements AuthRepo {
  final AuthRemoteService _authService;
  FirebaseAuthRepoImpl(this._authService);
  
  @override
  Future<Either<Failure, UserCredential>> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      final userCredential = await _authService.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return Right(userCredential);
    } on FirebaseAuthExceptionWrapper catch (exception) {
      return Left(Failure(exception.message));
    }
  }

  @override
  Future<Either<Failure, Unit>> signOut() async {
    try {
      await _authService.signOut();
      return Right(unit);
    } on FirebaseAuthExceptionWrapper catch (exception) {
      return Left(Failure(exception.message));
    }
  }

  @override
  Future<Either<Failure, UserCredential>> signUpWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      final userCredential = await _authService.signUpWithEmailAndPassword(
        email: email,
        password: password,
      );
      return Right(userCredential);
    } on FirebaseAuthExceptionWrapper catch (exception) {
      return Left(Failure(exception.message));
    }
  }
}
