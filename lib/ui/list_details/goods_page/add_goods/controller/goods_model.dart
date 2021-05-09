import 'package:freezed_annotation/freezed_annotation.dart';

part 'goods_model.freezed.dart';
part 'goods_model.g.dart';

@freezed
abstract class GoodsModel with _$GoodsModel {
  const factory GoodsModel({
    @JsonKey(name: "goods_name") @Default('') String goodsName,
    @JsonKey(name: "location_name") @Default('') String locationName,
    @JsonKey(name: "quantity") @Default(0) int quantity,
  }) = _GoodsModel;
  factory GoodsModel.fromJson(Map<String, dynamic> json) =>
      _$_$_GoodsModelFromJson(json);
}
