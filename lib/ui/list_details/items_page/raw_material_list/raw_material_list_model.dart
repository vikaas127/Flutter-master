import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory_management/ui/list_details/items_page/add_raw_material/controller/items_model.dart';

part 'raw_material_list_model.freezed.dart';

@freezed
abstract class RawMaterialList with _$RawMaterialList {
  const factory RawMaterialList(
      {@Default(<ItemsModel>[]) List<ItemsModel> rawMaterials,
      @Default(true) bool loading}) = _RawMaterialList;
}
