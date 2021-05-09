import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory_management/ui/purchase/purchase_history/purchase_list_model/purchase_list_model.dart';

part 'purchase_history_model.freezed.dart';

@freezed
abstract class PurchaseHistory with _$PurchaseHistory {
  const factory PurchaseHistory(
      {@Default(<PurchaseListModel>[]) List<PurchaseListModel> purchases,
      @Default(true) bool loading}) = _SupplierList;
}
