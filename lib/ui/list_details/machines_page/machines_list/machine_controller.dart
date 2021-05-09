import 'package:flutter/material.dart';
import 'package:inventory_management/data/repositories/machines/machines_repository.dart';
import 'package:state_notifier/state_notifier.dart';

import 'warehouse_list_model.dart';

class MachineListController extends StateNotifier<MachineList> {
  final MachineRepository machineRepository;
  MachineListController({@required this.machineRepository})
      : super(const MachineList()) {
    initialize();
  }
  Future<void> initialize() async {
    final buyers = await machineRepository.fetchMachines();
    state = state.copyWith(loading: false, machines: buyers);
  }
}
