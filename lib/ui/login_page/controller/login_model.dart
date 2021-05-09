import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory_management/ui/login_page/controller/login_page_controller.dart';

part 'login_model.freezed.dart';

@freezed
abstract class LoginModel with _$LoginModel {
  factory LoginModel({
    @Default(ValidationResult.valid) ValidationResult validation,
    @nullable String userName,
    @nullable String email,
    @nullable int contactNumber,
    @nullable String password,
    @nullable String confirmPassword,
    @nullable String recoveryQuestion,
    @nullable String recoveryAnswer,
    @nullable int userType,
    @Default(false) bool loading,
  }) = _LoginModel;

  @late
  bool get valid =>
      validation == ValidationResult.valid &&
      userName != null &&
      userName.isNotEmpty &&
      email != null &&
      email.isNotEmpty &&
      contactNumber != null &&
      password != null &&
      password.isNotEmpty &&
      confirmPassword != null &&
      confirmPassword.isNotEmpty &&
      recoveryQuestion != null &&
      recoveryQuestion.isNotEmpty &&
      recoveryAnswer != null &&
      recoveryAnswer.isNotEmpty &&
      userType != null;
}
