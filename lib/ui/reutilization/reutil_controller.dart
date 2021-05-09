import 'package:flutter/material.dart';
import 'package:inventory_management/data/repositories/reutilization/reutilization_repository.dart';
import 'package:inventory_management/ui/reutilization/resutilization_list_model.dart';
import 'package:state_notifier/state_notifier.dart';

class ReUtilizationController extends StateNotifier<ReutilizationList> {
  final ReutilizationRepository reutilizationRepository;
  ReUtilizationController({@required this.reutilizationRepository})
      : super(const ReutilizationList()) {
    initialize();
  }
  Future<void> initialize() async {
    final history = await reutilizationRepository.fetchHistory();
    state = state.copyWith(loading: false, reutiization: history);
  }

  Future<void> refresh() async {
    state = state.copyWith(loading: true);
    final history = await reutilizationRepository.fetchHistory();
    state = state.copyWith(loading: false, reutiization: history);
  }
}
