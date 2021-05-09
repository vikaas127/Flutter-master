import 'package:freezed_annotation/freezed_annotation.dart';

part 'cancel_production_model.freezed.dart';
part 'cancel_production_model.g.dart';

@freezed
abstract class CancelProductionModel with _$CancelProductionModel {
  const factory CancelProductionModel(
      {@JsonKey(name: "production_id")
      @Default(0)
          int productionId,
      @JsonKey(name: "remaining_raw_material_qty")
      @Default(0)
          int remainingRawMaterialQty,
      @JsonKey(name: "damaged_goods")
      @Default(0)
          int damagedGoods,
      @JsonKey(name: "goods_produced")
      @Default('')
          int goodsProduced,
      @JsonKey(name: "reason")
      @Default('')
          String reason}) = _CancelProductionModel;
  factory CancelProductionModel.fromJson(Map<String, dynamic> json) =>
      _$_$_CancelProductionModelFromJson(json);
}
