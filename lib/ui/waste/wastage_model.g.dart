// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wastage_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WastageModel _$_$_WastageModelFromJson(Map<String, dynamic> json) {
  return _$_WastageModel(
    wastageId: json['wastage_id'] as int,
    goodsId: json['goods_id'] as int,
    tag: json['tag'] as String,
    lastUpdated: json['last_updated'] == null
        ? null
        : DateTime.parse(json['last_updated'] as String),
  );
}

Map<String, dynamic> _$_$_WastageModelToJson(_$_WastageModel instance) =>
    <String, dynamic>{
      'wastage_id': instance.wastageId,
      'goods_id': instance.goodsId,
      'tag': instance.tag,
      'last_updated': instance.lastUpdated?.toIso8601String(),
    };
