import 'package:ec_card_app/src/data/venue/model/products.dart';

class ProductsResponse {
  final List<ProductBody> list;
  final String message;
  final String postalCode;
  final String phoneNumber;

  ProductsResponse({
    required this.list,
    required this.message,
    required this.postalCode,
    required this.phoneNumber,
  });
}
