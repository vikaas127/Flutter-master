import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory_management/ui/printing/printing_list/printing_model.dart';

part 'printing_list_model.freezed.dart';

@freezed
abstract class PrintingListModel with _$PrintingListModel {
  const factory PrintingListModel(
      {@Default(<Printing>[]) List<Printing> printings,
      @Default(true) bool loading}) = _PrintingListModel;
}
