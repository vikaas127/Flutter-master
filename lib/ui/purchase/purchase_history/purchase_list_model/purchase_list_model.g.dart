// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'purchase_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PurchaseListModel _$_$_PurchaseListModelFromJson(Map<String, dynamic> json) {
  return _$_PurchaseListModel(
    purchaseId: json['purchase_id'] as int,
    itemName: json['item_name'] as String,
    quantity: json['quantity'] as int,
    lastUpdated: json['last_updated'] == null
        ? null
        : DateTime.parse(json['last_updated'] as String),
    loc: json['description'] as String,
  );
}

Map<String, dynamic> _$_$_PurchaseListModelToJson(
        _$_PurchaseListModel instance) =>
    <String, dynamic>{
      'purchase_id': instance.purchaseId,
      'item_name': instance.itemName,
      'quantity': instance.quantity,
      'last_updated': instance.lastUpdated?.toIso8601String(),
      'description': instance.loc,
    };
