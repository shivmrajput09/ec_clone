
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

@module
abstract class AppModule {
  // modified this line by Mikoo
  @lazySingleton
  InternetConnectionChecker get internetConnectionChecker =>
      kIsWeb ? FakeInternetConnectionChecker() : InternetConnectionChecker();


  @lazySingleton
  Connectivity get connectivity => Connectivity();

  @lazySingleton
  DeviceInfoPlugin get deviceInfoPlugin => DeviceInfoPlugin();

  @lazySingleton
  FlutterSecureStorage provideFlutterSecureStorage() =>
      FlutterSecureStorage(aOptions: _androidOptions);

  AndroidOptions get _androidOptions => const AndroidOptions(
        encryptedSharedPreferences: true,
      );
}


// added new class by Mikoo
class FakeInternetConnectionChecker implements InternetConnectionChecker {
  @override
  Future<bool> get hasConnection async => true;

  @override
  Stream<InternetConnectionStatus> get onStatusChange async* {
    yield InternetConnectionStatus.connected;
  }

  @override
  Future<InternetConnectionStatus> get connectionStatus async =>
      Future.value(InternetConnectionStatus.connected);

  @override
  Duration get checkInterval => const Duration(seconds: 5);

  @override
  Duration get checkTimeout => const Duration(seconds: 2);

  @override
  bool get hasListeners => false;

  @override
  bool get isActivelyChecking => false;

  @override
  Future<AddressCheckResult> isHostReachable(AddressCheckOptions options) async {
    return AddressCheckResult(options.address as AddressCheckOptions, isSuccess: true);
  }

  @override
  late List<AddressCheckOptions> addresses;
}




