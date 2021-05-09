import 'package:freezed_annotation/freezed_annotation.dart';

part 'start_printing_model.freezed.dart';
part 'start_printing_model.g.dart';

@freezed
abstract class StartPrintingModel with _$StartPrintingModel {
  const factory StartPrintingModel({
    @Default(0) int itemsQty,
    @Default('') String itemName,
    @Default('') String machineName,
    @Default('') String description,
    @Default(0) int expectedGoodOutput,
  }) = _StartPrintingModel;
  factory StartPrintingModel.fromJson(Map<String, dynamic> json) =>
      _$_$_StartPrintingModelFromJson(json);
}
