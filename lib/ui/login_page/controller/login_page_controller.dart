import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:inventory_management/data/repositories/account_repository.dart';
import 'package:inventory_management/domain/app_navigator.dart';
import 'package:inventory_management/ui/home_page/home_page.dart';
import 'package:inventory_management/ui/login_page/controller/login_model.dart';
import 'package:inventory_management/ui/login_page/email_verification.dart';
import 'package:inventory_management/ui/login_page/verify_screen.dart';

enum ValidationResult {
  userNameEmpty,
  emailInvalid,
  emailEmpty,
  phoneNumberInvalid,
  phoneNumberEmpty,
  passwordEmpty,
  passwordLessThanSix,
  confirmPasswordWrong,
  recoveryQuestionEmpty,
  recoveryAnswerEmpty,
  userTypeEmpty,
  userTypeMismatch,
  valid,
}

extension ErrorMessage on ValidationResult {
  String get errorMessage {
    switch (this) {
      case ValidationResult.valid:
        return null;
      case ValidationResult.userNameEmpty:
        return 'username cannot be empty';

      case ValidationResult.emailInvalid:
        return 'invalid emailId';

      case ValidationResult.phoneNumberInvalid:
        return 'invalid phone number';

      case ValidationResult.passwordLessThanSix:
        return 'password cannot be less than eight characters';

      case ValidationResult.confirmPasswordWrong:
        return 'password does not match';

      case ValidationResult.recoveryQuestionEmpty:
        return 'please enter recovery question';

      case ValidationResult.recoveryAnswerEmpty:
        return 'please enter recovery answer';

      case ValidationResult.userTypeEmpty:
        return 'please enter usertype';

      case ValidationResult.passwordEmpty:
        return 'please enter password';

      case ValidationResult.userTypeMismatch:
        return "please enter 0 or 1";

      case ValidationResult.emailEmpty:
        return "please enter email";

      case ValidationResult.phoneNumberEmpty:
        return "please enter contact number";
    }
    return null;
  }
}

class LoginPageController extends ValueNotifier<LoginModel> {
  final AccountRepository accountRepository;
  final AppNavigator appNavigator;
  final Function(List<String>) onError;

  LoginPageController({
    @required this.appNavigator,
    @required this.accountRepository,
    @required this.onError,
  }) : super(LoginModel());

  Future<void> login() async {
    value = value.copyWith(loading: true);
    final result = await accountRepository.registerUser(
        email: value.email,
        password: value.password,
        contactNumber: value.contactNumber,
        confirmPassword: value.confirmPassword,
        userType: value.userType.toString(),
        recoveryAnswer: value.recoveryAnswer,
        userName: value.userName,
        recoveryQuestion: value.recoveryQuestion);
    value = value.copyWith(loading: false);
    if (result.status != LoginStatus.successfull) {
      appNavigator.pushAndRemoveAllPage(verify_screen.routeName);
    } else {
      print(result.model);
      final resultError = <String>[];
      if (result.model.userName != null) {
        resultError.add(result.model.userName[0]);
      } else if (result.model.password != null) {
        resultError.add(result.model.password[0]);
      } else if (result.model.contactNumber != null) {
        resultError.add(result.model.password[0]);
      } else if (result.model.email != null) {
        resultError.add(result.model.email[0]);
      }
      print(resultError);
      onError(resultError);
    }
  }

  void emailChanged(String email) {
    if (email != null) {
      value = value.copyWith(
        email: email,
        validation: email.isEmpty
            ? ValidationResult.emailEmpty
            : EmailValidator.validate(email)
                ? ValidationResult.valid
                : ValidationResult.emailInvalid,
      );
    }
  }

  void usernameChanged(String username) {
    if (username != null) {
      value = value.copyWith(
        userName: username,
        validation: username.isEmpty
            ? ValidationResult.userNameEmpty
            : ValidationResult.valid,
      );
    }
  }

  void phoneNumberChanged(String number) {
    if (number != null) {
      final no = int.parse(number);
      value = value.copyWith(
        contactNumber: no,
        validation: number.characters.length == 10
            ? ValidationResult.valid
            : ValidationResult.phoneNumberInvalid,
      );
    }
  }

  void passwordChanged(String password) {
    if (password != null) {
      value = value.copyWith(
        password: password,
        validation: password.isNotEmpty
            ? password.characters.length >= 8
                ? ValidationResult.valid
                : ValidationResult.passwordLessThanSix
            : ValidationResult.passwordEmpty,
      );
    }
  }

  void confirmPasswordChanged(String password) {
    if (password != null) {
      value = value.copyWith(
        confirmPassword: password,
        validation: password.compareTo(value.password) == 0
            ? ValidationResult.valid
            : ValidationResult.confirmPasswordWrong,
      );
    }
  }

  void recoveryQuestionChanged(String question) {
    if (question != null) {
      value = value.copyWith(
        recoveryQuestion: question,
        validation: question.isEmpty
            ? ValidationResult.userNameEmpty
            : ValidationResult.valid,
      );
    }
  }

  void recoveryAnswerChanged(String answer) {
    if (answer != null) {
      value = value.copyWith(
        recoveryAnswer: answer,
        validation: answer.isEmpty
            ? ValidationResult.userNameEmpty
            : ValidationResult.valid,
      );
    }
  }

  void userTypeChanged(int user) {
    print(value);
    if (type != null) {
      value = value.copyWith(
        userType: user,
        validation: user != 0 || user != 1
            ? ValidationResult.userTypeMismatch
            : ValidationResult.valid,
      );
    }
  }

  String validationMessageUserName(String current) {
    if (value.validation == ValidationResult.userNameEmpty) {
      return value.validation.errorMessage;
    }

    return null;
  }

  String validationMessageEmail(String current) {
    if (value.validation == ValidationResult.emailInvalid ||
        value.validation == ValidationResult.emailEmpty) {
      return value.validation.errorMessage;
    }
    return null;
  }

  String validationMessageContactNumber(String current) {
    if (value.validation == ValidationResult.phoneNumberInvalid ||
        value.validation == ValidationResult.phoneNumberEmpty) {
      return value.validation.errorMessage;
    }
    return null;
  }

  String validationMessagePassword(String current) {
    if (value.validation == ValidationResult.passwordEmpty ||
        value.validation == ValidationResult.passwordLessThanSix) {
      return value.validation.errorMessage;
    }
    return null;
  }

  String validationMessageConfirmPassword(String current) {
    if (value.validation == ValidationResult.confirmPasswordWrong) {
      return value.validation.errorMessage;
    }
    return null;
  }

  String validationMessageRecoveryQuestion(String current) {
    if (value.validation == ValidationResult.recoveryQuestionEmpty) {
      return value.validation.errorMessage;
    }
    return null;
  }

  String validationMessageRecoveryAnswer(String current) {
    if (value.validation == ValidationResult.recoveryAnswerEmpty) {
      return value.validation.errorMessage;
    }
    return null;
  }

  String validationMessageUserType(String current) {
    if (value.validation == ValidationResult.userTypeEmpty ||
        value.validation == ValidationResult.userTypeMismatch) {
      return value.validation.errorMessage;
    }
    return null;
  }
}
