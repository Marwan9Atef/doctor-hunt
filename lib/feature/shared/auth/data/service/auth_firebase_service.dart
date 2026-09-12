import 'package:doctor_hunt/feature/shared/auth/data/service/auth_remote_service.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:doctor_hunt/core/error/app_exception.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: AuthRemoteService)
class AuthFirebaseService implements AuthRemoteService {
  final FirebaseAuth _auth;
  AuthFirebaseService(this._auth);
  User? get currentUser => _auth.currentUser;
  Stream<User?> get authStateChanges => _auth.authStateChanges();

  @override
  Future<UserCredential> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      final credential = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return credential;
    } catch (exception) {
      final message = extractFirebaseAuthErrorMessage(exception);
      throw FirebaseAuthExceptionWrapper(message);
    }
  }

  @override
  Future<UserCredential> signUpWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      final credential = await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return credential;
    } catch (exception) {
      final message = extractFirebaseAuthErrorMessage(exception);
      throw FirebaseAuthExceptionWrapper(message);
    }
  }

  @override
  Future<void> signOut() async {
    try {
      await _auth.signOut();
    } catch (exception) {
      final message = extractFirebaseAuthErrorMessage(exception);
      throw FirebaseAuthExceptionWrapper(message);
    }
  }
}
