import 'package:freezed_annotation/freezed_annotation.dart';

part 'printing_model.freezed.dart';
part 'printing_model.g.dart';

@freezed
abstract class Printing with _$Printing {
  const factory Printing(
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
          int finishedGoods}) = _PrintingModel;
  factory Printing.fromJson(Map<String, dynamic> json) =>
      _$_$_PrintingModelFromJson(json);
}
