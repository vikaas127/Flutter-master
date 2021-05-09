import 'package:flutter/material.dart';
import 'package:inventory_management/domain/app_navigator.dart';
import 'package:inventory_management/ui/home_page/home_page.dart';
import 'package:inventory_management/ui/login_page/controller/login_page_controller.dart';
import 'package:inventory_management/ui/sign_in/sign_in_model.dart';

import '../../data/repositories/account_repository.dart';

enum Validation { empty, valid, noAccount, invalid }

class ViewModel {
  final Validation username;
  final Validation password;
  final bool noAccount;

  ViewModel({this.noAccount, @required this.username, @required this.password});
}

class SignInController extends ValueNotifier<SignInModel> {
  final AccountRepository accountRepository;
  final AppNavigator appNavigator;

  SignInController(this.accountRepository, this.appNavigator)
      : super(
          SignInModel(),
        );
  void setUserName(String username) {
    print(username);
    if (username.isEmpty) {
      value = value.copyWith(
          username: username, validation: ValidationResult.userNameEmpty);
    } else {
      value = value.copyWith(
          username: username, validation: ValidationResult.valid);
    }
  }

  void setPassword(String password) {
    if (password.isEmpty) {
      value = value.copyWith(
          password: password, validation: ValidationResult.passwordEmpty);
    } else {
      value = value.copyWith(
          password: password, validation: ValidationResult.valid);
    }
  }

  Future<void> signIn() async {
    value = value.copyWith(loading: true);
    final result = await accountRepository.signIn(
      //  username: value.username, password: value.password
        username: "vikas1", password: "123vikas"
    );
    value = value.copyWith(loading: false);
    switch (result.status) {
      case LoginStatus.successfull:
        appNavigator.pushAndRemoveAllPage(HomePage.routeName);
        break;
      case LoginStatus.failed:
        value = value.copyWith(status: LoginStatus.failed);
        break;
      case LoginStatus.none:
        // noop
        break;
    }
  }
  Future<void> proceedIn() async {
    value = value.copyWith(loading: true);
    final result = await accountRepository.signIn(
        username: value.username, password: value.password);
    value = value.copyWith(loading: false);
    switch (result.status) {
      case LoginStatus.successfull:
        appNavigator.pushAndRemoveAllPage(HomePage.routeName);
        break;
      case LoginStatus.failed:
        value = value.copyWith(status: LoginStatus.failed);
        break;
      case LoginStatus.none:
      // noop
        break;
    }
  }
}
