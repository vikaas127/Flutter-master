import 'package:freezed_annotation/freezed_annotation.dart';

part 'supplier_model.freezed.dart';
part 'supplier_model.g.dart';

@freezed
abstract class SupplierModel with _$SupplierModel {
  const factory SupplierModel({
    @JsonKey(name: "supplier_id") @Default(0) int supplierId,
    @JsonKey(name: "supplier_name") @Default('') String supplierName,
    @JsonKey(name: "phone_no") @Default(0) int phoneNumber,
    @JsonKey(name: "address") @Default('') String address,
    @JsonKey(name: "description") @Default('') String description,
  }) = _SupplierModel;
  factory SupplierModel.fromJson(Map<String, dynamic> json) =>
      _$_$_SupplierModelFromJson(json);
}
