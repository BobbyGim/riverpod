import 'package:json_annotation/json_annotation.dart';

part 'shopping_item_model.g.dart';

@JsonSerializable()
class ShoppingItemModel {
  final String name;
  final int quantity;
  final bool hasBought;
  final bool isSpicy;

  ShoppingItemModel({
    required this.name,
    required this.quantity,
    required this.hasBought,
    required this.isSpicy,
  });

  factory ShoppingItemModel.fromJson(Map<String, dynamic> json) =>
      _$ShoppingItemModelFromJson(json);
}
