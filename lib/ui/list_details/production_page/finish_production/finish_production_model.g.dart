// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'finish_production_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FinishProduction _$_$_FinishProductionFromJson(Map<String, dynamic> json) {
  return _$_FinishProduction(
    productionId: json['production_id'] as int,
    remainingRawMaterialQty: json['remaining_raw_material_qty'] as int,
    damagedGoods: json['damaged_goods'] as String,
    goodsProduced: json['goods_produced'] as String,
  );
}

Map<String, dynamic> _$_$_FinishProductionToJson(
        _$_FinishProduction instance) =>
    <String, dynamic>{
      'production_id': instance.productionId,
      'remaining_raw_material_qty': instance.remainingRawMaterialQty,
      'damaged_goods': instance.damagedGoods,
      'goods_produced': instance.goodsProduced,
    };
