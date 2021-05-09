// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'items_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ItemsModel _$_$_ItemsModelFromJson(Map<String, dynamic> json) {
  return _$_ItemsModel(
    itemName: json['item_name'] as String,
    location: json['warehouse_name'] as String,
    quantity: json['quantity'] as int,
    tag: json['tag'] as String,
  );
}

Map<String, dynamic> _$_$_ItemsModelToJson(_$_ItemsModel instance) =>
    <String, dynamic>{
      'item_name': instance.itemName,
      'warehouse_name': instance.location,
      'quantity': instance.quantity,
      'tag': instance.tag,
    };
