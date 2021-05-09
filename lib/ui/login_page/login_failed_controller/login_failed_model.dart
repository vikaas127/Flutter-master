import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_failed_model.freezed.dart';
part 'login_failed_model.g.dart';

@freezed
abstract class LoginResponseModel with _$LoginResponseModel {
  factory LoginResponseModel({
    @JsonKey(name: "username") @Default(<String>[]) List<String> userName,
    @JsonKey(name: "email") @Default(<String>[]) List<String> email,
    @JsonKey(name: "phone_no") @Default(<String>[]) List<String> contactNumber,
    @JsonKey(name: "password") @Default(<String>[]) List<String> password,
    @JsonKey(name: "confirm_password")
    @Default(<String>[])
        List<String> confirmPassword,
    @JsonKey(name: "recovery_question")
    @Default(<String>[])
        List<String> recoveryQuestion,
    @JsonKey(name: "recovery_answer")
    @Default(<String>[])
        List<String> recoveryAnswer,
    @JsonKey(name: "user_type") @Default(<String>[]) List<String> userType,
  }) = _LoginResponseModel;
  factory LoginResponseModel.fromJson(Map<String, dynamic> json) =>
      _$_$_LoginResponseModelFromJson(json);
}
