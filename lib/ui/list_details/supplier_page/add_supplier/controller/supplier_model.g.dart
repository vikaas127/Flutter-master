// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'supplier_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SupplierModel _$_$_SupplierModelFromJson(Map<String, dynamic> json) {
  return _$_SupplierModel(
    supplierId: json['supplier_id'] as int,
    supplierName: json['supplier_name'] as String,
    phoneNumber: json['phone_no'] as int,
    address: json['address'] as String,
    description: json['description'] as String,
  );
}

Map<String, dynamic> _$_$_SupplierModelToJson(_$_SupplierModel instance) =>
    <String, dynamic>{
      'supplier_id': instance.supplierId,
      'supplier_name': instance.supplierName,
      'phone_no': instance.phoneNumber,
      'address': instance.address,
      'description': instance.description,
    };
