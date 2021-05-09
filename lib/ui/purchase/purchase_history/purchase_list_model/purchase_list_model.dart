import 'package:freezed_annotation/freezed_annotation.dart';

part 'purchase_list_model.freezed.dart';
part 'purchase_list_model.g.dart';

@freezed
abstract class PurchaseListModel with _$PurchaseListModel {
  const factory PurchaseListModel(
      {@JsonKey(name: "purchase_id") @Default(0) int purchaseId,
      @JsonKey(name: "item_name") @nullable String itemName,
      @JsonKey(name: "quantity") @Default(0) int quantity,
      @JsonKey(name: "last_updated") @nullable DateTime lastUpdated,
      @JsonKey(name: "description") @nullable String loc}) = _PurchaseListModel;
  factory PurchaseListModel.fromJson(Map<String, dynamic> json) =>
      _$_$_PurchaseListModelFromJson(json);
}
