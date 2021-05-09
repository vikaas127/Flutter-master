import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:inventory_management/ui/components/input_field.dart';
import 'package:provider/provider.dart';

import 'controller/add_warehouse_controller.dart';
import 'controller/warehouse_model.dart';

class AddNewWarehouse extends StatefulWidget {
  static Widget wrapped() {
    return MultiProvider(
      providers: [
        StateNotifierProvider<AddWarehouseController, WarehouseModel>(
          create: (context) {
            return AddWarehouseController(context.read());
          },
        )
      ],
      child: const AddNewWarehouse(),
    );
  }

  static const routeName = '/newWarehouse';
  const AddNewWarehouse({Key key}) : super(key: key);
  @override
  _AddNewWarehouseState createState() => _AddNewWarehouseState();
}

class _AddNewWarehouseState extends State<AddNewWarehouse> {
  int len;
  List<Widget> list;
  @override
  void initState() {
    len = 0;
    super.initState();
    list = [];
  }

  @override
  Widget build(BuildContext context) {
    final controller = context.watch<AddWarehouseController>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add New Warehouse'),
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
                  label: 'Warehouse Name',
                  onChanged: controller.updateName,
                ),
                const BuildInputField(
                  label: 'Description',
                  maxLine: 8,
                ),
                const SizedBox(
                  height: 16,
                ),
                const SizedBox(
                  height: 36,
                ),
                ElevatedButton(
                  onPressed: () {
                    controller.addWarehouse();
                    Navigator.pop(context);
                  },
                  child: const Text('Add warehouse'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
