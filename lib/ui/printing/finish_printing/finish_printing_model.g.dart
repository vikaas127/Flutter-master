// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'finish_printing_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FinishPrintingModel _$_$_FinishPrintingModelFromJson(
    Map<String, dynamic> json) {
  return _$_FinishPrintingModel(
    printingId: json['printingId'] as int ?? 0,
    remainingRawMaterialQty: json['remainingRawMaterialQty'] as int ?? 0,
    damagedGoods: json['damagedGoods'] as int ?? 0,
    goodsProduced: json['goodsProduced'] as int ?? 0,
  );
}

Map<String, dynamic> _$_$_FinishPrintingModelToJson(
        _$_FinishPrintingModel instance) =>
    <String, dynamic>{
      'printingId': instance.printingId,
      'remainingRawMaterialQty': instance.remainingRawMaterialQty,
      'damagedGoods': instance.damagedGoods,
      'goodsProduced': instance.goodsProduced,
    };
