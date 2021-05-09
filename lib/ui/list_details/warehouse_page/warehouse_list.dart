import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:inventory_management/ui/components/delete_alert.dart';
import 'package:inventory_management/ui/list_details/warehouse_page/warehouse_list/warehouse_controller.dart';
import 'package:inventory_management/ui/list_details/warehouse_page/warehouse_list/warehouse_list_model.dart';
import 'package:provider/provider.dart';

import 'add_warehouse/add_warehouse_page.dart';

class WarehouseListPage extends StatefulWidget {
  static const routeName = '/warehouseList';
  static Widget wrapped() {
    return MultiProvider(
      providers: [
        StateNotifierProvider<WarehouseListController, WarehouseList>(
          lazy: false,
          create: (context) => WarehouseListController(
            warehouseRepository: context.read(),
          ),
        )
      ],
      child: WarehouseListPage(),
    );
  }

  @override
  _WarehouseListPageState createState() => _WarehouseListPageState();
}

class _WarehouseListPageState extends State<WarehouseListPage> {
  @override
  Widget build(BuildContext context) {
    final vm = context.select((WarehouseList value) => value);
    final controller = context.watch<WarehouseListController>();
    final warehouses = vm.warehouses;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Warehouse List'),
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 0,
        onPressed: () {
          Navigator.of(context)
              .pushNamed(AddNewWarehouse.routeName)
              .whenComplete(() => controller.refresh);
        },
        child: const Icon(Icons.add),
      ),
      body: () {
        if (vm.loading) {
          return const Center(child: CircularProgressIndicator());
        }
        if (vm.warehouses == null || vm.warehouses.isEmpty) {
          return const Center(
            child: Text('No warehouses'),
          );
        }
        return Padding(
          padding: const EdgeInsets.all(16),
          child: ListView.separated(
            clipBehavior: Clip.hardEdge,
            physics: const BouncingScrollPhysics(),
            itemCount: warehouses.length,
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
                            warehouses[index].locationName,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              DeleteDialog.show(
                                context,
                                onDelete: () {
                                  controller
                                      .remove(warehouses[index].locationId);
                                },
                              );
                            },
                            child: const Text('remove'),
                          )
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
