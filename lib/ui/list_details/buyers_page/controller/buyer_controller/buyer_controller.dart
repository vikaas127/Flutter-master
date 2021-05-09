import 'package:flutter/material.dart';
import 'package:inventory_management/data/repositories/buyer/buyer_repository.dart';
import 'package:state_notifier/state_notifier.dart';

import 'buyer_list/buyer_list_model.dart';

class BuyerListController extends StateNotifier<BuyerList> {
  final BuyerRepository buyerRepository;
  BuyerListController({@required this.buyerRepository})
      : super(const BuyerList()) {
    initialize();
  }
  Future<void> initialize() async {
    final buyers = await buyerRepository.fetchBuyers();
    state = state.copyWith(loading: false, buyers: buyers);
  }
  Future<void> refresh() async {
    state = state.copyWith(loading: true);
    final buyers = await buyerRepository.fetchBuyers();
    state = state.copyWith(loading: false, buyers: buyers);
  }
  Future<void> remove({@required int buyerid}) async {
    state = state.copyWith(loading: false);

    await buyerRepository.removeBuyers(buyerId: buyerid);
    await refresh();
  }
}
