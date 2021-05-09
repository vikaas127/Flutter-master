import 'package:inventory_management/data/repositories/production/production_repository.dart';
import 'package:inventory_management/ui/list_details/production_page/start_production/controller/start_production_model.dart';
import 'package:state_notifier/state_notifier.dart';

class StartProductionController extends StateNotifier<StartProductionModel> {
  final ProductionRepository productionRepository;
  StartProductionController(this.productionRepository)
      : super(const StartProductionModel());

  void startProduction() {
    productionRepository.newProduction(
      expectedOutput: state.expectedGoodOutput,
      qnty: state.itemsQty,
      goodsName: state.goodsName,
      inputItems: state.inputItems,
      machineName: state.machineName,
    );
  }

  void updateGoodsName(String newValue) {
    state = state.copyWith(goodsName: newValue);
  }

  void updateInputItems(String newValue) {
    state = state.copyWith(inputItems: newValue);
  }

  void updateQnty(String newValue) {
    state = state.copyWith(itemsQty: int.parse(newValue));
  }

  void updateExpectedOutput(String newValue) {
    state = state.copyWith(expectedGoodOutput: int.parse(newValue));
  }

  void updateMachineName(String newValue) {
    state = state.copyWith(machineName: newValue);
  }
}
