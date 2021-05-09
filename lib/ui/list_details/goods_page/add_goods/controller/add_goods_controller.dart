import 'package:inventory_management/data/repositories/goods_repository/goods_repository.dart';
import 'package:inventory_management/ui/list_details/goods_page/add_goods/controller/goods_model.dart';
import 'package:state_notifier/state_notifier.dart';

class AddGoodsController extends StateNotifier<GoodsModel> {
  final GoodsRepository goodsRepository;
  AddGoodsController(this.goodsRepository) : super(const GoodsModel());

  void addGoods() {
    goodsRepository.addGoods(
        locationName: state.locationName,
        goodsName: state.goodsName,
        quantity: state.quantity);
  }

  void updateName(String newValue) {
    state = state.copyWith(goodsName: newValue);
  }

  void updateQuantity(String newValue) {
    state = state.copyWith(quantity: int.parse(newValue));
  }

  void updateLocation(String newValue) {
    state = state.copyWith(locationName: newValue);
  }
}
