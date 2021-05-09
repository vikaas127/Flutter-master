import 'package:flutter/material.dart';
import 'package:inventory_management/data/repositories/prinitng/printing_repository.dart';
import 'package:inventory_management/ui/printing/printing_list/printing_list_model/printing_list_model.dart';
import 'package:state_notifier/state_notifier.dart';

class PrintingListController extends StateNotifier<PrintingListModel> {
  final PrintingRepository printingRepository;
  PrintingListController({@required this.printingRepository})
      : super(
          const PrintingListModel(),
        ) {
    initialize();
  }
  Future<void> initialize() async {
    final printingHistory = await printingRepository.printingHistory();
    state = state.copyWith(
      loading: false,
      printings: printingHistory,
    );
  }

  Future<void> refresh() async {
    state = state.copyWith(loading: true);
    final printingHistory = await printingRepository.printingHistory();
    state = state.copyWith(
      loading: false,
      printings: printingHistory,
    );
  }
}
