// lib/src/data/venue/venue_repo_impl.dart

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../domain/core/errors/errors.dart';
import '../../domain/venue/venue_repo.dart';
import 'model/venue.dart';

@LazySingleton(as: VenueRepository)
class VenueRepoImpl implements VenueRepository {
  @override
  Future<Either<AppErrors, List<Venue>>> getVenuesList({
    required double latitude,
    required double longitude,
  }) async {
    try {
      // User location ke aas-paas nearby participating NHS pharmacies
      final List<Venue> nearbyVenues = [
        Venue(
          id: 'v1',
          name: 'Boots Pharmacy - NHS Partner',
          address: 'High Street, Central Square',
          latitude: latitude + 0.0035,
          longitude: longitude + 0.0025,
          phone: '+44 20 7946 0912',
          openingHours: 'Mon - Sat: 8:00 AM - 8:00 PM',
        ),
        Venue(
          id: 'v2',
          name: 'Superdrug Health & Contraception Clinic',
          address: 'Westgate Shopping Centre, Unit 4',
          latitude: latitude - 0.0028,
          longitude: longitude - 0.0031,
          phone: '+44 20 7946 0845',
          openingHours: 'Mon - Sun: 9:00 AM - 6:00 PM',
        ),
        Venue(
          id: 'v3',
          name: 'Community Care Pharmacy',
          address: 'St. Mary Road, Healthcare Complex',
          latitude: latitude + 0.0052,
          longitude: longitude - 0.0018,
          phone: '+44 20 7946 0331',
          openingHours: 'Open 24 Hours Emergency',
        ),
      ];

      return right(nearbyVenues);
    } catch (e) {
      return left(const AppErrors.unexpectedError());
    }
  }
}