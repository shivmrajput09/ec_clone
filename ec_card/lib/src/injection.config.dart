// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import 'data/core/api/api_module.dart' as _i152;
import 'data/local_storage/secure_storage_manager_impl.dart' as _i60;
import 'data/login/login_repo_impl.dart' as _i220;
import 'domain/login/login_repo.dart' as _i963;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final apiModule = _$ApiModule();
    gh.lazySingleton<_i361.Dio>(() => apiModule.dio);
    gh.lazySingleton<_i60.SecureStorageManagerImpl>(
      () => _i60.SecureStorageManagerImpl(),
    );
    gh.lazySingleton<_i963.LoginRepo>(
      () => _i220.LoginRepoImpl(gh<_i361.Dio>(), gh<InvalidType>()),
    );
    return this;
  }
}

class _$ApiModule extends _i152.ApiModule {}
