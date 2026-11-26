import 'dart:async';
import 'dart:convert';
import 'dart:isolate';

import 'package:ec_card_app/src/domain/local_storage/secure_storage_manager.dart';
import 'package:ec_card_app/src/domain/scanner/scanner_api_service.dart';
import 'package:ec_card_app/src/injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_isolate/flutter_isolate.dart';
import 'package:ec_card_app/src/data/core/logging/app_log.dart';

final StreamController<String> isolateStreamController =
    StreamController<String>();

class OfflineSyncService {
  FlutterIsolate? _isolate;
  SendPort? _sendPort;

  final _isolateReady = Completer<void>();

  OfflineSyncService() {
    init();
  }

  Future<void> get isReady => _isolateReady.future;

  Future<void> init() async {
    try {
      final ReceivePort receivePort = ReceivePort();

      receivePort.listen(_handleMessage);

      _isolate = await FlutterIsolate.spawn(
        _isolateEntry,
        receivePort.sendPort,
      );
    } catch (e) {
      rethrow;
    }
  }

  void dispose() {
    if (_isolate != null) _isolate!.kill();
  }

  void _handleMessage(dynamic message) {
    if (message is SendPort) {
      _sendPort = message;
      _sendPort!.send("Start");

      return;
    }

    if (message is int) {
      isolateStreamController.sink.add(message.toString());
      if (message != 0) {
        appLog('function completed with non zero value');
      } else {
        appLog(' Delivery sync service runned successfully');
      }
    }
  }

  static void _isolateEntry(dynamic message) {
    SendPort? sendPort;
    final ReceivePort receivePort = ReceivePort();

    receivePort.listen((dynamic message) async {
      assert(message is String);

      WidgetsFlutterBinding.ensureInitialized();

      configureInjection();

      final exitCode = await syncUndeliveredItems();

      sendPort!.send(exitCode);
    });

    if (message is SendPort) {
      sendPort = message;
      sendPort.send(receivePort.sendPort);

      return;
    }
  }

  static Future<int> syncUndeliveredItems() async {
    try {
      final scannerAPIService = getIt<ScannerAPIService>();
      final secureStorageManager = getIt<SecureStorgeManager>();

      final scannedData =
          await secureStorageManager.getClaimTransactionDataFromLocal();

      if (scannedData != null) {
        final Map<String, dynamic> map = jsonDecode(scannedData);
        // await scannerAPIService.claimTransactionAPI(
        //   map["qrCode"],
        //   map["transactionTime"],
        // );
        await scannerAPIService.offlineSync(
            qrCode: map["qrCode"],
            transactionTime: map["transactionTime"]);

        await secureStorageManager.deleteClaimTransactionDataFromLocal();
        return 0;
      } else {
        return 1;
      }
    } catch (e) {
      return 1;
    }
  }
}
