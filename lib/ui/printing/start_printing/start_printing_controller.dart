import 'package:flutter/material.dart';
import 'package:inventory_management/data/repositories/prinitng/printing_repository.dart';
import 'package:inventory_management/ui/printing/start_printing/start_printing_model.dart';
import 'package:state_notifier/state_notifier.dart';

class StartPrintingController extends StateNotifier<StartPrintingModel> {
  final PrintingRepository printingRepository;
  StartPrintingController({@required this.printingRepository})
      : super(
          const StartPrintingModel(),
        ) {
    startPrinting();
  }
  Future<void> startPrinting() async {
    await printingRepository.startPrinting(
        itemName: state.itemName,
        itemQty: state.itemsQty,
        machineName: state.machineName,
        description: state.description,
        expectedOutput: state.expectedGoodOutput);
  }

  void updateQuantity(String name) {
    if (name != null) {
      state = state.copyWith(
        itemsQty: int.parse(name),
      );
    }
  }

  void updateItemName(String itemName) {
    if (itemName != null) {
      state = state.copyWith(itemName: itemName);
    }
  }

  void machineName(String name) {
    if (name != null) {
      state = state.copyWith(machineName: name);
    }
  }

  void description(String name) {
    if (name != null) {
      state = state.copyWith(description: name);
    }
  }

  void expectedOutput(String name) {
    if (name != null) {
      state = state.copyWith(expectedGoodOutput: int.parse(name));
    }
  }
}
