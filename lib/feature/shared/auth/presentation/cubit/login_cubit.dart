import 'package:doctor_hunt/feature/shared/auth/domain/repo/auth_repo.dart';
import 'package:doctor_hunt/feature/shared/auth/presentation/cubit/states/login_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class LoginCubit extends Cubit<LoginState> {
  final AuthRepo _authRepo;

  LoginCubit(this._authRepo) : super(const LoginInitial());

  Future<void> signIn({
    required String email,
    required String password,
  }) async {
    emit(const LoginLoading());
    final result = await _authRepo.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
    result.fold(
      (failure) => emit(LoginFailure(failure.message)),
      (credential) => emit(LoginSuccess(credential)),
    );
  }
}
