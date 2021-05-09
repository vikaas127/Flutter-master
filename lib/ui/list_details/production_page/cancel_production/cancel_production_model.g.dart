// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cancel_production_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CancelProductionModel _$_$_CancelProductionModelFromJson(
    Map<String, dynamic> json) {
  return _$_CancelProductionModel(
    productionId: json['production_id'] as int,
    remainingRawMaterialQty: json['remaining_raw_material_qty'] as int,
    damagedGoods: json['damaged_goods'] as int,
    goodsProduced: json['goods_produced'] as int,
    reason: json['reason'] as String,
  );
}

Map<String, dynamic> _$_$_CancelProductionModelToJson(
        _$_CancelProductionModel instance) =>
    <String, dynamic>{
      'production_id': instance.productionId,
      'remaining_raw_material_qty': instance.remainingRawMaterialQty,
      'damaged_goods': instance.damagedGoods,
      'goods_produced': instance.goodsProduced,
      'reason': instance.reason,
    };
