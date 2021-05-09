import 'package:flutter/material.dart';
import 'package:inventory_management/data/repositories/supplier/supplier_repository.dart';
import 'package:inventory_management/ui/list_details/supplier_page/add_supplier/controller/supplier_model.dart';
import 'package:state_notifier/state_notifier.dart';

class AddSupplierController extends StateNotifier<SupplierModel> {
  final SupplierRepository supplierRepository;
  AddSupplierController(this.supplierRepository) : super(const SupplierModel());

  void addSupplier() {
    supplierRepository.addSuppliers(
        number: state.phoneNumber.toString(),
        name: state.supplierName,
        address: state.address,
        description: state.description);
  }

  void updateDescription({@required String description}) {
    if (description != null) {
      state = state.copyWith(
        description: description,
      );
    }
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

  void updateSupplierName(String name) {
    state = state.copyWith(supplierName: name);
  }
}
