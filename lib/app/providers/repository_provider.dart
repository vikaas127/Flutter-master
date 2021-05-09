import 'package:flutter/material.dart';
import 'package:inventory_management/data/repositories/account_repository.dart';
import 'package:inventory_management/data/repositories/buyer/buyer_repository.dart';
import 'package:inventory_management/data/repositories/goods_repository/goods_repository.dart';
import 'package:inventory_management/data/repositories/machines/machines_repository.dart';
import 'package:inventory_management/data/repositories/prinitng/printing_repository.dart';
import 'package:inventory_management/data/repositories/production/production_repository.dart';
import 'package:inventory_management/data/repositories/purchase/purchase_repository.dart';
import 'package:inventory_management/data/repositories/raw_material/raw_material_repository.dart';
import 'package:inventory_management/data/repositories/reutilization/reutilization_repository.dart';
import 'package:inventory_management/data/repositories/supplier/supplier_repository.dart';
import 'package:inventory_management/data/repositories/warehouse/warehouse.dart';
import 'package:inventory_management/data/repositories/wastage/wastage_repository.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

/// A provider for repositories.
class RepositoriesProvider extends SingleChildStatelessWidget {
  const RepositoriesProvider({
    Key key,
    Widget child,
  }) : super(key: key, child: child);

  @override
  Widget buildWithChild(BuildContext context, Widget child) {
    return MultiProvider(
      providers: [
        Provider.value(value: const AccountRepository()),
        Provider.value(value: SupplierRepository()),
        Provider.value(value: BuyerRepository()),
        Provider.value(value: WarehouseRepository()),
        Provider.value(value: GoodsRepository()),
        Provider.value(value: MachineRepository()),
        Provider.value(value: ItemsRepository()),
        Provider.value(value: PrintingRepository()),
        Provider.value(value: ProductionRepository()),
        Provider.value(value: WastageRepository()),
        Provider.value(value: ReutilizationRepository()),
        Provider.value(value: PurchaseRepository()),
      ],
      child: child,
    );
  }
}
