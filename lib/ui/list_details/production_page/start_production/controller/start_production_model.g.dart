// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'start_production_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_StartProductionModel _$_$_StartProductionModelFromJson(
    Map<String, dynamic> json) {
  return _$_StartProductionModel(
    itemsQty: json['items_qty'] as int,
    expectedGoodOutput: json['expected_good_output'] as int,
    goodsName: json['goods_name'] as String,
    inputItems: json['input_items'] as String,
    machineName: json['machine_name'] as String,
  );
}

Map<String, dynamic> _$_$_StartProductionModelToJson(
        _$_StartProductionModel instance) =>
    <String, dynamic>{
      'items_qty': instance.itemsQty,
      'expected_good_output': instance.expectedGoodOutput,
      'goods_name': instance.goodsName,
      'input_items': instance.inputItems,
      'machine_name': instance.machineName,
    };
