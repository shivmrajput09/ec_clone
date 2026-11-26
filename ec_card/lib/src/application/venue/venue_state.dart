part of 'venue_cubit.dart';

@freezed
class VenueState with _$VenueState {
  const factory VenueState({
    @Default(false) bool isVenueLoading,
    @Default([]) List<VenueEntity> venuesList,
    @Default([]) List<VenueEntity> filteredVenuesList,
    @Default([]) List<VenueEntity> filteredIVTSList,
    @Default('') String query,
    @Default(false) bool isVenueSearchLoading,
    @Default(0) double latitude,
    @Default(0) double longitude,
    @Default([]) List<VenueEntity> ivtsList,
    @Default(false) bool isIVTSLoading,
    @Default(0) int selectedTabIndex,
    @Default([]) List<ProductEntity> productsList,
    @Default(false) bool isProductsLoading,
    @Default('No Products Available') String productsMessage,
    @Default('') String postalCode,
    @Default('') String phoneNumber,
  }) = _VenueState;
  factory VenueState.initial() => const VenueState(
        isVenueLoading: false,
        venuesList: [],
        filteredVenuesList: [],
        filteredIVTSList: [],
        query: '',
        isVenueSearchLoading: false,
        ivtsList: [],
        isIVTSLoading: false,
        selectedTabIndex: 0,
        productsList: [],
        isProductsLoading: false,
        productsMessage: 'No Products Available',
        postalCode: '',
        phoneNumber: '',
      );
}
