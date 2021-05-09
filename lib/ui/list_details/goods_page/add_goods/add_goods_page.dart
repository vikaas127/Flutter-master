import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:inventory_management/ui/components/input_field.dart';
import 'package:inventory_management/ui/list_details/goods_page/add_goods/controller/goods_model.dart';
import 'package:provider/provider.dart';

import 'controller/add_goods_controller.dart';

class AddNewGoods extends StatefulWidget {
  static Widget wrapped() {
    return MultiProvider(
      providers: [
        StateNotifierProvider<AddGoodsController, GoodsModel>(
          create: (context) {
            return AddGoodsController(context.read());
          },
        )
      ],
      child: const AddNewGoods(),
    );
  }

  static const routeName = '/newGoods';
  const AddNewGoods({Key key}) : super(key: key);
  @override
  _AddNewGoodsState createState() => _AddNewGoodsState();
}

class _AddNewGoodsState extends State<AddNewGoods> {
  @override
  Widget build(BuildContext context) {
    final controller = context.watch<AddGoodsController>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add New Goods'),
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
                  label: 'Goods Name',
                  onChanged: controller.updateName,
                ),
                BuildInputField(
                    label: 'Quantity', onChanged: controller.updateQuantity),
                BuildInputField(
                    label: 'Location', onChanged: controller.updateLocation),
                const SizedBox(
                  height: 16,
                ),
                const SizedBox(
                  height: 36,
                ),
                ElevatedButton(
                  onPressed: controller.addGoods,
                  child: const Text('Add goods'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
