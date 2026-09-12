// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:doctor_hunt/core/di/register_module.dart' as _i438;
import 'package:doctor_hunt/feature/shared/auth/data/repo/firebase_auth_repo_impl.dart'
    as _i540;
import 'package:doctor_hunt/feature/shared/auth/data/service/auth_firebase_service.dart'
    as _i7;
import 'package:doctor_hunt/feature/shared/auth/data/service/auth_remote_service.dart'
    as _i86;
import 'package:doctor_hunt/feature/shared/auth/domain/repo/auth_repo.dart'
    as _i631;
import 'package:doctor_hunt/feature/shared/auth/presentation/cubit/login_cubit.dart'
    as _i485;
import 'package:doctor_hunt/feature/shared/auth/presentation/cubit/register_cubit.dart'
    as _i875;
import 'package:firebase_auth/firebase_auth.dart' as _i59;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final registerModule = _$RegisterModule();
    gh.lazySingleton<_i59.FirebaseAuth>(() => registerModule.firebaseAuth);
    gh.lazySingleton<_i86.AuthRemoteService>(
      () => _i7.AuthFirebaseService(gh<_i59.FirebaseAuth>()),
    );
    gh.lazySingleton<_i631.AuthRepo>(
      () => _i540.FirebaseAuthRepoImpl(gh<_i86.AuthRemoteService>()),
    );
    gh.factory<_i485.LoginCubit>(() => _i485.LoginCubit(gh<_i631.AuthRepo>()));
    gh.factory<_i875.RegisterCubit>(
      () => _i875.RegisterCubit(gh<_i631.AuthRepo>()),
    );
    return this;
  }
}

class _$RegisterModule extends _i438.RegisterModule {}
