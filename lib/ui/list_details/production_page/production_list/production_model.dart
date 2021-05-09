import 'package:freezed_annotation/freezed_annotation.dart';

part 'production_model.freezed.dart';
part 'production_model.g.dart';

@freezed
abstract class Production with _$Production {
  const factory Production(
      {@JsonKey(name: "items_qty")
      @Default(0)
          int itemsQty,
      @JsonKey(name: "production_id")
      @Default(0)
          int productionId,
      @JsonKey(name: "expected_good_output")
      @Default(0)
          int expectedGoodOutput,
      @JsonKey(name: "remaining_goods_qty")
      @Default(0)
          int remainingGoodQty,
      @JsonKey(name: "remaining_items_qty")
      @Default(0)
          int remainingItemsQty,
      @JsonKey(name: "status")
      @Default('')
          String status,
      @JsonKey(name: "finished_goods")
      @Default(0)
          int finishedGoods}) = _ProductionModel;
  factory Production.fromJson(Map<String, dynamic> json) =>
      _$_$_ProductionModelFromJson(json);
}
