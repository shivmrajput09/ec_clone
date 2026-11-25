// lib/src/application/venue/venue_cubit.dart

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../data/venue/model/venue.dart';
import '../../domain/venue/venue_repo.dart';
import 'venue_state.dart';

@injectable
class VenueCubit extends Cubit<VenueState> {
  final VenueRepository _venueRepo;

  VenueCubit(this._venueRepo) : super(VenueInitial());

  Future<void> fetchNearbyVenues({
    required double latitude,
    required double longitude,
  }) async {
    emit(VenueLoading());

    final result = await _venueRepo.getVenuesList(
      latitude: latitude,
      longitude: longitude,
    );

    result.fold(
      (failure) => emit(const VenueError('Failed to load nearby pharmacies.')),
      (venues) => emit(VenueLoaded(venues: venues)),
    );
  }

  void selectVenue(Venue venue) {
    if (state is VenueLoaded) {
      final currentVenues = (state as VenueLoaded).venues;
      emit(VenueLoaded(venues: currentVenues, selectedVenue: venue));
    }
  }
}