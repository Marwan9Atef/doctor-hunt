import 'package:doctor_hunt/feature/shared/auth/domain/repo/auth_repo.dart';
import 'package:doctor_hunt/feature/shared/auth/presentation/cubit/states/register_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class RegisterCubit extends Cubit<RegisterState> {
  final AuthRepo _authRepo;

  RegisterCubit(this._authRepo) : super(const RegisterInitial());

  Future<void> signUp({required String email, required String password}) async {
    emit(const RegisterLoading());
    final result = await _authRepo.signUpWithEmailAndPassword(
      email: email,
      password: password,
    );
    result.fold(
      (failure) => emit(RegisterFailure(failure.message)),
      (credential) => emit(RegisterSuccess(credential)),
    );
  }
}
