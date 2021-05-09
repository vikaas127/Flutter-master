import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:inventory_management/ui/components/delete_alert.dart';
import 'package:inventory_management/ui/list_details/supplier_page/add_supplier/add_new_supplier.dart';
import 'package:inventory_management/ui/list_details/supplier_page/add_supplier/supplier_page.dart';
import 'package:provider/provider.dart';

import 'controller/supplier_controller/supplier_controller.dart';
import 'controller/supplier_controller/supplier_list/supplier_list_model.dart';

class SupplierListPage extends StatefulWidget {
  static const routeName = '/supplierList';
  static Widget wrapped() {
    return MultiProvider(
      providers: [
        StateNotifierProvider<SupplierListController, SupplierList>(
          lazy: false,
          create: (context) =>
              SupplierListController(supplierRepository: context.read()),
        )
      ],
      child: SupplierListPage(),
    );
  }

  @override
  _SupplierListPageState createState() => _SupplierListPageState();
}

class _SupplierListPageState extends State<SupplierListPage> {
  @override
  Widget build(BuildContext context) {
    final vm = context.select((SupplierList value) => value);
    final controller = context.watch<SupplierListController>();
    final suppliers = vm.suppliers;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Suppliers List'),
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
        if (vm.suppliers.isEmpty) {
          return const Center(child: Text('No suppliers'));
        }
        return Padding(
          padding: const EdgeInsets.all(16),
          child: ListView.separated(
            clipBehavior: Clip.hardEdge,
            physics: const BouncingScrollPhysics(),
            itemCount: suppliers.length,
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, SupplierPage.routeName,
                      arguments: SupplierPageArgument(
                         supplierId: suppliers[index].supplierId.toString(),
                          supplierName: suppliers[index].supplierName,
                          description: suppliers[index].description));
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
                          Padding(
                            padding: const EdgeInsets.only(top:18.0),
                            child: Container(
                              width:120,
                              child: Column(
                                crossAxisAlignment:CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    suppliers[index].supplierName,style: GoogleFonts.aBeeZee(fontSize: 15,fontWeight:
                                  FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              DeleteDialog.show(
                                context,
                                onDelete: () {
                                  controller.deleteSupplier(
                                    supplierId: suppliers[index].supplierId,
                                  );
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
