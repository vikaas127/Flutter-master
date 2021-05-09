import 'package:freezed_annotation/freezed_annotation.dart';

part 'reutilization_model.freezed.dart';
part 'reutilization_model.g.dart';

@freezed
abstract class ReutilizationModel with _$ReutilizationModel {
  const factory ReutilizationModel({
    @JsonKey(name: "reutilization_id") @Default(0) int reutilizationId,
    @JsonKey(name: "last_updated") @nullable DateTime lastUpdated,
  }) = _ReutilizationModel;
  factory ReutilizationModel.fromJson(Map<String, dynamic> json) =>
      _$_$_ReutilizationModelFromJson(json);
}
