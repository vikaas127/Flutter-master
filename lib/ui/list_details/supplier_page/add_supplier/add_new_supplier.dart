import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:inventory_management/ui/components/input_field.dart';
import 'package:inventory_management/ui/list_details/supplier_page/add_supplier/controller/supplier_model.dart';
import 'package:provider/provider.dart';

import 'controller/add_supplier_controller.dart';

class AddNewSupplier extends StatefulWidget {
  static Widget wrapped() {
    return MultiProvider(
      providers: [
        StateNotifierProvider<AddSupplierController, SupplierModel>(
          create: (context) {
            return AddSupplierController(context.read());
          },
        )
      ],
      child: const AddNewSupplier(),
    );
  }

  static const routeName = '/newSuplier';
  const AddNewSupplier({Key key}) : super(key: key);
  @override
  _AddNewSupplierState createState() => _AddNewSupplierState();
}

class _AddNewSupplierState extends State<AddNewSupplier> {
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
    final controller = context.watch<AddSupplierController>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add New Supplier'),
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
                  label: 'Supplier Name',
                  onChanged: controller.updateSupplierName,
                ),
                BuildInputField(
                  label: 'Address',
                  onChanged: controller.updateAddress,
                ),
                const BuildInputField(
                  label: 'Description',
                  maxLine: 8,
                ),
                const SizedBox(
                  height: 36,
                ),
                ElevatedButton(
                  onPressed: () {
                    controller.addSupplier();
                    Navigator.of(context).pop();
                  },
                  child: const Text('Add supplier'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
