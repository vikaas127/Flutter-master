import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:inventory_management/ui/components/delete_alert.dart';
import 'package:inventory_management/ui/list_details/production_page/production_list/production_history/production_history_controller.dart';
import 'package:inventory_management/ui/list_details/production_page/production_list/production_list_model/production_list_model.dart';
import 'package:provider/provider.dart';

class ProductionHistoryPage extends StatefulWidget {
  static const routeName = '/productionHistoryList';
  static Widget wrapped() {
    return MultiProvider(
      providers: [
        StateNotifierProvider<ProductionHistoryController, ProductionList>(
          lazy: false,
          create: (context) => ProductionHistoryController(
            productionRepository: context.read(),
          ),
        )
      ],
      child: ProductionHistoryPage(),
    );
  }

  @override
  _ProductionHistoryPageState createState() => _ProductionHistoryPageState();
}

class _ProductionHistoryPageState extends State<ProductionHistoryPage> {
  @override
  Widget build(BuildContext context) {
    final vm = context.select((ProductionList value) => value);

    final productions = vm.productions;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Production History'),
      ),
      body: () {
        if (vm.loading) {
          return const Center(child: CircularProgressIndicator());
        }
        if (vm.productions.isEmpty) {
          return const Center(child: Text('No Productions yet'));
        }
        return Padding(
          padding: const EdgeInsets.all(16),
          child: ListView.separated(
            clipBehavior: Clip.hardEdge,
            physics: const BouncingScrollPhysics(),
            itemCount: productions.length,
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
                            productions[index].productionId.toString(),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              DeleteDialog.show(
                                context,
                                onDelete: () {},
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
