import 'package:firebase_auth/firebase_auth.dart';

sealed class RegisterState {
  const RegisterState();
}

final class RegisterInitial extends RegisterState {
  const RegisterInitial();
}

final class RegisterLoading extends RegisterState {
  const RegisterLoading();
}

final class RegisterSuccess extends RegisterState {
  final UserCredential userCredential;
  const RegisterSuccess(this.userCredential);
}

final class RegisterFailure extends RegisterState {
  final String message;
  const RegisterFailure(this.message);
}
