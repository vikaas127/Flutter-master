import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../add_supplier/controller/supplier_model.dart';

part 'supplier_list_model.freezed.dart';

@freezed
abstract class SupplierList with _$SupplierList {
  const factory SupplierList(
      {@Default(<SupplierModel>[]) List<SupplierModel> suppliers,
      @Default(true) bool loading}) = _SupplierList;
}
