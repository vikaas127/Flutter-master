import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:inventory_management/ui/components/input_field.dart';
import 'package:provider/provider.dart';

import 'controller/add_items_controller.dart';
import 'controller/items_model.dart';

class AddRawMaterials extends StatefulWidget {
  static Widget wrapped() {
    return MultiProvider(
      providers: [
        StateNotifierProvider<AddItemsController, ItemsModel>(
          create: (context) {
            return AddItemsController(context.read());
          },
        )
      ],
      child: const AddRawMaterials(),
    );
  }

  static const routeName = '/addRawMaterial';
  const AddRawMaterials({Key key}) : super(key: key);
  @override
  _AddRawMaterialsState createState() => _AddRawMaterialsState();
}

class _AddRawMaterialsState extends State<AddRawMaterials> {
  int _value;
  @override
  void initState() {
    super.initState();
    _value = 2;
  }

  @override
  Widget build(BuildContext context) {
    final controller = context.watch<AddItemsController>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Raw Material'),
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
                  label: 'Raw Material Name',
                  onChanged: controller.updateName,
                ),
                BuildInputField(
                    label: 'Quantity', onChanged: controller.updateQuantity),
                BuildInputField(
                  label: 'Location',
                  onChanged: controller.updateLocation,
                ),
                Container(
                  padding: const EdgeInsets.only(top: 20, bottom: 16),
                  child: DropdownButton<int>(
                    value: _value,
                    items: const [
                      DropdownMenuItem(
                        value: 2,
                        child: Text("Choose Tag"),
                      ),
                      DropdownMenuItem(
                        value: 0,
                        child: Text("Others"),
                      ),
                      DropdownMenuItem(
                        value: 1,
                        child: Text("Raw Material"),
                      ),
                    ],
                    onChanged: (value) {
                      print(value);
                      setState(
                        () {
                          controller.updateTag(value);
                          _value = value;
                        },
                      );
                    },
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                const SizedBox(
                  height: 36,
                ),
                ElevatedButton(
                  onPressed: controller.addRawMaterial,
                  child: const Text('Add Raw Material'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
