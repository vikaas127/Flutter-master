import 'package:flutter/material.dart';
import 'package:inventory_management/ui/home_page/home_page.dart';
import 'package:inventory_management/ui/list_details/buyers_page/add_buyer/add_buyers_page.dart';
import 'package:inventory_management/ui/list_details/buyers_page/buyer_edit_page.dart';
import 'package:inventory_management/ui/list_details/buyers_page/buyer_list.dart';
import 'package:inventory_management/ui/list_details/goods_page/add_goods/add_goods_page.dart';
import 'package:inventory_management/ui/list_details/goods_page/goods_list.dart';
import 'package:inventory_management/ui/list_details/items_page/add_raw_material/add_goods_page.dart';
import 'package:inventory_management/ui/list_details/items_page/raw_material_page.dart';
import 'package:inventory_management/ui/list_details/machines_page/add_machine/add_machine_page.dart';
import 'package:inventory_management/ui/list_details/machines_page/machines_list.dart';
import 'package:inventory_management/ui/list_details/production_page/production_list/on_going_production/ongoing_production_list.dart';
import 'package:inventory_management/ui/list_details/production_page/production_list/production_history/production_history_list.dart';
import 'package:inventory_management/ui/list_details/production_page/start_production/start_production.dart';
import 'package:inventory_management/ui/list_details/supplier_page/add_supplier/add_new_supplier.dart';
import 'package:inventory_management/ui/list_details/supplier_page/add_supplier/supplier_page.dart';
import 'package:inventory_management/ui/list_details/supplier_page/supplier_list.dart';
import 'package:inventory_management/ui/list_details/warehouse_page/add_warehouse/add_warehouse_page.dart';
import 'package:inventory_management/ui/list_details/warehouse_page/warehouse_list.dart';
import 'package:inventory_management/ui/login_page/email_verification.dart';
import 'package:inventory_management/ui/login_page/login_page.dart';
import 'package:inventory_management/ui/login_page/phone_verification.dart';
import 'package:inventory_management/ui/login_page/verify_screen.dart';
import 'package:inventory_management/ui/printing/ongoing_printing/ongoing_printing.dart';
import 'package:inventory_management/ui/printing/printing_list/printing_history_list.dart';
import 'package:inventory_management/ui/printing/start_printing/start_printing.dart';
import 'package:inventory_management/ui/purchase/purchase/purchase.dart';
import 'package:inventory_management/ui/purchase/purchase_history/purchase_history.dart';
import 'package:inventory_management/ui/reutilization/reutil.dart';
import 'package:inventory_management/ui/settings/change_password/change_password.dart';
import 'package:inventory_management/ui/settings/settings_page.dart';
import 'package:inventory_management/ui/sign_in/sign_in.dart';
import 'package:inventory_management/ui/splash_page.dart';
import 'package:inventory_management/ui/waste/wastage_list.dart';
import 'package:recase/recase.dart';

import 'new_login.dart';

/// A builder function to build page.
typedef WidgetPageBuilder = Widget Function(
  BuildContext context,
  RouteSettings settings,
);

/// A configuration of Route
class RouteConfiguration {
  final WidgetPageBuilder builder;

  final String screenName;

  RouteConfiguration({
    @required this.builder,
    this.screenName,
  });
}

/// A shorthand method to generate [RouteConfiguration] with [PageRouteType.material].
RouteConfiguration _standardRoute(WidgetPageBuilder b) =>
    RouteConfiguration(builder: b);

// ignore: one_member_abstracts
abstract class RouterInterface {
  Route<dynamic> onGenerateRoute(RouteSettings _settings);
}

// ignore: one_member_abstracts
abstract class ScreenNameInterface {
  String extractScreenName(RouteSettings settings);
}

/// A router which provides routing table for MaterialApp.
class GlobalRouter implements RouterInterface, ScreenNameInterface {
  final bool shouldShowDebugMenu;

  GlobalRouter({this.shouldShowDebugMenu});

  final _routes = <String, RouteConfiguration>{
    SplashPage.routeName: _standardRoute(
      (context, settings) => const SplashPage(),
    ),
    AddRawMaterials.routeName: _standardRoute(
      (context, settings) => AddRawMaterials.wrapped(),
    ),
    ItemsListPage.routeName: _standardRoute(
      (context, settings) => ItemsListPage.wrapped(),
    ),
    AddNewGoods.routeName: _standardRoute(
      (context, settings) => AddNewGoods.wrapped(),
    ),
    GoodsListPage.routeName: _standardRoute(
      (context, settings) => GoodsListPage.wrapped(),
    ),
    AddNewMachines.routeName: _standardRoute(
      (context, settings) => AddNewMachines.wrapped(),
    ),
    MachineListPage.routeName: _standardRoute(
      (context, settings) => MachineListPage.wrapped(),
    ),
    AddNewWarehouse.routeName: _standardRoute(
      (context, settings) => AddNewWarehouse.wrapped(),
    ),
    WarehouseListPage.routeName: _standardRoute(
      (context, settings) => WarehouseListPage.wrapped(),
    ),
    SupplierPage.routeName: _standardRoute(
      (context, settings) =>
          SupplierPage.wrapped(settings.arguments as SupplierPageArgument),
    ),
    EditBuyerPage.routeName: _standardRoute(
      (context, settings) => EditBuyerPage.wrapped(
        settings.arguments as EditBuyerPageArgument,
      ),
    ),
    SignInPage.routeName: _standardRoute(
      (context, settings) => SignInPage.wrapped(),
    ),
    HomePage.routeName: _standardRoute(
      (context, settings) => const HomePage(),
    ),
    // SignUpPage.routeName: _standardRoute(
    // (context, settings) => SignUpPage.wrapped(),
    //),
    SupplierListPage.routeName: _standardRoute(
      (context, settings) => SupplierListPage.wrapped(),
    ),
    SignUpPage.routeName: _standardRoute(
      (context, settings) => SignUpPage.wrapped(),
    ),
    AddNewSupplier.routeName: _standardRoute(
      (context, settings) => AddNewSupplier.wrapped(),
    ),
    BuyerListPage.routeName: _standardRoute(
      (context, settings) => BuyerListPage.wrapped(),
    ),
    AddNewBuyer.routeName: _standardRoute(
      (context, settings) => AddNewBuyer.wrapped(),
    ),
    LoginScreen.routeName: _standardRoute(
      (context, settings) => LoginScreen(),
    ),
    OnGoingPrintingList.routeName: _standardRoute(
      (context, settings) => LoginScreen(),
    ),
    StartPrinting.routeName: _standardRoute(
      (context, settings) => StartPrinting.wrapped(),
    ),
    SettingsPage.routeName: _standardRoute(
      (context, settings) => const SettingsPage(),
    ),
    ChangePassword.routeName: _standardRoute(
      (context, settings) => const ChangePassword(),
    ),
    StartProduction.routeName: _standardRoute(
      (context, settings) => StartProduction.wrapped(),
    ),
    OnGoingProductionPage.routeName: _standardRoute(
      (context, settings) => OnGoingProductionPage.wrapped(),
    ),
    ProductionHistoryPage.routeName: _standardRoute(
      (context, settings) => ProductionHistoryPage.wrapped(),
    ),
    PrintingList.routeName: _standardRoute(
      (context, settings) => PrintingList.wrapped(),
    ),
    WastageListPage.routeName: _standardRoute(
      (context, settings) => WastageListPage.wrapped(),
    ),
    ReUtilListPage.routeName: _standardRoute(
      (context, settings) => ReUtilListPage.wrapped(),
    ),
    Purchase.routeName: _standardRoute(
      (context, settings) => Purchase.wrapped(),
    ),
    PurchaseHistoryPage.routeName: _standardRoute(
      (context, settings) => PurchaseHistoryPage.wrapped(),
    ),
    verify_screen.routeName: _standardRoute(
          (context, settings) => verify_screen.wrapped(),
    ),
    phonevrification_screen.routeName: _standardRoute(
          (context, settings) => phonevrification_screen.wrapped(),
    ),
  };

  /// Provides control routing table
  @override
  Route<dynamic> onGenerateRoute(RouteSettings _settings) {
    final routeBuilder = _routes[_settings.name];

    if (routeBuilder == null) {
      assert(false, 'unexpected settings: $_settings');

      return null;
    }

    return MaterialPageRoute<dynamic>(
      builder: (context) => routeBuilder.builder(
        context,
        _settings,
      ),
      settings: _settings,
      fullscreenDialog: true,
    );
  }

  @override
  String extractScreenName(RouteSettings settings) {
    final routeConfig = _routes[settings.name];
    if (routeConfig == null) {
      // note: if the screen isn't defined by us, it'll not be recorded.
      return null;
    }
    final screenName = routeConfig.screenName;

    return screenName ?? convertPathToScreenName(settings.name);
  }

  static const pathSeparator = "/";

  static String convertPathToScreenName(String path) {
    var screenName = path;
    if (screenName.startsWith(pathSeparator)) {
      screenName = screenName.replaceFirst(pathSeparator, "");
    }
    if (screenName.isEmpty) {
      screenName = "(root)";
    }
    return screenName.snakeCase;
  }
}
