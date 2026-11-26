// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:connectivity_plus/connectivity_plus.dart' as _i8;
import 'package:device_info_plus/device_info_plus.dart' as _i9;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i14;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:internet_connection_checker/internet_connection_checker.dart'
    as _i15;

import 'application/account/account_cubit.dart' as _i39;
import 'application/core/application_bloc.dart' as _i49;
import 'application/loading_status/loading_status_cubit.dart' as _i50;
import 'application/login/login_cubit.dart' as _i51;
import 'application/message/message_cubit.dart' as _i44;
import 'application/otp/otp_cubit.dart' as _i45;
import 'application/register/register_cubit.dart' as _i29;
import 'application/venue/venue_cubit.dart' as _i48;
import 'data/account/account_repo_impl.dart' as _i6;
import 'data/account/api/account_api_service_impl.dart' as _i4;
import 'data/core/api/api_service.dart' as _i7;
import 'data/core/app_module.dart' as _i52;
import 'data/core/network_info.dart' as _i24;
import 'data/education/api/education_api_service_impl.dart' as _i11;
import 'data/education/education_repo_impl.dart' as _i13;
import 'data/loading_status/api/loading_status_api_service_impl.dart' as _i17;
import 'data/loading_status/loading_status_repo_impl.dart' as _i41;
import 'data/local_storage/secure_storage_manager_impl.dart' as _i34;
import 'data/login/api/login_api_service_impl.dart' as _i19;
import 'data/login/login_repo_impl.dart' as _i43;
import 'data/messages/api/message_api_service_impl.dart' as _i21;
import 'data/messages/message_repo_impl.dart' as _i23;
import 'data/quiz/api/quiz_api_service_impl.dart' as _i26;
import 'data/quiz/quiz_repo_impl.dart' as _i28;
import 'data/scanner/api/scanner_api_service_impl.dart' as _i32;
import 'data/scanner/scanner_repo_impl.dart' as _i47;
import 'data/venue/api/venue_api_service_impl.dart' as _i36;
import 'data/venue/venue_repo_impl.dart' as _i38;
import 'domain/account/account_api_service.dart' as _i3;
import 'domain/account/account_repo.dart' as _i5;
import 'domain/education/education_api_service.dart' as _i10;
import 'domain/education/education_repo.dart' as _i12;
import 'domain/loading_status/loading_status_api_service.dart' as _i16;
import 'domain/loading_status/loading_status_repo.dart' as _i40;
import 'domain/local_storage/secure_storage_manager.dart' as _i33;
import 'domain/login/login_api_service.dart' as _i18;
import 'domain/login/login_repo.dart' as _i42;
import 'domain/messages/message_api_service.dart' as _i20;
import 'domain/messages/message_repo.dart' as _i22;
import 'domain/quiz/quiz_api_service.dart' as _i25;
import 'domain/quiz/quiz_repo.dart' as _i27;
import 'domain/register/register_repo.dart' as _i30;
import 'domain/scanner/scanner_api_service.dart' as _i31;
import 'domain/scanner/scanner_repo.dart' as _i46;
import 'domain/venue/venue_api_service.dart' as _i35;
import 'domain/venue/venue_repo.dart'
    as _i37; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  final appModule = _$AppModule();
  gh.lazySingleton<_i3.AccountAPIService>(() => _i4.AccountAPIServiceImpl());
  gh.lazySingleton<_i5.AccountRepository>(() => _i6.AccountRepoImpl());
  gh.factory<_i7.ApiService>(() => _i7.ApiService());
  gh.lazySingleton<_i8.Connectivity>(() => appModule.connectivity);
  gh.lazySingleton<_i9.DeviceInfoPlugin>(() => appModule.deviceInfoPlugin);
  gh.lazySingleton<_i10.EducationAPIService>(
      () => _i11.EducationAPIServiceImpl());
  gh.lazySingleton<_i12.EducationRepository>(() => _i13.EducationRepoImpl());
  gh.lazySingleton<_i14.FlutterSecureStorage>(
      () => appModule.provideFlutterSecureStorage());
  gh.lazySingleton<_i15.InternetConnectionChecker>(
      () => appModule.internetConnectionChecker);
  gh.lazySingleton<_i16.LoadingStatusAPIService>(
      () => _i17.LoadingStatusAPIServcieImpl());
  gh.lazySingleton<_i18.LoginAPIService>(() => _i19.LoginAPIServiceImpl());
  gh.lazySingleton<_i20.MessageAPIService>(() => _i21.MessageAPIServiceImpl());
  gh.lazySingleton<_i22.MessageRepository>(() => _i23.MessageRepoImpl());
  gh.lazySingleton<_i24.NetworkInfo>(() => _i24.NetworkInfoImpl(
        get<_i15.InternetConnectionChecker>(),
        get<_i8.Connectivity>(),
      ));
  gh.lazySingleton<_i25.QuizAPIService>(() => _i26.QuizAPIServiceImpl());
  gh.lazySingleton<_i27.QuizRepository>(() => _i28.QuizRepositoryImpl());
  gh.factory<_i29.RegisterCubit>(
      () => _i29.RegisterCubit(get<_i30.RegisterRepository>()));
  gh.lazySingleton<_i31.ScannerAPIService>(() => _i32.ScannerAPIServiceImpl());
  gh.lazySingleton<_i33.SecureStorgeManager>(
      () => _i34.SecureStorageManagerImpl(get<_i14.FlutterSecureStorage>()));
  gh.lazySingleton<_i35.VenueAPIService>(() => _i36.VenueAPIServiceImpl());
  gh.lazySingleton<_i37.VenueRepository>(() => _i38.VenueRepoImpl());
  gh.factory<_i39.AccountCubit>(
      () => _i39.AccountCubit(get<_i5.AccountRepository>()));
  gh.lazySingleton<_i40.LoadingStatusRepository>(
      () => _i41.LoadingStatusRepoImpl(get<_i33.SecureStorgeManager>()));
  gh.lazySingleton<_i42.LoginRepository>(() => _i43.LoginRepositoryImpl(
        get<_i33.SecureStorgeManager>(),
        get<_i14.FlutterSecureStorage>(),
      ));
  gh.factory<_i44.MessageCubit>(() => _i44.MessageCubit(
        get<_i22.MessageRepository>(),
        get<_i12.EducationRepository>(),
      ));
  gh.factory<_i45.OtpCubit>(() => _i45.OtpCubit(
        get<_i42.LoginRepository>(),
        get<_i30.RegisterRepository>(),
      ));
  gh.lazySingleton<_i46.ScannerRepository>(
      () => _i47.ScannerRepoImpl(get<_i33.SecureStorgeManager>()));
  gh.factory<_i48.VenueCubit>(
      () => _i48.VenueCubit(get<_i37.VenueRepository>()));
  gh.singleton<_i49.ApplicationBloc>(_i49.ApplicationBloc(
    get<_i24.NetworkInfo>(),
    get<_i33.SecureStorgeManager>(),
    get<_i42.LoginRepository>(),
  ));
  gh.factory<_i50.LoadingStatusCubit>(() => _i50.LoadingStatusCubit(
        get<_i40.LoadingStatusRepository>(),
        get<_i46.ScannerRepository>(),
        get<_i24.NetworkInfo>(),
      ));
  gh.factory<_i51.LoginCubit>(
      () => _i51.LoginCubit(loginRepo: get<_i42.LoginRepository>()));
  return get;
}

class _$AppModule extends _i52.AppModule {}
