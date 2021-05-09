import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory_management/ui/list_details/production_page/production_list/production_model.dart';

part 'production_list_model.freezed.dart';

@freezed
abstract class ProductionList with _$ProductionList {
  const factory ProductionList(
      {@Default(<Production>[]) List<Production> productions,
      @Default(true) bool loading}) = _ProductionList;
}
