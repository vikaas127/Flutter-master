import 'package:flutter/material.dart';
import 'package:inventory_management/data/repositories/purchase/purchase_repository.dart';
import 'package:inventory_management/ui/purchase/purchase_history/purchase_history_model.dart';
import 'package:state_notifier/state_notifier.dart';

class PurchaseHistoryController extends StateNotifier<PurchaseHistory> {
  final PurchaseRepository purchaseRepository;
  PurchaseHistoryController({@required this.purchaseRepository})
      : super(const PurchaseHistory()) {
    initialize();
  }
  Future<void> initialize() async {
    final purchases = await purchaseRepository.fetchItems();
    state = state.copyWith(loading: false, purchases: purchases);
  }

  Future<void> refresh() async {
    state = state.copyWith(loading: true);
    final purchases = await purchaseRepository.fetchItems();
    state = state.copyWith(loading: false, purchases: purchases);
  }
}
