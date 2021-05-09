// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'login_failed_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
LoginResponseModel _$LoginResponseModelFromJson(Map<String, dynamic> json) {
  return _LoginResponseModel.fromJson(json);
}

/// @nodoc
class _$LoginResponseModelTearOff {
  const _$LoginResponseModelTearOff();

// ignore: unused_element
  _LoginResponseModel call(
      {@JsonKey(name: "username")
          List<String> userName = const <String>[],
      @JsonKey(name: "email")
          List<String> email = const <String>[],
      @JsonKey(name: "phone_no")
          List<String> contactNumber = const <String>[],
      @JsonKey(name: "password")
          List<String> password = const <String>[],
      @JsonKey(name: "confirm_password")
          List<String> confirmPassword = const <String>[],
      @JsonKey(name: "recovery_question")
          List<String> recoveryQuestion = const <String>[],
      @JsonKey(name: "recovery_answer")
          List<String> recoveryAnswer = const <String>[],
      @JsonKey(name: "user_type")
          List<String> userType = const <String>[]}) {
    return _LoginResponseModel(
      userName: userName,
      email: email,
      contactNumber: contactNumber,
      password: password,
      confirmPassword: confirmPassword,
      recoveryQuestion: recoveryQuestion,
      recoveryAnswer: recoveryAnswer,
      userType: userType,
    );
  }

// ignore: unused_element
  LoginResponseModel fromJson(Map<String, Object> json) {
    return LoginResponseModel.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $LoginResponseModel = _$LoginResponseModelTearOff();

/// @nodoc
mixin _$LoginResponseModel {
  @JsonKey(name: "username")
  List<String> get userName;
  @JsonKey(name: "email")
  List<String> get email;
  @JsonKey(name: "phone_no")
  List<String> get contactNumber;
  @JsonKey(name: "password")
  List<String> get password;
  @JsonKey(name: "confirm_password")
  List<String> get confirmPassword;
  @JsonKey(name: "recovery_question")
  List<String> get recoveryQuestion;
  @JsonKey(name: "recovery_answer")
  List<String> get recoveryAnswer;
  @JsonKey(name: "user_type")
  List<String> get userType;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $LoginResponseModelCopyWith<LoginResponseModel> get copyWith;
}

/// @nodoc
abstract class $LoginResponseModelCopyWith<$Res> {
  factory $LoginResponseModelCopyWith(
          LoginResponseModel value, $Res Function(LoginResponseModel) then) =
      _$LoginResponseModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "username") List<String> userName,
      @JsonKey(name: "email") List<String> email,
      @JsonKey(name: "phone_no") List<String> contactNumber,
      @JsonKey(name: "password") List<String> password,
      @JsonKey(name: "confirm_password") List<String> confirmPassword,
      @JsonKey(name: "recovery_question") List<String> recoveryQuestion,
      @JsonKey(name: "recovery_answer") List<String> recoveryAnswer,
      @JsonKey(name: "user_type") List<String> userType});
}

/// @nodoc
class _$LoginResponseModelCopyWithImpl<$Res>
    implements $LoginResponseModelCopyWith<$Res> {
  _$LoginResponseModelCopyWithImpl(this._value, this._then);

  final LoginResponseModel _value;
  // ignore: unused_field
  final $Res Function(LoginResponseModel) _then;

  @override
  $Res call({
    Object userName = freezed,
    Object email = freezed,
    Object contactNumber = freezed,
    Object password = freezed,
    Object confirmPassword = freezed,
    Object recoveryQuestion = freezed,
    Object recoveryAnswer = freezed,
    Object userType = freezed,
  }) {
    return _then(_value.copyWith(
      userName:
          userName == freezed ? _value.userName : userName as List<String>,
      email: email == freezed ? _value.email : email as List<String>,
      contactNumber: contactNumber == freezed
          ? _value.contactNumber
          : contactNumber as List<String>,
      password:
          password == freezed ? _value.password : password as List<String>,
      confirmPassword: confirmPassword == freezed
          ? _value.confirmPassword
          : confirmPassword as List<String>,
      recoveryQuestion: recoveryQuestion == freezed
          ? _value.recoveryQuestion
          : recoveryQuestion as List<String>,
      recoveryAnswer: recoveryAnswer == freezed
          ? _value.recoveryAnswer
          : recoveryAnswer as List<String>,
      userType:
          userType == freezed ? _value.userType : userType as List<String>,
    ));
  }
}

/// @nodoc
abstract class _$LoginResponseModelCopyWith<$Res>
    implements $LoginResponseModelCopyWith<$Res> {
  factory _$LoginResponseModelCopyWith(
          _LoginResponseModel value, $Res Function(_LoginResponseModel) then) =
      __$LoginResponseModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "username") List<String> userName,
      @JsonKey(name: "email") List<String> email,
      @JsonKey(name: "phone_no") List<String> contactNumber,
      @JsonKey(name: "password") List<String> password,
      @JsonKey(name: "confirm_password") List<String> confirmPassword,
      @JsonKey(name: "recovery_question") List<String> recoveryQuestion,
      @JsonKey(name: "recovery_answer") List<String> recoveryAnswer,
      @JsonKey(name: "user_type") List<String> userType});
}

/// @nodoc
class __$LoginResponseModelCopyWithImpl<$Res>
    extends _$LoginResponseModelCopyWithImpl<$Res>
    implements _$LoginResponseModelCopyWith<$Res> {
  __$LoginResponseModelCopyWithImpl(
      _LoginResponseModel _value, $Res Function(_LoginResponseModel) _then)
      : super(_value, (v) => _then(v as _LoginResponseModel));

  @override
  _LoginResponseModel get _value => super._value as _LoginResponseModel;

  @override
  $Res call({
    Object userName = freezed,
    Object email = freezed,
    Object contactNumber = freezed,
    Object password = freezed,
    Object confirmPassword = freezed,
    Object recoveryQuestion = freezed,
    Object recoveryAnswer = freezed,
    Object userType = freezed,
  }) {
    return _then(_LoginResponseModel(
      userName:
          userName == freezed ? _value.userName : userName as List<String>,
      email: email == freezed ? _value.email : email as List<String>,
      contactNumber: contactNumber == freezed
          ? _value.contactNumber
          : contactNumber as List<String>,
      password:
          password == freezed ? _value.password : password as List<String>,
      confirmPassword: confirmPassword == freezed
          ? _value.confirmPassword
          : confirmPassword as List<String>,
      recoveryQuestion: recoveryQuestion == freezed
          ? _value.recoveryQuestion
          : recoveryQuestion as List<String>,
      recoveryAnswer: recoveryAnswer == freezed
          ? _value.recoveryAnswer
          : recoveryAnswer as List<String>,
      userType:
          userType == freezed ? _value.userType : userType as List<String>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_LoginResponseModel implements _LoginResponseModel {
  _$_LoginResponseModel(
      {@JsonKey(name: "username")
          this.userName = const <String>[],
      @JsonKey(name: "email")
          this.email = const <String>[],
      @JsonKey(name: "phone_no")
          this.contactNumber = const <String>[],
      @JsonKey(name: "password")
          this.password = const <String>[],
      @JsonKey(name: "confirm_password")
          this.confirmPassword = const <String>[],
      @JsonKey(name: "recovery_question")
          this.recoveryQuestion = const <String>[],
      @JsonKey(name: "recovery_answer")
          this.recoveryAnswer = const <String>[],
      @JsonKey(name: "user_type")
          this.userType = const <String>[]});

  factory _$_LoginResponseModel.fromJson(Map<String, dynamic> json) =>
      _$_$_LoginResponseModelFromJson(json);

  @override
  @JsonKey(name: "username")
  final List<String> userName;
  @override
  @JsonKey(name: "email")
  final List<String> email;
  @override
  @JsonKey(name: "phone_no")
  final List<String> contactNumber;
  @override
  @JsonKey(name: "password")
  final List<String> password;
  @override
  @JsonKey(name: "confirm_password")
  final List<String> confirmPassword;
  @override
  @JsonKey(name: "recovery_question")
  final List<String> recoveryQuestion;
  @override
  @JsonKey(name: "recovery_answer")
  final List<String> recoveryAnswer;
  @override
  @JsonKey(name: "user_type")
  final List<String> userType;

  @override
  String toString() {
    return 'LoginResponseModel(userName: $userName, email: $email, contactNumber: $contactNumber, password: $password, confirmPassword: $confirmPassword, recoveryQuestion: $recoveryQuestion, recoveryAnswer: $recoveryAnswer, userType: $userType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoginResponseModel &&
            (identical(other.userName, userName) ||
                const DeepCollectionEquality()
                    .equals(other.userName, userName)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.contactNumber, contactNumber) ||
                const DeepCollectionEquality()
                    .equals(other.contactNumber, contactNumber)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.confirmPassword, confirmPassword) ||
                const DeepCollectionEquality()
                    .equals(other.confirmPassword, confirmPassword)) &&
            (identical(other.recoveryQuestion, recoveryQuestion) ||
                const DeepCollectionEquality()
                    .equals(other.recoveryQuestion, recoveryQuestion)) &&
            (identical(other.recoveryAnswer, recoveryAnswer) ||
                const DeepCollectionEquality()
                    .equals(other.recoveryAnswer, recoveryAnswer)) &&
            (identical(other.userType, userType) ||
                const DeepCollectionEquality()
                    .equals(other.userType, userType)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(userName) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(contactNumber) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(confirmPassword) ^
      const DeepCollectionEquality().hash(recoveryQuestion) ^
      const DeepCollectionEquality().hash(recoveryAnswer) ^
      const DeepCollectionEquality().hash(userType);

  @JsonKey(ignore: true)
  @override
  _$LoginResponseModelCopyWith<_LoginResponseModel> get copyWith =>
      __$LoginResponseModelCopyWithImpl<_LoginResponseModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_LoginResponseModelToJson(this);
  }
}

abstract class _LoginResponseModel implements LoginResponseModel {
  factory _LoginResponseModel(
          {@JsonKey(name: "username") List<String> userName,
          @JsonKey(name: "email") List<String> email,
          @JsonKey(name: "phone_no") List<String> contactNumber,
          @JsonKey(name: "password") List<String> password,
          @JsonKey(name: "confirm_password") List<String> confirmPassword,
          @JsonKey(name: "recovery_question") List<String> recoveryQuestion,
          @JsonKey(name: "recovery_answer") List<String> recoveryAnswer,
          @JsonKey(name: "user_type") List<String> userType}) =
      _$_LoginResponseModel;

  factory _LoginResponseModel.fromJson(Map<String, dynamic> json) =
      _$_LoginResponseModel.fromJson;

  @override
  @JsonKey(name: "username")
  List<String> get userName;
  @override
  @JsonKey(name: "email")
  List<String> get email;
  @override
  @JsonKey(name: "phone_no")
  List<String> get contactNumber;
  @override
  @JsonKey(name: "password")
  List<String> get password;
  @override
  @JsonKey(name: "confirm_password")
  List<String> get confirmPassword;
  @override
  @JsonKey(name: "recovery_question")
  List<String> get recoveryQuestion;
  @override
  @JsonKey(name: "recovery_answer")
  List<String> get recoveryAnswer;
  @override
  @JsonKey(name: "user_type")
  List<String> get userType;
  @override
  @JsonKey(ignore: true)
  _$LoginResponseModelCopyWith<_LoginResponseModel> get copyWith;
}
