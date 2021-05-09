import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:inventory_management/ui/components/delete_alert.dart';
import 'package:inventory_management/ui/reutilization/resutilization_list_model.dart';
import 'package:inventory_management/ui/reutilization/reutil_controller.dart';
import 'package:provider/provider.dart';

class ReUtilListPage extends StatefulWidget {
  static const routeName = '/reutilList';
  static Widget wrapped() {
    return MultiProvider(
      providers: [
        StateNotifierProvider<ReUtilizationController, ReutilizationList>(
          lazy: false,
          create: (context) =>
              ReUtilizationController(reutilizationRepository: context.read()),
        )
      ],
      child: ReUtilListPage(),
    );
  }

  @override
  _ReUtilListPageState createState() => _ReUtilListPageState();
}

class _ReUtilListPageState extends State<ReUtilListPage> {
  @override
  Widget build(BuildContext context) {
    final vm = context.select((ReutilizationList value) => value);

    final wastage = vm.reutiization;
    return Scaffold(
      appBar: AppBar(
        title: const Text('ReUtilization List'),
      ),
      body: () {
        if (vm.loading) {
          return const Center(child: CircularProgressIndicator());
        }
        if (vm.reutiization.isEmpty) {
          return const Center(child: Text('Nothing to display'));
        }
        return Padding(
          padding: const EdgeInsets.all(16),
          child: ListView.separated(
            clipBehavior: Clip.hardEdge,
            physics: const BouncingScrollPhysics(),
            itemCount: wastage.length,
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
                            wastage[index].reutilizationId.toString(),
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
