// lib/src/injection.config.dart
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// ignore_for_file: type=lint
// coverage:ignore-file
// ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import 'application/core/application_bloc.dart' as _i642;
import 'application/loading_status/loading_status_cubit.dart' as _i360;
import 'application/login/login_cubit.dart' as _i1056;
import 'application/otp/otp_cubit.dart' as _i262;
import 'data/core/api/api_module.dart' as _i152;
import 'data/core/network_info.dart' as _i718;
import 'data/loading_status/loading_status_repo_impl.dart' as _i1001;
import 'data/scanner/scanner_repo_impl.dart' as _i1002;
import 'data/local_storage/secure_storage_manager_impl.dart' as _i60;
import 'data/login/login_repo_impl.dart' as _i220;
import 'domain/loading_status/loading_status_repo.dart' as _i968;
import 'domain/local_storage/secure_storage_manager.dart' as _i523;
import 'domain/login/login_repo.dart' as _i963;
import 'domain/scanner/scanner_repo.dart' as _i375;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final apiModule = _$ApiModule();
    gh.factory<_i262.OtpCubit>(
        () => _i262.OtpCubit(gh<_i963.LoginRepository>()));
    gh.lazySingleton<_i361.Dio>(() => apiModule.dio);
    gh.lazySingleton<_i718.NetworkInfo>(() => _i718.NetworkInfoImpl());
    gh.factory<_i360.LoadingStatusCubit>(() => _i360.LoadingStatusCubit(
          gh<_i968.LoadingStatusRepository>(),
          gh<_i375.ScannerRepository>(),
          gh<_i718.NetworkInfo>(),
        ));
    gh.lazySingleton<_i523.SecureStorgeManager>(
        () => _i60.SecureStorageManagerImpl());
    gh.lazySingleton<_i968.LoadingStatusRepository>(
        () => _i1001.LoadingStatusRepoImpl(gh<_i523.SecureStorgeManager>()));
    gh.lazySingleton<_i375.ScannerRepository>(
        () => _i1002.ScannerRepoImpl(gh<_i523.SecureStorgeManager>()));
    gh.lazySingleton<_i963.LoginRepository>(
        () => _i220.LoginRepositoryImpl(gh<_i523.SecureStorgeManager>()));
    gh.singleton<_i642.ApplicationBloc>(() => _i642.ApplicationBloc(
          gh<_i718.NetworkInfo>(),
          gh<_i523.SecureStorgeManager>(),
          gh<_i963.LoginRepository>(),
        ));
    gh.factory<_i1056.LoginCubit>(
        () => _i1056.LoginCubit(gh<_i963.LoginRepository>()));
    return this;
  }
}

class _$ApiModule extends _i152.ApiModule {}