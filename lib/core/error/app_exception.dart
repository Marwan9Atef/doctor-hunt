import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';

class AppException implements Exception {
  final String message;
  const AppException(this.message);
}

class FirebaseAuthExceptionWrapper extends AppException {
  const FirebaseAuthExceptionWrapper(super.message);
}

class NetworkException extends AppException {
  const NetworkException([super.message = 'No internet connection']);
}

class UnknownException extends AppException {
  const UnknownException([super.message = 'An unexpected error occurred']);
}


String extractFirebaseAuthErrorMessage(Object exception) {
  if (exception is FirebaseAuthException) {
    switch (exception.code) {
      case 'user-not-found':
        return 'No user found with this email address';
      case 'wrong-password':
        return 'Incorrect password, please try again';
      case 'invalid-email':
        return 'Invalid email address format';
      case 'user-disabled':
        return 'This account has been disabled';
      case 'email-already-in-use':
        return 'An account already exists with this email';
      case 'weak-password':
        return 'Password should be at least 6 characters';
      case 'invalid-credential':
        return 'Uncorrect email or password, please check your email and password';
      case 'network-request-failed':
        return 'No internet connection, please check your network';
      case 'too-many-requests':
        return 'Too many failed attempts. Please try again later';
      case 'operation-not-allowed':
        return 'This sign-in method is not enabled';
      case 'channel-error':
        return 'Authentication service unavailable. Please try again';
      default:
        return exception.message ?? 'Authentication failed. Please try again';
    }
  }
  
  if (exception is FirebaseException) {
    if (exception.code == 'network-request-failed') {
      return 'No internet connection, please check your network';
    }
    return exception.message ?? 'An error occurred. Please try again';
  }

  if (exception is PlatformException) {
    if (exception.code == 'ERROR_OPERATION_NOT_ALLOWED' ||
        (exception.message?.contains('operation-not-allowed') ?? false)) {
      return 'This sign-in method is not enabled. Please contact support';
    }
    return 'An error occurred. Please try again';
  }

  return 'An unexpected error occurred. Please try again';
}
