// lib/src/application/venue/venue_state.dart

import '../../data/venue/model/venue.dart';

abstract class VenueState {
  const VenueState();
}

class VenueInitial extends VenueState {}

class VenueLoading extends VenueState {}

class VenueLoaded extends VenueState {
  final List<Venue> venues;
  final Venue? selectedVenue;

  const VenueLoaded({required this.venues, this.selectedVenue});
}

class VenueError extends VenueState {
  final String message;
  const VenueError(this.message);
}