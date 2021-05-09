import 'package:freezed_annotation/freezed_annotation.dart';

part 'buyer_model.freezed.dart';
part 'buyer_model.g.dart';

@freezed
abstract class BuyerModel with _$BuyerModel {
  const factory BuyerModel({
    @JsonKey(name: "buyer_name") @Default('') String buyerName,
    @JsonKey(name: "buyer_id") @Default(0) int buyerId,
    @JsonKey(name: "phone_no") @Default(0) int phoneNumber,
    @JsonKey(name: "address") @Default('') String address,
    @JsonKey(name: "description") @Default('') String description,
  }) = _BuyerModel;
  factory BuyerModel.fromJson(Map<String, dynamic> json) =>
      _$_$_BuyerModelFromJson(json);
}
