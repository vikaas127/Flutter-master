import 'package:inventory_management/data/repositories/purchase/purchase_repository.dart';
import 'package:inventory_management/ui/purchase/purchase/controller/purchase_items_model.dart';
import 'package:state_notifier/state_notifier.dart';

class PurchaseController extends StateNotifier<PurchaseModel> {
  final PurchaseRepository purchaseRepository;
  PurchaseController(this.purchaseRepository) : super(const PurchaseModel());

  void addRawMaterial() {
    purchaseRepository.purchase(
        quantity: state.quantity,
        itemName: state.itemName,
        tag: state.tag,
        location: state.loc,
        supplierName: state.supplierName);
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
    state = state.copyWith(loc: newValue);
  }

  void updateSupplierName(String newValue) {
    state = state.copyWith(supplierName: newValue);
  }

  void updateItemNameName(String newValue) {
    state = state.copyWith(itemName: newValue);
  }
}
