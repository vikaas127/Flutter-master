import 'package:inventory_management/data/repositories/raw_material/raw_material_repository.dart';
import 'package:state_notifier/state_notifier.dart';

import 'items_model.dart';

class AddItemsController extends StateNotifier<ItemsModel> {
  final ItemsRepository rawMaterialRepository;
  AddItemsController(this.rawMaterialRepository) : super(const ItemsModel());

  void addRawMaterial() {
    rawMaterialRepository.addItems(
        quanity: state.quantity,
        material: state.itemName,
        tag: state.tag,
        location: state.location);
  }

  void updateName(String newValue) {
    state = state.copyWith(itemName: newValue);
  }

  void updateQuantity(String newValue) {
    state = state.copyWith(quantity: int.parse(newValue));
  }

  void updateTag(int newValue) {
    String val;
    if (newValue == 0) {
      val = 'O';
    }
    if (newValue == 1) {
      val = 'R';
    }
    state = state.copyWith(tag: val);
  }

  void updateLocation(String newValue) {
    state = state.copyWith(location: newValue);
  }
}
