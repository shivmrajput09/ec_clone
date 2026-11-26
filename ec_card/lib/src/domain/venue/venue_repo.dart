import 'package:dartz/dartz.dart';
import 'package:ec_card_app/src/data/venue/model/products_response.dart';
import 'package:ec_card_app/src/data/venue/model/venue.dart';
import 'package:ec_card_app/src/domain/core/errors/errors.dart';

abstract class VenueRepository {
  Future<Either<AppErrors, List<VenueBody>>> getVenuesList(
      double latitude, double longitude);

  Future<Either<AppErrors, List<VenueBody>>> getIvtsList(
      double latitude, double longitude);

  Future<Either<AppErrors, ProductsResponse>> getProductsList();

  Future<Either<AppErrors, String>> orderProducts(
    String street,
    String address,
    String city,
    String orgProductId,
  );
}
