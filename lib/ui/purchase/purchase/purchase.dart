import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:inventory_management/ui/components/input_field.dart';
import 'package:provider/provider.dart';

import 'controller/purchase_controller.dart';
import 'controller/purchase_items_model.dart';

class Purchase extends StatefulWidget {
  static Widget wrapped() {
    return MultiProvider(
      providers: [
        StateNotifierProvider<PurchaseController, PurchaseModel>(
          create: (context) {
            return PurchaseController(context.read());
          },
        )
      ],
      child: const Purchase(),
    );
  }

  static const routeName = '/purchase';
  const Purchase({Key key}) : super(key: key);
  @override
  _PurchaseState createState() => _PurchaseState();
}

class _PurchaseState extends State<Purchase> {
  int _value;
  @override
  void initState() {
    super.initState();
    _value = 2;
  }

  @override
  Widget build(BuildContext context) {
    final controller = context.watch<PurchaseController>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Purchase'),
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
                  label: 'Item name',
                  onChanged: controller.updateItemNameName,
                ),
                BuildInputField(
                  label: 'Supplier name',
                  onChanged: controller.updateSupplierName,
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
                  child: const Text('Purchase'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
