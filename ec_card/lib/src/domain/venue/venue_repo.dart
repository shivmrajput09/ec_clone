// lib/src/domain/venue/venue_repo.dart

import 'package:dartz/dartz.dart';
import '../../data/venue/model/venue.dart';
import '../core/errors/errors.dart';

abstract class VenueRepository {
  Future<Either<AppErrors, List<Venue>>> getVenuesList({
    required double latitude,
    required double longitude,
  });
}