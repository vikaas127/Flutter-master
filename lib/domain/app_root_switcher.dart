import 'dart:async';

import 'package:disposable_provider/disposable_provider.dart';
import 'package:flutter/foundation.dart';
import 'package:inventory_management/data/repositories/account_repository.dart';
import 'package:inventory_management/ui/home_page/home_page.dart';
import 'package:inventory_management/ui/sign_in/sign_in.dart';
import 'package:inventory_management/utils/subscription_container/subscription_container.dart';
import 'package:inventory_management/utils/subscription_container/subscription_container_mixin.dart';
import 'package:rxdart/rxdart.dart';

import 'app_navigator.dart';

/// A model which switches root pages by checking
/// user data.
class AppRootSwitcher extends Disposable with SubscriptionContainerMixin {
  final AccountRepository accountRepository;
  final AppNavigator appNavigator;

  AppRootSwitcher({
    @required this.accountRepository,
    @required this.appNavigator,
  }) {
    _subscribeAuthState();
  }

  void _subscribeAuthState() {
    accountRepository.getToken().asStream().listen((token) async {
      print(token);
      if (token == null) {
        appNavigator.pushAndRemoveAllPage(SignInPage.routeName);
      } else {
        appNavigator.pushAndRemoveAllPage(HomePage.routeName);
      }
    }).append(subscriptionContainer);
  }
}

extension SafeClosableSubjectExtension<T> on Subject<T> {
  /// Close this Subject after all data was drained.
  Future<void> safeClose() => drain<void>().then((_) => close());
}
