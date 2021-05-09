import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory_management/ui/waste/wastage_model.dart';

part 'wastage_list_model.freezed.dart';

@freezed
abstract class WastageList with _$WastageList {
  const factory WastageList(
      {@Default(<WastageModel>[]) List<WastageModel> wastage,
      @Default(true) bool loading}) = _WastageList;
}
