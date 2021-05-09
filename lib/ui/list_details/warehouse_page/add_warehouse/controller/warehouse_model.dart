import 'package:freezed_annotation/freezed_annotation.dart';

part 'warehouse_model.freezed.dart';
part 'warehouse_model.g.dart';

@freezed
abstract class WarehouseModel with _$WarehouseModel {
  const factory WarehouseModel({
    @JsonKey(name: "location_id") @Default(0) int locationId,
    @JsonKey(name: "location_name") @Default('') String locationName,
    @JsonKey(name: "description") @Default('') String description,
  }) = _WarehouseModel;
  factory WarehouseModel.fromJson(Map<String, dynamic> json) =>
      _$_$_WarehouseModelFromJson(json);
}
