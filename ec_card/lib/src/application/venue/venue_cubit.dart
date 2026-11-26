import 'package:bloc/bloc.dart';
import 'package:ec_card_app/src/data/venue/model/entity/venue_entity.dart';
import 'package:ec_card_app/src/data/venue/model/entity/venue_products_entity.dart';
import 'package:ec_card_app/src/domain/venue/venue_repo.dart';
// import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:ec_card_app/src/data/core/logging/app_log.dart';

part 'venue_state.dart';
part 'venue_cubit.freezed.dart';

@injectable
class VenueCubit extends Cubit<VenueState> {
  VenueCubit(this.venueRepo) : super(VenueState.initial());

  final VenueRepository venueRepo;

  void getVenuesList(double latitude, double longitude) async {
    emit(state.copyWith(isVenueLoading: true));

    final result = await venueRepo.getVenuesList(latitude, longitude);
    result.fold((l) {
      emit(state.copyWith(
        venuesList: [],
        isVenueLoading: false,
      ));
    }, (r) {
      // appLog('------ VENUE CUBIT: GET VENUES LIST --------> $r');
      final venueList = convertIntoListOfVenueEntity(r);
      emit(state.copyWith(
        venuesList: venueList,
        isVenueLoading: false,
      ));
    });

    getIVTSList(latitude, longitude);
  }

  void getIVTSList(double latitude, double longitude) async {
    emit(state.copyWith(isIVTSLoading: true));

    final res = await venueRepo.getIvtsList(latitude, longitude);
    res.fold((l) {
      emit(state.copyWith(
        ivtsList: [],
        isIVTSLoading: false,
      ));
    }, (r) {
      emit(state.copyWith(
        ivtsList: convertIntoListOfVenueEntity(r),
        isIVTSLoading: false,
      ));
    });
  }

  void setSelectedTabIndex(int val) async {
    emit(state.copyWith(
      selectedTabIndex: val,
    ));
  }

  void searchVenue(String query) {
    emit(
        state.copyWith(isVenueSearchLoading: true, query: query.toLowerCase()));
    if (state.query.isNotEmpty) {
      List<VenueEntity> searchVenueList = [];
      searchVenueList = state.venuesList
          .where((element) =>
              element.storeSearch!.toLowerCase().contains(state.query))
          .toList();

      List<VenueEntity> searchedIVTSList = [];
      searchedIVTSList = state.ivtsList
          .where((element) =>
              element.storeSearch!.toLowerCase().contains(state.query))
          .toList();

      List<VenueEntity> searchedList = List<VenueEntity>.from(searchVenueList);
      searchedList.addAll(searchedIVTSList);

      emit(state.copyWith(
        isVenueSearchLoading: false,
        filteredVenuesList: query.isNotEmpty ? searchedList : [],
      ));
    } else {
      emit(state.copyWith(
        isVenueSearchLoading: false,
        filteredVenuesList: [],
      ));
    }
  }

  void clearSearch() {
    emit(state.copyWith(
      query: '',
      filteredVenuesList: [],
    ));
  }

  void setLatLong(double latitude, double longitude) {
    emit(state.copyWith(
      latitude: latitude,
      longitude: longitude,
    ));
  }

  void getProductsList() async {
    emit(state.copyWith(isProductsLoading: true));

    final res = await venueRepo.getProductsList();
    res.fold(
      (l) {
        emit(state.copyWith(
          productsList: [],
          productsMessage: 'Failed to load products.',
          isProductsLoading: false,
          phoneNumber: '',
          postalCode: '',
        ));
      },
      (r) {
        final productsList = convertIntoListOfProductEntity(r.list);
        emit(state.copyWith(
          productsList: productsList,
          productsMessage: r.message,
          phoneNumber: r.phoneNumber,
          postalCode: r.postalCode,
          isProductsLoading: false,
        ));
      },
    );
  }
}
