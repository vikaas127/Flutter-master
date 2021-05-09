import 'package:freezed_annotation/freezed_annotation.dart';

part 'finish_production_model.freezed.dart';
part 'finish_production_model.g.dart';

@freezed
abstract class FinishProduction with _$FinishProduction {
  const factory FinishProduction({
    @JsonKey(name: "production_id") @Default('') int productionId,
    @JsonKey(name: "remaining_raw_material_qty")
    @Default('')
        int remainingRawMaterialQty,
    @JsonKey(name: "damaged_goods") @Default('') String damagedGoods,
    @JsonKey(name: "goods_produced") @Default('') String goodsProduced,
  }) = _FinishProduction;
  factory FinishProduction.fromJson(Map<String, dynamic> json) =>
      _$_$_FinishProductionFromJson(json);
}
