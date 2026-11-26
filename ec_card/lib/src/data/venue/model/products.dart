// ignore_for_file: invalid_annotation_target

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'products.freezed.dart';
part 'products.g.dart';

@freezed
class ProductBody with _$ProductBody {
  const factory ProductBody({
    @JsonKey(name: 'name') @Default('') String name,
    @JsonKey(name: 'description') @Default('') String description,
    @JsonKey(name: 'image') @Default('') String image,
    @JsonKey(name: 'orgProductId') @Default('') String orgProductId,
  }) = _ProductBody;

  factory ProductBody.fromJson(Map<String, dynamic> json) =>
      _$ProductBodyFromJson(json);
}

// Optional helper functions:
ProductBody productBodyFromJson(String str) =>
    ProductBody.fromJson(jsonDecode(str));

String productBodyToJson(ProductBody data) => jsonEncode(data.toJson());

ProductBody convertIVTSResponseToProductBody(dynamic product) {
  return ProductBody(
    name: product['name'] ?? '',
    description: product['description'] ?? '',
    image: product['image'] ?? '',
    orgProductId: product['orgProductId'] ?? '',
  );
}

convertJSONlistTOVProductList(Iterable<dynamic> list) {
  List<ProductBody> resultList = [];
  Future.forEach(list, (element) {
    resultList.add(convertIVTSResponseToProductBody(element));
  });

  return resultList;
}

List<ProductBody> convertIntoListOfProductBody(Iterable<dynamic> list) {
  List<ProductBody> resultList = [];
  Future.forEach(list, (element) {
    resultList.add(ProductBody.fromJson(element as Map<String, dynamic>));
  });
  return resultList;
}
