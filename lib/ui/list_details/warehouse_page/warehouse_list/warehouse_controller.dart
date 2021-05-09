import 'package:flutter/material.dart';
import 'package:inventory_management/data/repositories/warehouse/warehouse.dart';
import 'package:state_notifier/state_notifier.dart';

import 'warehouse_list_model.dart';

class WarehouseListController extends StateNotifier<WarehouseList> {
  final WarehouseRepository warehouseRepository;
  WarehouseListController({@required this.warehouseRepository})
      : super(const WarehouseList()) {
    initialize();
  }
  Future<void> initialize() async {
    final buyers = await warehouseRepository.fetchWarehouse();
    state = state.copyWith(loading: false, warehouses: buyers);
  }

  Future<void> refresh() async {
    state = state.copyWith(loading: true);
    final buyers = await warehouseRepository.fetchWarehouse();
    state = state.copyWith(loading: false, warehouses: buyers);
  }

  Future<void> remove(int warehouseId) async {
    await warehouseRepository.removeWarehouse(warehouseId: warehouseId);
    await refresh();
  }
}
