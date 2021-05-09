import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:inventory_management/ui/components/delete_alert.dart';
import 'package:inventory_management/ui/list_details/supplier_page/add_supplier/add_new_supplier.dart';
import 'package:inventory_management/ui/purchase/purchase_history/purchase_controller.dart';
import 'package:inventory_management/ui/purchase/purchase_history/purchase_history_model.dart';
import 'package:provider/provider.dart';

class PurchaseHistoryPage extends StatefulWidget {
  static const routeName = '/purchaseHistoryList';
  static Widget wrapped() {
    return MultiProvider(
      providers: [
        StateNotifierProvider<PurchaseHistoryController, PurchaseHistory>(
          lazy: false,
          create: (context) =>
              PurchaseHistoryController(purchaseRepository: context.read()),
        )
      ],
      child: PurchaseHistoryPage(),
    );
  }

  @override
  _PurchaseHistoryPageState createState() => _PurchaseHistoryPageState();
}

class _PurchaseHistoryPageState extends State<PurchaseHistoryPage> {
  @override
  Widget build(BuildContext context) {
    final vm = context.select((PurchaseHistory value) => value);
    final controller = context.watch<PurchaseHistoryController>();
    final purchases = vm.purchases;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Purchase History'),
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 0,
        onPressed: () {
          Navigator.of(context)
              .pushNamed(AddNewSupplier.routeName)
              .whenComplete(controller.initialize);
        },
        child: const Icon(Icons.add),
      ),
      body: () {
        if (vm.loading) {
          return const Center(child: CircularProgressIndicator());
        }
        if (vm.purchases.isEmpty) {
          return const Center(child: Text('No purchases'));
        }
        return Padding(
          padding: const EdgeInsets.all(16),
          child: ListView.separated(
            clipBehavior: Clip.hardEdge,
            physics: const BouncingScrollPhysics(),
            itemCount: purchases.length,
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
                            purchases[index].purchaseId.toString(),
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
