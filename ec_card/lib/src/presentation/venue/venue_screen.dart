// lib/src/presentation/venue/venue_screen.dart

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../application/venue/venue_cubit.dart';
import '../../application/venue/venue_state.dart';
import '../../data/venue/model/venue.dart';
import '../../injection.dart';
import '../core/res/app_colors.dart';
import 'map_controller_handle.dart';

class VenueScreen extends StatefulWidget {
  final LatLng initialCameraPosition;
  final MapControllerHandle completer;

  const VenueScreen({
    super.key,
    required this.initialCameraPosition,
    required this.completer,
  });

  @override
  State<VenueScreen> createState() => _VenueScreenState();
}

class _VenueScreenState extends State<VenueScreen> {
  final Set<Marker> _markers = {};

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<VenueCubit>()
        ..fetchNearbyVenues(
          latitude: widget.initialCameraPosition.latitude,
          longitude: widget.initialCameraPosition.longitude,
        ),
      child: Scaffold(
        body: BlocConsumer<VenueCubit, VenueState>(
          listener: (context, state) {
            if (state is VenueLoaded) {
              setState(() {
                _markers.clear();
                for (var venue in state.venues) {
                  _markers.add(
                    Marker(
                      markerId: MarkerId(venue.id),
                      position: LatLng(venue.latitude, venue.longitude),
                      infoWindow: InfoWindow(
                        title: venue.name,
                        snippet: venue.address,
                      ),
                      icon: BitmapDescriptor.defaultMarkerWithHue(
                        BitmapDescriptor.hueAzure,
                      ),
                      onTap: () {
                        context.read<VenueCubit>().selectVenue(venue);
                      },
                    ),
                  );
                }
              });
            }
          },
          builder: (context, state) {
            return Stack(
              children: [
                // 1. Google Map View
                GoogleMap(
                  initialCameraPosition: CameraPosition(
                    target: widget.initialCameraPosition,
                    zoom: 14.5,
                  ),
                  myLocationEnabled: true,
                  myLocationButtonEnabled: false,
                  zoomControlsEnabled: false,
                  markers: _markers,
                  onMapCreated: (controller) {
                    if (!widget.completer.completer.isCompleted) {
                      widget.completer.completer.complete(controller);
                    }
                  },
                ),

                // 2. Top Header Bar
                SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    child: Card(
                      elevation: 4,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                        child: Row(
                          children: [
                            Icon(Icons.local_pharmacy, color: primaryBackgroundColor),
                            const SizedBox(width: 12),
                            const Expanded(
                              child: Text(
                                'Nearby EC Pharmacies & Clinics',
                                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),

                // 3. Bottom Sliding Pharmacy Cards
                if (state is VenueLoaded && state.venues.isNotEmpty)
                  Positioned(
                    left: 0,
                    right: 0,
                    bottom: 80, // Center FAB ke upar space
                    height: 140,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      itemCount: state.venues.length,
                      itemBuilder: (context, index) {
                        final venue = state.venues[index];
                        final isSelected = state.selectedVenue?.id == venue.id;

                        return Container(
                          width: 280,
                          margin: const EdgeInsets.symmetric(horizontal: 6, vertical: 4),
                          child: Card(
                            elevation: isSelected ? 6 : 3,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(14),
                              side: isSelected
                                  ? BorderSide(color: primaryBackgroundColor, width: 2)
                                  : BorderSide.none,
                            ),
                            child: InkWell(
                              borderRadius: BorderRadius.circular(14),
                              onTap: () {
                                context.read<VenueCubit>().selectVenue(venue);
                                widget.completer.animateTo(
                                  LatLng(venue.latitude, venue.longitude),
                                  zoom: 16.0,
                                );
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(12),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Row(
                                      children: [
                                        Icon(Icons.store, size: 18, color: primaryBackgroundColor),
                                        const SizedBox(width: 6),
                                        Expanded(
                                          child: Text(
                                            venue.name,
                                            maxLines: 1,
                                            overflow: TextOverflow.ellipsis,
                                            style: const TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 14,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 6),
                                    Text(
                                      venue.address,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(color: Colors.grey[600], fontSize: 12),
                                    ),
                                    const Spacer(),
                                    Row(
                                      children: [
                                        const Icon(Icons.access_time, size: 14, color: Colors.green),
                                        const SizedBox(width: 4),
                                        Text(
                                          venue.openingHours,
                                          style: const TextStyle(fontSize: 11, color: Colors.green),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),

                // Loading Indicator
                if (state is VenueLoading)
                  const Center(
                    child: CircularProgressIndicator(),
                  ),
              ],
            );
          },
        ),
      ),
    );
  }
}