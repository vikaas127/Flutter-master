import 'package:flutter/material.dart';
import 'package:inventory_management/data/repositories/goods_repository/goods_repository.dart';
import 'package:state_notifier/state_notifier.dart';

import 'goods_list_model.dart';

class GoodsListController extends StateNotifier<GoodsList> {
  final GoodsRepository goodsRepository;
  GoodsListController({@required this.goodsRepository})
      : super(const GoodsList()) {
    initialize();
  }
  Future<void> initialize() async {
    //final goods = await goodsRepository.fetchGoods();
    state = state.copyWith(
      loading: false,
    ); //goods: goods);
  }

  Future<void> fetch(String locationId) async {
    state = state.copyWith(
      loading: true,
    );
    final goods = await goodsRepository.fetchGoods(
      locName: locationId,
    );
    state = state.copyWith(loading: false, goods: goods);
  }
}
