import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory_management/ui/list_details/goods_page/add_goods/controller/goods_model.dart';

part 'goods_list_model.freezed.dart';

@freezed
abstract class GoodsList with _$GoodsList {
  const factory GoodsList(
      {@Default(<GoodsModel>[]) List<GoodsModel> goods,
      @Default(true) bool loading}) = _GoodsList;
}
