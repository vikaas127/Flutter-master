// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'goods_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GoodsModel _$_$_GoodsModelFromJson(Map<String, dynamic> json) {
  return _$_GoodsModel(
    goodsName: json['goods_name'] as String,
    locationName: json['location_name'] as String,
    quantity: json['quantity'] as int,
  );
}

Map<String, dynamic> _$_$_GoodsModelToJson(_$_GoodsModel instance) =>
    <String, dynamic>{
      'goods_name': instance.goodsName,
      'location_name': instance.locationName,
      'quantity': instance.quantity,
    };
