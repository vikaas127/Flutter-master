import 'package:flutter/material.dart';
import 'package:inventory_management/data/repositories/prinitng/printing_repository.dart';
import 'package:inventory_management/ui/printing/start_printing/start_printing_model.dart';
import 'package:state_notifier/state_notifier.dart';

class OnGoingPrintController extends StateNotifier<StartPrintingModel> {
  final PrintingRepository printingRepository;
  OnGoingPrintController({@required this.printingRepository})
      : super(
          const StartPrintingModel(),
        ) {
    initalize();
  }
  Future<void> initalize() async {
    await printingRepository.onGoingPrinting();
  }
}
