// ignore_for_file: invalid_annotation_target

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'option_item.g.dart';
part 'option_item.freezed.dart';

OptionItem optionItemFromJson(String str) =>
    OptionItem.fromJson(jsonDecode(str));

@freezed
abstract class OptionItem with _$OptionItem {
  const factory OptionItem({
    @JsonKey(name: 'optionTitle') @Default('') String optionTitle,
    @JsonKey(name: '_id') @Default('') String id,
  }) = _OptionItem;

  factory OptionItem.fromJson(dynamic json) => _$OptionItemFromJson(json);
}

List<OptionItem> convertIntoOptionsList(Iterable<dynamic> list) {
  List<OptionItem> resultList = [];
  Future.forEach(list, (element) {
    resultList.add(OptionItem.fromJson(element));
  });
  return resultList;
}

