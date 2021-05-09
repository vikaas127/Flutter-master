import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:inventory_management/ui/components/input_field.dart';
import 'package:inventory_management/ui/list_details/production_page/start_production/controller/start_production_model.dart';
import 'package:provider/provider.dart';

import 'controller/start_production_controller.dart';

class StartProduction extends StatefulWidget {
  static Widget wrapped() {
    return MultiProvider(
      providers: [
        StateNotifierProvider<StartProductionController, StartProductionModel>(
          create: (context) {
            return StartProductionController(context.read());
          },
        )
      ],
      child: const StartProduction(),
    );
  }

  static const routeName = '/startProduction';
  const StartProduction({Key key}) : super(key: key);
  @override
  _StartProductionState createState() => _StartProductionState();
}

class _StartProductionState extends State<StartProduction> {
  @override
  Widget build(BuildContext context) {
    final controller = context.watch<StartProductionController>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Start Production'),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                BuildInputField(
                  label: 'items Quantity',
                  onChanged: controller.updateQnty,
                ),
                BuildInputField(
                  label: 'Expected good output',
                  onChanged: controller.updateExpectedOutput,
                ),
                BuildInputField(
                  label: 'Goods name',
                  onChanged: controller.updateGoodsName,
                ),
                BuildInputField(
                  label: 'Input items',
                  onChanged: controller.updateInputItems,
                ),
                BuildInputField(
                  label: 'Machine name',
                  onChanged: controller.updateMachineName,
                ),
                const SizedBox(
                  height: 16,
                ),
                const SizedBox(
                  height: 36,
                ),
                ElevatedButton(
                  onPressed: controller.startProduction,
                  child: const Text('Start Production'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
