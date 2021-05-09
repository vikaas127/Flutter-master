import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:inventory_management/ui/components/delete_alert.dart';
import 'package:inventory_management/ui/list_details/machines_page/add_machine/add_machine_page.dart';
import 'package:inventory_management/ui/list_details/machines_page/machines_list/warehouse_list_model.dart';
import 'package:provider/provider.dart';

import 'machines_list/machine_controller.dart';

class MachineListPage extends StatefulWidget {
  static const routeName = '/machineList';
  static Widget wrapped() {
    return MultiProvider(
      providers: [
        StateNotifierProvider<MachineListController, MachineList>(
          lazy: false,
          create: (context) => MachineListController(
            machineRepository: context.read(),
          ),
        )
      ],
      child: MachineListPage(),
    );
  }

  @override
  _MachineListPageState createState() => _MachineListPageState();
}

class _MachineListPageState extends State<MachineListPage> {
  @override
  Widget build(BuildContext context) {
    final vm = context.select((MachineList value) => value);
    final machines = vm.machines;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Machine List'),
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 0,
        onPressed: () {
          Navigator.of(context).pushNamed(AddNewMachines.routeName);
        },
        child: const Icon(Icons.add),
      ),
      body: () {
        if (vm.loading) {
          return const Center(child: CircularProgressIndicator());
        }
        if (vm.machines == null || vm.machines.isEmpty) {
          return const Center(
            child: Text('No machines'),
          );
        }
        return Padding(
          padding: const EdgeInsets.all(16),
          child: ListView.separated(
            clipBehavior: Clip.hardEdge,
            physics: const BouncingScrollPhysics(),
            itemCount: machines.length,
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
                            machines[index].machineName,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              DeleteDialog.show(context, onDelete: () {});
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
