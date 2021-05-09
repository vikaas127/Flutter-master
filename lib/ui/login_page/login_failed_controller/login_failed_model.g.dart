// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_failed_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LoginResponseModel _$_$_LoginResponseModelFromJson(
    Map<String, dynamic> json) {
  return _$_LoginResponseModel(
    userName: (json['username'] as List)?.map((e) => e as String)?.toList(),
    email: (json['email'] as List)?.map((e) => e as String)?.toList(),
    contactNumber:
        (json['phone_no'] as List)?.map((e) => e as String)?.toList(),
    password: (json['password'] as List)?.map((e) => e as String)?.toList(),
    confirmPassword:
        (json['confirm_password'] as List)?.map((e) => e as String)?.toList(),
    recoveryQuestion:
        (json['recovery_question'] as List)?.map((e) => e as String)?.toList(),
    recoveryAnswer:
        (json['recovery_answer'] as List)?.map((e) => e as String)?.toList(),
    userType: (json['user_type'] as List)?.map((e) => e as String)?.toList(),
  );
}

Map<String, dynamic> _$_$_LoginResponseModelToJson(
        _$_LoginResponseModel instance) =>
    <String, dynamic>{
      'username': instance.userName,
      'email': instance.email,
      'phone_no': instance.contactNumber,
      'password': instance.password,
      'confirm_password': instance.confirmPassword,
      'recovery_question': instance.recoveryQuestion,
      'recovery_answer': instance.recoveryAnswer,
      'user_type': instance.userType,
    };
