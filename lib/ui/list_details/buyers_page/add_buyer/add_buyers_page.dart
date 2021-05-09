import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:inventory_management/ui/components/input_field.dart';
import 'package:provider/provider.dart';

import 'controller/add_buyer_controller.dart';
import 'controller/buyer_model.dart';

class AddNewBuyer extends StatefulWidget {
  static Widget wrapped() {
    return MultiProvider(
      providers: [
        StateNotifierProvider<AddBuyerController, BuyerModel>(
          create: (context) {
            return AddBuyerController(context.read());
          },
        )
      ],
      child: const AddNewBuyer(),
    );
  }

  static const routeName = '/newBuyer';
  const AddNewBuyer({Key key}) : super(key: key);
  @override
  _AddNewBuyerState createState() => _AddNewBuyerState();
}

class _AddNewBuyerState extends State<AddNewBuyer> {
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
    final controller = context.watch<AddBuyerController>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add New Buyer'),
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
                  label: 'Buyer Name',
                  onChanged: controller.updateBuyerName,
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
                  height: 16,
                ),
                const SizedBox(
                  height: 36,
                ),
                ElevatedButton(
                  onPressed: () {
                    controller.addBuyer();
                    Navigator.of(context).pop();
                  },
                  child: const Text('Add buyer'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
