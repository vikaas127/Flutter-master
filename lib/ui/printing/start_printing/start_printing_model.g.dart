// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'start_printing_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_StartPrintingModel _$_$_StartPrintingModelFromJson(
    Map<String, dynamic> json) {
  return _$_StartPrintingModel(
    itemsQty: json['itemsQty'] as int ?? 0,
    itemName: json['itemName'] as String ?? '',
    machineName: json['machineName'] as String ?? '',
    description: json['description'] as String ?? '',
    expectedGoodOutput: json['expectedGoodOutput'] as int ?? 0,
  );
}

Map<String, dynamic> _$_$_StartPrintingModelToJson(
        _$_StartPrintingModel instance) =>
    <String, dynamic>{
      'itemsQty': instance.itemsQty,
      'itemName': instance.itemName,
      'machineName': instance.machineName,
      'description': instance.description,
      'expectedGoodOutput': instance.expectedGoodOutput,
    };
