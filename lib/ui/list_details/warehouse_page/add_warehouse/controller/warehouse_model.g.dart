// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'warehouse_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WarehouseModel _$_$_WarehouseModelFromJson(Map<String, dynamic> json) {
  return _$_WarehouseModel(
    locationId: json['location_id'] as int,
    locationName: json['location_name'] as String,
    description: json['description'] as String,
  );
}

Map<String, dynamic> _$_$_WarehouseModelToJson(_$_WarehouseModel instance) =>
    <String, dynamic>{
      'location_id': instance.locationId,
      'location_name': instance.locationName,
      'description': instance.description,
    };
