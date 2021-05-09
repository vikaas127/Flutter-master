// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'buyer_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BuyerModel _$_$_BuyerModelFromJson(Map<String, dynamic> json) {
  return _$_BuyerModel(
    buyerName: json['buyer_name'] as String,
    buyerId: json['buyer_id'] as int,
    phoneNumber: json['phone_no'] as int,
    address: json['address'] as String,
    description: json['description'] as String,
  );
}

Map<String, dynamic> _$_$_BuyerModelToJson(_$_BuyerModel instance) =>
    <String, dynamic>{
      'buyer_name': instance.buyerName,
      'buyer_id': instance.buyerId,
      'phone_no': instance.phoneNumber,
      'address': instance.address,
      'description': instance.description,
    };
