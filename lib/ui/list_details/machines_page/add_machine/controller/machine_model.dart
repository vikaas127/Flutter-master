import 'package:freezed_annotation/freezed_annotation.dart';

part 'machine_model.freezed.dart';
part 'machine_model.g.dart';

@freezed
abstract class MachineModel with _$MachineModel {
  const factory MachineModel({
    @JsonKey(name: "machine_name") @Default('') String machineName,
  }) = _MachineModel;
  factory MachineModel.fromJson(Map<String, dynamic> json) =>
      _$_$_MachineModelFromJson(json);
}
