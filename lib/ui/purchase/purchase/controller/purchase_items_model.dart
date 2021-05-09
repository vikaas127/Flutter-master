import 'package:freezed_annotation/freezed_annotation.dart';

part 'purchase_items_model.freezed.dart';
part 'purchase_items_model.g.dart';

@freezed
abstract class PurchaseModel with _$PurchaseModel {
  const factory PurchaseModel(
      {@JsonKey(name: "quantity") @Default(0) int quantity,
      @JsonKey(name: "supplier_name") @nullable String supplierName,
      @JsonKey(name: "tag") @Default('') String tag,
      @JsonKey(name: "item_name") @Default('') String itemName,
      @JsonKey(name: "loc") @Default('') String loc}) = _PurchaseModel;
  factory PurchaseModel.fromJson(Map<String, dynamic> json) =>
      _$_$_PurchaseModelFromJson(json);
}
