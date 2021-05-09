import 'package:flutter/material.dart';
import 'package:inventory_management/data/repositories/raw_material/raw_material_repository.dart';
import 'package:state_notifier/state_notifier.dart';

import 'raw_material_list_model.dart';

class RawMaterialController extends StateNotifier<RawMaterialList> {
  final ItemsRepository rawMaterialRepository;
  RawMaterialController({@required this.rawMaterialRepository})
      : super(const RawMaterialList()) {
    initialize();
  }
  Future<void> initialize() async {
    final rawMaterial = await rawMaterialRepository.fetchItems();
    state = state.copyWith(
      loading: false,
      rawMaterials: rawMaterial,
    );
  }

  Future<void> fetch(String locationId) async {
    state = state.copyWith(
      loading: true,
    );
    final rawMaterials = await rawMaterialRepository.fetchItems();
    state = state.copyWith(loading: false, rawMaterials: rawMaterials);
  }
}
