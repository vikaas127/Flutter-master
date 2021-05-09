import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory_management/ui/reutilization/reutilization_model.dart';

part 'resutilization_list_model.freezed.dart';

@freezed
abstract class ReutilizationList with _$ReutilizationList {
  const factory ReutilizationList(
      {@Default(<ReutilizationModel>[]) List<ReutilizationModel> reutiization,
      @Default(true) bool loading}) = _ReutilizationList;
}
