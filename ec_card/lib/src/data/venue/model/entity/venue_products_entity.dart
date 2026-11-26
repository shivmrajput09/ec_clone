import '../products.dart';

class ProductEntity {
  final String name;
  final String description;
  final String image;
  final String orgProductId;

  ProductEntity({
    required this.name,
    required this.description,
    required this.image,
    required this.orgProductId,
  });

  factory ProductEntity.convertFromProductBody(ProductBody product) =>
      ProductEntity(
        name: product.name,
        description: product.description,
        image: product.image,
        orgProductId: product.orgProductId,
      );
}

// List<ProductEntity> convertIntoListOfProductEntity(List<ProductBody> productBodyList) {
//   return productBodyList
//       .map((product) => ProductEntity.convertFromProductBody(product))
//       .toList();
// }

List<ProductEntity> convertIntoListOfProductEntity(
    List<ProductBody> productBodyList) {
  List<ProductEntity> resultList = [];
  for (ProductBody venue in productBodyList) {
    resultList.add(ProductEntity.convertFromProductBody(venue));
  }

  return resultList;
}
