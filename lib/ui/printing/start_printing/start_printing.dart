import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:inventory_management/ui/components/input_field.dart';
import 'package:inventory_management/ui/printing/start_printing/start_printing_controller.dart';
import 'package:inventory_management/ui/printing/start_printing/start_printing_model.dart';
import 'package:provider/provider.dart';

class StartPrinting extends StatefulWidget {
  static Widget wrapped() {
    return MultiProvider(
      providers: [
        StateNotifierProvider<StartPrintingController, StartPrintingModel>(
          create: (context) {
            return StartPrintingController(
              printingRepository: context.read(),
            );
          },
        )
      ],
      child: const StartPrinting(),
    );
  }

  static const routeName = '/startPrinting';
  const StartPrinting({Key key}) : super(key: key);
  @override
  _StartPrintingState createState() => _StartPrintingState();
}

class _StartPrintingState extends State<StartPrinting> {
  @override
  Widget build(BuildContext context) {
    final controller = context.watch<StartPrintingController>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Start Printing'),
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
                  label: 'Items Quantity',
                  onChanged: controller.updateQuantity,
                ),
                BuildInputField(
                  label: 'Expected Output',
                  onChanged: controller.description,
                ),
                BuildInputField(
                  label: 'Item name',
                  onChanged: controller.updateItemName,
                ),
                BuildInputField(
                  label: 'Machine name',
                  onChanged: controller.machineName,
                ),
                BuildInputField(
                  label: 'Description',
                  onChanged: controller.description,
                ),
                const SizedBox(
                  height: 16,
                ),
                const SizedBox(
                  height: 36,
                ),
                ElevatedButton(
                  onPressed: () {
                    controller.startPrinting();
                  },
                  child: const Text('start printing'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
