import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory_management/data/repositories/account_repository.dart';
import 'package:inventory_management/ui/login_page/controller/login_page_controller.dart';

part 'sign_in_model.freezed.dart';

@freezed
abstract class SignInModel with _$SignInModel {
  factory SignInModel({
    @Default(ValidationResult.valid) ValidationResult validation,
    @nullable String username,
    @nullable String password,
    @Default(LoginStatus.none) LoginStatus status,
    @Default(false) bool loading,
  }) = _SignInModel;

  @late
  bool get valid =>
      validation == ValidationResult.valid &&
      username != null &&
      username.isNotEmpty &&
      password != null &&
      password.isNotEmpty;
}
