import 'package:flutter/material.dart';
import 'package:inventory_management/data/repositories/buyer/buyer_repository.dart';
import 'package:state_notifier/state_notifier.dart';

import 'buyer_model.dart';

class AddBuyerController extends StateNotifier<BuyerModel> {
  final BuyerRepository buyerRepository;
  AddBuyerController(this.buyerRepository) : super(const BuyerModel());

  void addBuyer() {
    buyerRepository.addBuyers(
      number: state.phoneNumber.toString(),
      name: state.buyerName,
      address: state.address,
    );
  }

  void updateDescription({@required String description}) {
    if (description != null) {}
  }

  void updateContactNumber(String number) {
    final contactNumber = int.parse(number);

    if (number != null) {
      state = state.copyWith(phoneNumber: contactNumber);
    }
  }

  void updateAddress(String address) {
    state = state.copyWith(address: address);
  }

  void updateBuyerName(String name) {
    state = state.copyWith(buyerName: name);
  }
}
