import 'package:freezed_annotation/freezed_annotation.dart';

part 'wastage_model.freezed.dart';
part 'wastage_model.g.dart';

@freezed
abstract class WastageModel with _$WastageModel {
  const factory WastageModel({
    @JsonKey(name: "wastage_id") @Default(0) int wastageId,
    @JsonKey(name: "goods_id") @Default(0) int goodsId,
    @JsonKey(name: "tag") @Default('') String tag,
    @JsonKey(name: "last_updated") @nullable DateTime lastUpdated,
  }) = _WastageModel;
  factory WastageModel.fromJson(Map<String, dynamic> json) =>
      _$_$_WastageModelFromJson(json);
}
