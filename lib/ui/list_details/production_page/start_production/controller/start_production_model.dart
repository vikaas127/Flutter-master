import 'package:freezed_annotation/freezed_annotation.dart';

part 'start_production_model.freezed.dart';
part 'start_production_model.g.dart';

@freezed
abstract class StartProductionModel with _$StartProductionModel {
  const factory StartProductionModel(
      {@JsonKey(name: "items_qty")
      @Default(0)
          int itemsQty,
      @JsonKey(name: "expected_good_output")
      @Default(0)
          int expectedGoodOutput,
      @JsonKey(name: "goods_name")
      @Default('')
          String goodsName,
      @JsonKey(name: "input_items")
      @Default('')
          String inputItems,
      @JsonKey(name: "machine_name")
      @Default('')
          String machineName}) = _StartProductionModel;
  factory StartProductionModel.fromJson(Map<String, dynamic> json) =>
      _$_$_StartProductionModelFromJson(json);
}
