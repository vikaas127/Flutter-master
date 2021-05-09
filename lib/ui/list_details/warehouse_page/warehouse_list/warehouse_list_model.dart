import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory_management/ui/list_details/warehouse_page/add_warehouse/controller/warehouse_model.dart';

part 'warehouse_list_model.freezed.dart';

@freezed
abstract class WarehouseList with _$WarehouseList {
  const factory WarehouseList(
      {@Default(<WarehouseModel>[]) List<WarehouseModel> warehouses,
      @Default(true) bool loading}) = _WarehouseList;
}
