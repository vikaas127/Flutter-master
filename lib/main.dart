import 'package:disposable_provider/disposable_provider.dart';
import 'package:flutter/material.dart';
import 'package:inventory_management/router.dart';
import 'package:inventory_management/ui/splash_page.dart';
import 'package:provider/provider.dart';

import 'app/providers/repository_provider.dart';
import 'domain/app_navigator.dart';
import 'domain/app_root_switcher.dart';

void main() {
  _initializePluginsBeforeAppLaunches();
  runApp(BiteCopeApp.wrapped());
}

void _initializePluginsBeforeAppLaunches() {
  WidgetsFlutterBinding.ensureInitialized();
}

enum MainPageTab {
  home,
  setting,
  orders,
  bill,
}

class BiteCopeApp extends StatelessWidget {
  const BiteCopeApp({Key key}) : super(key: key);

  static Widget wrapped() {
    return MultiProvider(
      providers: [
        const RepositoriesProvider(),
        Provider(
          lazy: false,
          create: (_) => AppNavigator(
            navigatorKey: GlobalKey(debugLabel: "for Global Navigation"),
          ),
        ),
        Provider(
          lazy: false,
          create: (_) => GlobalRouter(
            shouldShowDebugMenu:
                // note: shows it only when debug build.
                false,
          ),
        ),
        DisposableProvider(
          lazy: false,
          create: (_context) => AppRootSwitcher(
            accountRepository: _context.read(),
            appNavigator: _context.read(),
          ),
        )
      ],
      child: const BiteCopeApp(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey:
          Provider.of<AppNavigator>(context, listen: false).navigatorKey,
      onGenerateRoute:
          Provider.of<GlobalRouter>(context, listen: false).onGenerateRoute,
      home: () {
        return const SplashPage();
      }(),
    );
  }
}
