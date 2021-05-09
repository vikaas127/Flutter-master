import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:inventory_management/ui/components/input_field.dart';
import 'package:provider/provider.dart';

import 'controller/add_machines_controller.dart';
import 'controller/machine_model.dart';

class AddNewMachines extends StatefulWidget {
  static Widget wrapped() {
    return MultiProvider(
      providers: [
        StateNotifierProvider<AddMachineController, MachineModel>(
          create: (context) {
            return AddMachineController(context.read());
          },
        )
      ],
      child: const AddNewMachines(),
    );
  }

  static const routeName = '/newMachines';
  const AddNewMachines({Key key}) : super(key: key);
  @override
  _AddNewMachinesState createState() => _AddNewMachinesState();
}

class _AddNewMachinesState extends State<AddNewMachines> {
  @override
  Widget build(BuildContext context) {
    final controller = context.watch<AddMachineController>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add New Machines'),
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
                  label: 'Machine Name',
                  onChanged: controller.updateName,
                ),
                const SizedBox(
                  height: 36,
                ),
                ElevatedButton(
                  onPressed: controller.addMachine,
                  child: const Text('Add Machine'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
