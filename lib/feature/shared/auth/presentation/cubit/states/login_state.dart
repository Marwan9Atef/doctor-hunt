import 'package:firebase_auth/firebase_auth.dart';

sealed class LoginState {
  const LoginState();
}

final class LoginInitial extends LoginState {
  const LoginInitial();
}

final class LoginLoading extends LoginState {
  const LoginLoading();
}

final class LoginSuccess extends LoginState {
  final UserCredential userCredential;
  const LoginSuccess(this.userCredential);
}

final class LoginFailure extends LoginState {
  final String message;
  const LoginFailure(this.message);
}
