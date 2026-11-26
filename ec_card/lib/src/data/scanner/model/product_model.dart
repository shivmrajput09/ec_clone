// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_model.freezed.dart';
part 'product_model.g.dart';

@freezed
class ProductModel with _$ProductModel {
  const factory ProductModel({
    @JsonKey(name: 'name') @Default('') String name,
    @JsonKey(name: 'description') @Default('') String description,
    @JsonKey(name: 'image') @Default('') String image,
    @JsonKey(name: 'orgProductId') @Default('') String orgProductId,
  }) = _ProductModel;

  factory ProductModel.fromJson(dynamic json) => _$ProductModelFromJson(json);
}

List<ProductModel> convertIntoProductsList(
    List<Map<String, dynamic>> products) {
  List<ProductModel> resultList = [];

  for (Map<String, dynamic> product in products) {
    resultList.add(ProductModel.fromJson(product));
  }

  return resultList;
}
