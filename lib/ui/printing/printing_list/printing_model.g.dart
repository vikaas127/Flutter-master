// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'printing_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PrintingModel _$_$_PrintingModelFromJson(Map<String, dynamic> json) {
  return _$_PrintingModel(
    itemsQty: json['items_qty'] as int,
    productionId: json['production_id'] as int,
    expectedGoodOutput: json['expected_good_output'] as int,
    remainingGoodQty: json['remaining_goods_qty'] as int,
    remainingItemsQty: json['remaining_items_qty'] as int,
    status: json['status'] as String,
    finishedGoods: json['finished_goods'] as int,
  );
}

Map<String, dynamic> _$_$_PrintingModelToJson(_$_PrintingModel instance) =>
    <String, dynamic>{
      'items_qty': instance.itemsQty,
      'production_id': instance.productionId,
      'expected_good_output': instance.expectedGoodOutput,
      'remaining_goods_qty': instance.remainingGoodQty,
      'remaining_items_qty': instance.remainingItemsQty,
      'status': instance.status,
      'finished_goods': instance.finishedGoods,
    };
