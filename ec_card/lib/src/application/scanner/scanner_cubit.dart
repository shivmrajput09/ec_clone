import 'dart:async';
import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:ec_card_app/src/data/core/network_info.dart';
import 'package:ec_card_app/src/data/scanner/model/product_model.dart';
import 'package:ec_card_app/src/domain/core/errors/errors.dart';
import 'package:ec_card_app/src/domain/scanner/scanner_repo.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:ec_card_app/src/data/core/logging/app_log.dart';

part 'scanner_state.dart';
part 'scanner_cubit.freezed.dart';

@injectable
class ScannerCubit extends Cubit<ScannerState> {
  ScannerCubit(this.scannerRepo, this._networkInfo)
      : super(ScannerState.initial());

  final ScannerRepository scannerRepo;
  StreamSubscription? _networkStream;
  final NetworkInfo _networkInfo;

  @override
  Future<void> close() {
    _networkStream?.cancel();
    return super.close();
  }

  void updateNetworkStatus() async {
    if (await _networkInfo.isConnected) {
      emit(state.copyWith(isConnectedToInternet: true));
      appLog("SCANNER CUBIT: Network Connected");
    } else {
      emit(state.copyWith(isConnectedToInternet: false));
      appLog("SCANNER CUBIT: Network Disconnected");
    }

    _networkStream =
        _networkInfo.listenForConnectionStatus.listen((networkStatus) {
      appLog(
          "---------- SCANNER CUBIT: NetworkStatus  Value: $networkStatus");
      emit(state.copyWith(
        isConnectedToInternet: networkStatus,
      ));
    });
  }

  void checkEligibility() async {
    emit(state.copyWith(
        isEligibleLoading: true,
        eligibilityData: {},
        eligibleFailureOrSuccess: none()));

    final result = await scannerRepo.checkEligibilityForTransaction(
        isConnectedToInternet: state.isConnectedToInternet);

    result.fold((l) {
      emit(state.copyWith(
        isEligibleLoading: false,
        eligibleFailureOrSuccess: some(left(l)),
      ));
    }, (r) {
      final Map<String, dynamic> eligibleData = jsonDecode(r);
      appLog("SCANNER CUBIT: $eligibleData");
      emit(state.copyWith(
        isEligibleLoading: false,
        eligibleFailureOrSuccess: some(right(r)),
        eligibilityData: eligibleData,
      ));
    });
  }

  void claimTransaction(String qrCode) async {
    emit(state.copyWith(
        isClaimTransactionLoading: true,
        qrCode: qrCode,
        eligibleFailureOrSuccess: none(),
        claimTransactionFailureOrSuccess: none(),
        productListFailureOrSuccess: none()));

    final res = await scannerRepo.getProductsBasedOnQRCode(qrCode: qrCode);

    res.fold((l) {
      emit(
        state.copyWith(
            isClaimTransactionLoading: false,
            productListFailureOrSuccess: some(left(l))),
      );
    }, (r) async {
      // appLog("SCANNER CUBIT CLAIM TRANSCACTION: $r");
      if (r['noListRequired'] == true) {
        //Call the claimm transaction API
        final result = await scannerRepo.claimTransactionOnScan({
          "qrTransactionCode": qrCode,
          "transactionTime": DateTime.now().toUtc().toString(),
        });

        result.fold((l) {
          emit(state.copyWith(
            isClaimTransactionLoading: false,
            claimTransactionFailureOrSuccess: some(left(l)),
          ));
        }, (r) {
          emit(state.copyWith(
            isClaimTransactionLoading: false,
            claimTransactionFailureOrSuccess: some(right(r)),
          ));
        });
      } else {
        emit(state.copyWith(
          isClaimTransactionLoading: false,
          venueDetails: r['venue'],
          productListFailureOrSuccess: some(right(true)),
          productsList: convertIntoProductsList(
              List<Map<String, dynamic>>.from(r['products'])),
        ));
      }
    });

    emit(state.copyWith(
      isClaimTransactionLoading: false,
    ));
  }

  void onProductConfimed(ProductModel selectedProduct) async {
    emit(state.copyWith(
      isConfirmProductLoading: true,
      eligibleFailureOrSuccess: none(),
      claimTransactionFailureOrSuccess: none(),
      productListFailureOrSuccess: none(),
      productTransactionClaimFailureOrSuccess: none(),
    ));

    final res = await scannerRepo.claimTransactionOnScan({
      "qrTransactionCode": state.qrCode,
      "transactionTime": DateTime.now().toUtc().toString(),
      "orgProductId": selectedProduct.orgProductId
    });

    res.fold((l) {
      emit(state.copyWith(
        isConfirmProductLoading: false,
        productTransactionClaimFailureOrSuccess: some(left(l)),
      ));
    }, (r) {
      emit(state.copyWith(
        isConfirmProductLoading: false,
        productTransactionClaimFailureOrSuccess: some(right(r)),
      ));
    });
  }
}
