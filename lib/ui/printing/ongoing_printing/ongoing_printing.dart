import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:inventory_management/ui/list_details/items_page/add_raw_material/add_goods_page.dart';
import 'package:inventory_management/ui/list_details/items_page/raw_material_list/raw_material_controller.dart';
import 'package:inventory_management/ui/list_details/items_page/raw_material_list/raw_material_list_model.dart';
import 'package:inventory_management/ui/list_details/warehouse_page/warehouse_list/warehouse_controller.dart';
import 'package:inventory_management/ui/list_details/warehouse_page/warehouse_list/warehouse_list_model.dart';
import 'package:provider/provider.dart';

class OnGoingPrintingList extends StatefulWidget {
  static const routeName = '/onGoingPrintingList';
  static Widget wrapped() {
    return MultiProvider(
      providers: [
        StateNotifierProvider<RawMaterialController, RawMaterialList>(
          lazy: false,
          create: (context) =>
              RawMaterialController(rawMaterialRepository: context.read()),
        ),
        StateNotifierProvider<WarehouseListController, WarehouseList>(
          lazy: false,
          create: (context) => WarehouseListController(
            warehouseRepository: context.read(),
          ),
        )
      ],
      child: OnGoingPrintingList(),
    );
  }

  @override
  _OnGoingPrintingListState createState() => _OnGoingPrintingListState();
}

class _OnGoingPrintingListState extends State<OnGoingPrintingList> {
  @override
  Widget build(BuildContext context) {
    final rawMaterialModel = context.select((RawMaterialList value) => value);

    final goods = rawMaterialModel.rawMaterials;
    return Scaffold(
      appBar: AppBar(
        title: const Text('OnGoing Printing'),
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 0,
        onPressed: () {
          Navigator.of(context).pushNamed(AddRawMaterials.routeName);
        },
        child: const Icon(Icons.add),
      ),
      body: () {
        if (rawMaterialModel.loading) {
          return const Center(child: CircularProgressIndicator());
        }

        return Padding(
          padding: const EdgeInsets.all(16),
          child: ListView.separated(
            clipBehavior: Clip.hardEdge,
            physics: const BouncingScrollPhysics(),
            itemCount: goods.length,
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: () {},
                child: Container(
                  margin: const EdgeInsets.all(4),
                  height: 76,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: const BorderRadius.all(Radius.circular(16)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        spreadRadius: 2,
                        blurRadius: 3,
                        offset:
                            const Offset(0, 1), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 16, right: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            goods[index].itemName,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
            separatorBuilder: (BuildContext context, int index) {
              return const SizedBox(
                height: 8,
              );
            },
          ),
        );
      }(),
    );
  }
}
