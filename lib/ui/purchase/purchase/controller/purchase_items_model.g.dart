// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'purchase_items_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PurchaseModel _$_$_PurchaseModelFromJson(Map<String, dynamic> json) {
  return _$_PurchaseModel(
    quantity: json['quantity'] as int,
    supplierName: json['supplier_name'] as String,
    tag: json['tag'] as String,
    itemName: json['item_name'] as String,
    loc: json['loc'] as String,
  );
}

Map<String, dynamic> _$_$_PurchaseModelToJson(_$_PurchaseModel instance) =>
    <String, dynamic>{
      'quantity': instance.quantity,
      'supplier_name': instance.supplierName,
      'tag': instance.tag,
      'item_name': instance.itemName,
      'loc': instance.loc,
    };
