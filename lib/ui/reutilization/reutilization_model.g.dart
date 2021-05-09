// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reutilization_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ReutilizationModel _$_$_ReutilizationModelFromJson(
    Map<String, dynamic> json) {
  return _$_ReutilizationModel(
    reutilizationId: json['reutilization_id'] as int,
    lastUpdated: json['last_updated'] == null
        ? null
        : DateTime.parse(json['last_updated'] as String),
  );
}

Map<String, dynamic> _$_$_ReutilizationModelToJson(
        _$_ReutilizationModel instance) =>
    <String, dynamic>{
      'reutilization_id': instance.reutilizationId,
      'last_updated': instance.lastUpdated?.toIso8601String(),
    };
