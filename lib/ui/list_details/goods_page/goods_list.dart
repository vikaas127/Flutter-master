import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:inventory_management/ui/components/delete_alert.dart';
import 'package:inventory_management/ui/components/drop_down.dart';
import 'package:inventory_management/ui/list_details/goods_page/add_goods/add_goods_page.dart';
import 'package:inventory_management/ui/list_details/goods_page/goods_list/goods_controller.dart';
import 'package:inventory_management/ui/list_details/warehouse_page/warehouse_list/warehouse_controller.dart';
import 'package:inventory_management/ui/list_details/warehouse_page/warehouse_list/warehouse_list_model.dart';
import 'package:provider/provider.dart';

import 'goods_list/goods_list_model.dart';

class GoodsListPage extends StatefulWidget {
  static const routeName = '/goodsList';
  static Widget wrapped() {
    return MultiProvider(
      providers: [
        StateNotifierProvider<GoodsListController, GoodsList>(
          lazy: false,
          create: (context) => GoodsListController(
            goodsRepository: context.read(),
          ),
        ),
        StateNotifierProvider<WarehouseListController, WarehouseList>(
          lazy: false,
          create: (context) => WarehouseListController(
            warehouseRepository: context.read(),
          ),
        )
      ],
      child: GoodsListPage(),
    );
  }

  @override
  _GoodsListPageState createState() => _GoodsListPageState();
}

class _GoodsListPageState extends State<GoodsListPage> {
  @override
  Widget build(BuildContext context) {
    final goodsModel = context.select((GoodsList value) => value);
    final warehouse = context.select((WarehouseList value) => value);
    final goodsController = context.watch<GoodsListController>();
    final goods = goodsModel.goods;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Goods List'),
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 0,
        onPressed: () {
          Navigator.of(context).pushNamed(AddNewGoods.routeName);
        },
        child: const Icon(Icons.add),
      ),
      body: () {
        if (goodsModel.loading || warehouse.loading) {
          return const Center(child: CircularProgressIndicator());
        }

        return Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: BuildWarehouseChooser(
                options: warehouse.warehouses,
                value: (value) {
                  goodsController.fetch(value.locationName);
                },
                label: 'Choose warehouse location',
                chooseTitle: 'Choose warehouse',
              ),
            ),
            if (goodsModel.loading)
              const Center(child: CircularProgressIndicator())
            else if (goodsModel.goods.isEmpty)
              const Text('No Goods in this repository')
            else
              Expanded(
                child: Padding(
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
                            borderRadius:
                                const BorderRadius.all(Radius.circular(16)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.3),
                                spreadRadius: 2,
                                blurRadius: 3,
                                offset: const Offset(
                                    0, 1), // changes position of shadow
                              ),
                            ],
                          ),
                          child: Center(
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 16, right: 16),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    goods[index].goodsName,
                                  ),
                                  ElevatedButton(
                                    onPressed: () {
                                      DeleteDialog.show(context,
                                          onDelete: () {});
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
                ),
              )
          ],
        );
      }(),
    );
  }
}
