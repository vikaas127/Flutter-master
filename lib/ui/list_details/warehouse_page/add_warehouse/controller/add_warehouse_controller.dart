import 'package:inventory_management/data/repositories/warehouse/warehouse.dart';
import 'package:state_notifier/state_notifier.dart';

import 'warehouse_model.dart';

class AddWarehouseController extends StateNotifier<WarehouseModel> {
  final WarehouseRepository warehouseRepository;
  AddWarehouseController(this.warehouseRepository)
      : super(const WarehouseModel());

  void addWarehouse() {
    warehouseRepository.addWarehouse(locationName: state.locationName);
  }

  void updateName(String newValue) {
    state = state.copyWith(locationName: newValue);
  }
}
