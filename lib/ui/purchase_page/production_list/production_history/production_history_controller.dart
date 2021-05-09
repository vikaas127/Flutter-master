import 'package:flutter/material.dart';
import 'package:inventory_management/data/repositories/production/production_repository.dart';
import 'package:inventory_management/ui/list_details/production_page/production_list/production_list_model/production_list_model.dart';
import 'package:state_notifier/state_notifier.dart';

class ProductionHistoryController extends StateNotifier<ProductionList> {
  final ProductionRepository productionRepository;
  ProductionHistoryController({@required this.productionRepository})
      : super(const ProductionList()) {
    initialize();
  }
  Future<void> initialize() async {
    final production = await productionRepository.fetchProductionsHistory();
    state = state.copyWith(
      loading: false,
      productions: production,
    );
  }

  Future<void> fetch(String locationId) async {
    state = state.copyWith(
      loading: true,
    );
    final productions = await productionRepository.fetchProductionsHistory();
    state = state.copyWith(
      loading: false,
      productions: productions,
    );
  }
}
