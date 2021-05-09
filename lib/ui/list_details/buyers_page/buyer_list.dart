import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:inventory_management/ui/components/delete_alert.dart';
import 'package:inventory_management/ui/list_details/buyers_page/buyer_edit_page.dart';
import 'package:provider/provider.dart';
import 'add_buyer/add_buyers_page.dart';
import 'controller/buyer_controller/buyer_controller.dart';
import 'controller/buyer_controller/buyer_list/buyer_list_model.dart';
class BuyerListPage extends StatefulWidget {
  static const routeName = '/buyerList';
  static Widget wrapped() {
    return MultiProvider(
      providers: [
        StateNotifierProvider<BuyerListController, BuyerList>(
          lazy: false,
          create: (context) =>
              BuyerListController(buyerRepository: context.read()),
        )
      ],
      child: BuyerListPage(),
    );
  }

  @override
  _BuyerListPageState createState() => _BuyerListPageState();
}

class _BuyerListPageState extends State<BuyerListPage> {
  @override
  Widget build(BuildContext context) {
    final vm = context.select((BuyerList value) => value);
    final controller = context.watch<BuyerListController>();
    final buyers = vm.buyers;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Buyers List'),
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 0,
        onPressed: () {
          Navigator.of(context)
              .pushNamed(AddNewBuyer.routeName)
              .whenComplete(() => controller.refresh);
        },
        child: const Icon(Icons.add),
      ),
      body: () {
        if (vm.loading) {
          return const Center(child: CircularProgressIndicator());
        }
        if (vm.buyers.isEmpty) {
          return const Center(
            child: Text('No buyers'),
          );
        }

        return Padding(
          padding: const EdgeInsets.all(16),
          child: ListView.separated(
            clipBehavior: Clip.hardEdge,
            physics: const BouncingScrollPhysics(),
            itemCount: buyers.length,
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, EditBuyerPage.routeName,
                      arguments: EditBuyerPageArgument(
                          buyerId: buyers[index].buyerId.toString(),
                          buyerName: buyers[index].buyerName,
                          description: buyers[index].description));
                },
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
                            buyers[index].buyerName??"vikas",
                          ),
                          ElevatedButton(
                            onPressed: () {
                              DeleteDialog.show(context, onDelete: () {
                                controller.remove(
                                    buyerid: buyers[index].buyerId);
                              });
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
