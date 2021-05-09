import 'package:inventory_management/data/repositories/machines/machines_repository.dart';
import 'package:state_notifier/state_notifier.dart';

import 'machine_model.dart';

class AddMachineController extends StateNotifier<MachineModel> {
  final MachineRepository machineRepository;
  AddMachineController(this.machineRepository) : super(const MachineModel());

  void addMachine() {
    machineRepository.addMachines(machineName: state.machineName);
  }

  void updateName(String newValue) {
    state = state.copyWith(machineName: newValue);
  }
}
