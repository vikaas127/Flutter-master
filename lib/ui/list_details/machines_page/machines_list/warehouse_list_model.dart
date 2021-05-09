import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory_management/ui/list_details/machines_page/add_machine/controller/machine_model.dart';

part 'warehouse_list_model.freezed.dart';

@freezed
abstract class MachineList with _$MachineList {
  const factory MachineList(
      {@Default(<MachineModel>[]) List<MachineModel> machines,
      @Default(true) bool loading}) = _MachineList;
}
