import 'package:freezed_annotation/freezed_annotation.dart';

part 'finish_printing_model.freezed.dart';
part 'finish_printing_model.g.dart';

@freezed
abstract class FinishPrintingModel with _$FinishPrintingModel {
  const factory FinishPrintingModel({
    @Default(0) int printingId,
    @Default(0) int remainingRawMaterialQty,
    @Default(0) int damagedGoods,
    @Default(0) int goodsProduced,
  }) = _FinishPrintingModel;
  factory FinishPrintingModel.fromJson(Map<String, dynamic> json) =>
      _$_$_FinishPrintingModelFromJson(json);
}
