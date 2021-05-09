import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory_management/ui/list_details/buyers_page/add_buyer/controller/buyer_model.dart';

part 'buyer_list_model.freezed.dart';

@freezed
abstract class BuyerList with _$BuyerList {
  const factory BuyerList(
      {@Default(<BuyerModel>[]) List<BuyerModel> buyers,
      @Default(true) bool loading}) = _BuyerList;
}
