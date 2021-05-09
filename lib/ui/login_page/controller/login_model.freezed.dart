// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'login_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$LoginModelTearOff {
  const _$LoginModelTearOff();

// ignore: unused_element
  _LoginModel call(
      {ValidationResult validation = ValidationResult.valid,
      @nullable String userName,
      @nullable String email,
      @nullable int contactNumber,
      @nullable String password,
      @nullable String confirmPassword,
      @nullable String recoveryQuestion,
      @nullable String recoveryAnswer,
      @nullable int userType,
      bool loading = false}) {
    return _LoginModel(
      validation: validation,
      userName: userName,
      email: email,
      contactNumber: contactNumber,
      password: password,
      confirmPassword: confirmPassword,
      recoveryQuestion: recoveryQuestion,
      recoveryAnswer: recoveryAnswer,
      userType: userType,
      loading: loading,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $LoginModel = _$LoginModelTearOff();

/// @nodoc
mixin _$LoginModel {
  ValidationResult get validation;
  @nullable
  String get userName;
  @nullable
  String get email;
  @nullable
  int get contactNumber;
  @nullable
  String get password;
  @nullable
  String get confirmPassword;
  @nullable
  String get recoveryQuestion;
  @nullable
  String get recoveryAnswer;
  @nullable
  int get userType;
  bool get loading;

  @JsonKey(ignore: true)
  $LoginModelCopyWith<LoginModel> get copyWith;
}

/// @nodoc
abstract class $LoginModelCopyWith<$Res> {
  factory $LoginModelCopyWith(
          LoginModel value, $Res Function(LoginModel) then) =
      _$LoginModelCopyWithImpl<$Res>;
  $Res call(
      {ValidationResult validation,
      @nullable String userName,
      @nullable String email,
      @nullable int contactNumber,
      @nullable String password,
      @nullable String confirmPassword,
      @nullable String recoveryQuestion,
      @nullable String recoveryAnswer,
      @nullable int userType,
      bool loading});
}

/// @nodoc
class _$LoginModelCopyWithImpl<$Res> implements $LoginModelCopyWith<$Res> {
  _$LoginModelCopyWithImpl(this._value, this._then);

  final LoginModel _value;
  // ignore: unused_field
  final $Res Function(LoginModel) _then;

  @override
  $Res call({
    Object validation = freezed,
    Object userName = freezed,
    Object email = freezed,
    Object contactNumber = freezed,
    Object password = freezed,
    Object confirmPassword = freezed,
    Object recoveryQuestion = freezed,
    Object recoveryAnswer = freezed,
    Object userType = freezed,
    Object loading = freezed,
  }) {
    return _then(_value.copyWith(
      validation: validation == freezed
          ? _value.validation
          : validation as ValidationResult,
      userName: userName == freezed ? _value.userName : userName as String,
      email: email == freezed ? _value.email : email as String,
      contactNumber: contactNumber == freezed
          ? _value.contactNumber
          : contactNumber as int,
      password: password == freezed ? _value.password : password as String,
      confirmPassword: confirmPassword == freezed
          ? _value.confirmPassword
          : confirmPassword as String,
      recoveryQuestion: recoveryQuestion == freezed
          ? _value.recoveryQuestion
          : recoveryQuestion as String,
      recoveryAnswer: recoveryAnswer == freezed
          ? _value.recoveryAnswer
          : recoveryAnswer as String,
      userType: userType == freezed ? _value.userType : userType as int,
      loading: loading == freezed ? _value.loading : loading as bool,
    ));
  }
}

/// @nodoc
abstract class _$LoginModelCopyWith<$Res> implements $LoginModelCopyWith<$Res> {
  factory _$LoginModelCopyWith(
          _LoginModel value, $Res Function(_LoginModel) then) =
      __$LoginModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {ValidationResult validation,
      @nullable String userName,
      @nullable String email,
      @nullable int contactNumber,
      @nullable String password,
      @nullable String confirmPassword,
      @nullable String recoveryQuestion,
      @nullable String recoveryAnswer,
      @nullable int userType,
      bool loading});
}

/// @nodoc
class __$LoginModelCopyWithImpl<$Res> extends _$LoginModelCopyWithImpl<$Res>
    implements _$LoginModelCopyWith<$Res> {
  __$LoginModelCopyWithImpl(
      _LoginModel _value, $Res Function(_LoginModel) _then)
      : super(_value, (v) => _then(v as _LoginModel));

  @override
  _LoginModel get _value => super._value as _LoginModel;

  @override
  $Res call({
    Object validation = freezed,
    Object userName = freezed,
    Object email = freezed,
    Object contactNumber = freezed,
    Object password = freezed,
    Object confirmPassword = freezed,
    Object recoveryQuestion = freezed,
    Object recoveryAnswer = freezed,
    Object userType = freezed,
    Object loading = freezed,
  }) {
    return _then(_LoginModel(
      validation: validation == freezed
          ? _value.validation
          : validation as ValidationResult,
      userName: userName == freezed ? _value.userName : userName as String,
      email: email == freezed ? _value.email : email as String,
      contactNumber: contactNumber == freezed
          ? _value.contactNumber
          : contactNumber as int,
      password: password == freezed ? _value.password : password as String,
      confirmPassword: confirmPassword == freezed
          ? _value.confirmPassword
          : confirmPassword as String,
      recoveryQuestion: recoveryQuestion == freezed
          ? _value.recoveryQuestion
          : recoveryQuestion as String,
      recoveryAnswer: recoveryAnswer == freezed
          ? _value.recoveryAnswer
          : recoveryAnswer as String,
      userType: userType == freezed ? _value.userType : userType as int,
      loading: loading == freezed ? _value.loading : loading as bool,
    ));
  }
}

/// @nodoc
class _$_LoginModel implements _LoginModel {
  _$_LoginModel(
      {this.validation = ValidationResult.valid,
      @nullable this.userName,
      @nullable this.email,
      @nullable this.contactNumber,
      @nullable this.password,
      @nullable this.confirmPassword,
      @nullable this.recoveryQuestion,
      @nullable this.recoveryAnswer,
      @nullable this.userType,
      this.loading = false})
      : assert(validation != null),
        assert(loading != null);

  @JsonKey(defaultValue: ValidationResult.valid)
  @override
  final ValidationResult validation;
  @override
  @nullable
  final String userName;
  @override
  @nullable
  final String email;
  @override
  @nullable
  final int contactNumber;
  @override
  @nullable
  final String password;
  @override
  @nullable
  final String confirmPassword;
  @override
  @nullable
  final String recoveryQuestion;
  @override
  @nullable
  final String recoveryAnswer;
  @override
  @nullable
  final int userType;
  @JsonKey(defaultValue: false)
  @override
  final bool loading;

  bool _didvalid = false;
  bool _valid;

  @override
  bool get valid {
    if (_didvalid == false) {
      _didvalid = true;
      _valid = validation == ValidationResult.valid &&
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
    return _valid;
  }

  @override
  String toString() {
    return 'LoginModel(validation: $validation, userName: $userName, email: $email, contactNumber: $contactNumber, password: $password, confirmPassword: $confirmPassword, recoveryQuestion: $recoveryQuestion, recoveryAnswer: $recoveryAnswer, userType: $userType, loading: $loading, valid: $valid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoginModel &&
            (identical(other.validation, validation) ||
                const DeepCollectionEquality()
                    .equals(other.validation, validation)) &&
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
                    .equals(other.userType, userType)) &&
            (identical(other.loading, loading) ||
                const DeepCollectionEquality().equals(other.loading, loading)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(validation) ^
      const DeepCollectionEquality().hash(userName) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(contactNumber) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(confirmPassword) ^
      const DeepCollectionEquality().hash(recoveryQuestion) ^
      const DeepCollectionEquality().hash(recoveryAnswer) ^
      const DeepCollectionEquality().hash(userType) ^
      const DeepCollectionEquality().hash(loading);

  @JsonKey(ignore: true)
  @override
  _$LoginModelCopyWith<_LoginModel> get copyWith =>
      __$LoginModelCopyWithImpl<_LoginModel>(this, _$identity);
}

abstract class _LoginModel implements LoginModel {
  factory _LoginModel(
      {ValidationResult validation,
      @nullable String userName,
      @nullable String email,
      @nullable int contactNumber,
      @nullable String password,
      @nullable String confirmPassword,
      @nullable String recoveryQuestion,
      @nullable String recoveryAnswer,
      @nullable int userType,
      bool loading}) = _$_LoginModel;

  @override
  ValidationResult get validation;
  @override
  @nullable
  String get userName;
  @override
  @nullable
  String get email;
  @override
  @nullable
  int get contactNumber;
  @override
  @nullable
  String get password;
  @override
  @nullable
  String get confirmPassword;
  @override
  @nullable
  String get recoveryQuestion;
  @override
  @nullable
  String get recoveryAnswer;
  @override
  @nullable
  int get userType;
  @override
  bool get loading;
  @override
  @JsonKey(ignore: true)
  _$LoginModelCopyWith<_LoginModel> get copyWith;
}
