// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shopping_item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ShoppingItemModel _$ShoppingItemModelFromJson(Map<String, dynamic> json) =>
    ShoppingItemModel(
      name: json['name'] as String,
      quantity: (json['quantity'] as num).toInt(),
      hasBought: json['hasBought'] as bool,
      isSpicy: json['isSpicy'] as bool,
    );

Map<String, dynamic> _$ShoppingItemModelToJson(ShoppingItemModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'quantity': instance.quantity,
      'hasBought': instance.hasBought,
      'isSpicy': instance.isSpicy,
    };
