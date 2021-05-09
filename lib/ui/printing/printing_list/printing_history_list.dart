import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:inventory_management/ui/list_details/items_page/add_raw_material/add_goods_page.dart';
import 'package:inventory_management/ui/printing/printing_list/printing_list_model/printing_list_controller.dart';
import 'package:inventory_management/ui/printing/printing_list/printing_list_model/printing_list_model.dart';
import 'package:provider/provider.dart';

class PrintingList extends StatefulWidget {
  static const routeName = '/printingList';
  static Widget wrapped() {
    return MultiProvider(
      providers: [
        StateNotifierProvider<PrintingListController, PrintingListModel>(
          lazy: false,
          create: (context) =>
              PrintingListController(printingRepository: context.read()),
        ),
      ],
      child: PrintingList(),
    );
  }

  @override
  _PrintingListState createState() => _PrintingListState();
}

class _PrintingListState extends State<PrintingList> {
  @override
  Widget build(BuildContext context) {
    final printing = context.select((PrintingListModel value) => value);

    final goods = printing.printings;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Printing List'),
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 0,
        onPressed: () {
          Navigator.of(context).pushNamed(AddRawMaterials.routeName);
        },
        child: const Icon(Icons.add),
      ),
      body: () {
        if (printing.loading) {
          return const Center(child: CircularProgressIndicator());
        }
        if (printing.printings.isEmpty) {
          return const Center(child: Text('No printings yet'));
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
                            goods[index].productionId.toString(),
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
