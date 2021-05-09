// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'sign_in_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$SignInModelTearOff {
  const _$SignInModelTearOff();

// ignore: unused_element
  _SignInModel call(
      {ValidationResult validation = ValidationResult.valid,
      @nullable String username,
      @nullable String password,
      LoginStatus status = LoginStatus.none,
      bool loading = false}) {
    return _SignInModel(
      validation: validation,
      username: username,
      password: password,
      status: status,
      loading: loading,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SignInModel = _$SignInModelTearOff();

/// @nodoc
mixin _$SignInModel {
  ValidationResult get validation;
  @nullable
  String get username;
  @nullable
  String get password;
  LoginStatus get status;
  bool get loading;

  @JsonKey(ignore: true)
  $SignInModelCopyWith<SignInModel> get copyWith;
}

/// @nodoc
abstract class $SignInModelCopyWith<$Res> {
  factory $SignInModelCopyWith(
          SignInModel value, $Res Function(SignInModel) then) =
      _$SignInModelCopyWithImpl<$Res>;
  $Res call(
      {ValidationResult validation,
      @nullable String username,
      @nullable String password,
      LoginStatus status,
      bool loading});
}

/// @nodoc
class _$SignInModelCopyWithImpl<$Res> implements $SignInModelCopyWith<$Res> {
  _$SignInModelCopyWithImpl(this._value, this._then);

  final SignInModel _value;
  // ignore: unused_field
  final $Res Function(SignInModel) _then;

  @override
  $Res call({
    Object validation = freezed,
    Object username = freezed,
    Object password = freezed,
    Object status = freezed,
    Object loading = freezed,
  }) {
    return _then(_value.copyWith(
      validation: validation == freezed
          ? _value.validation
          : validation as ValidationResult,
      username: username == freezed ? _value.username : username as String,
      password: password == freezed ? _value.password : password as String,
      status: status == freezed ? _value.status : status as LoginStatus,
      loading: loading == freezed ? _value.loading : loading as bool,
    ));
  }
}

/// @nodoc
abstract class _$SignInModelCopyWith<$Res>
    implements $SignInModelCopyWith<$Res> {
  factory _$SignInModelCopyWith(
          _SignInModel value, $Res Function(_SignInModel) then) =
      __$SignInModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {ValidationResult validation,
      @nullable String username,
      @nullable String password,
      LoginStatus status,
      bool loading});
}

/// @nodoc
class __$SignInModelCopyWithImpl<$Res> extends _$SignInModelCopyWithImpl<$Res>
    implements _$SignInModelCopyWith<$Res> {
  __$SignInModelCopyWithImpl(
      _SignInModel _value, $Res Function(_SignInModel) _then)
      : super(_value, (v) => _then(v as _SignInModel));

  @override
  _SignInModel get _value => super._value as _SignInModel;

  @override
  $Res call({
    Object validation = freezed,
    Object username = freezed,
    Object password = freezed,
    Object status = freezed,
    Object loading = freezed,
  }) {
    return _then(_SignInModel(
      validation: validation == freezed
          ? _value.validation
          : validation as ValidationResult,
      username: username == freezed ? _value.username : username as String,
      password: password == freezed ? _value.password : password as String,
      status: status == freezed ? _value.status : status as LoginStatus,
      loading: loading == freezed ? _value.loading : loading as bool,
    ));
  }
}

/// @nodoc
class _$_SignInModel implements _SignInModel {
  _$_SignInModel(
      {this.validation = ValidationResult.valid,
      @nullable this.username,
      @nullable this.password,
      this.status = LoginStatus.none,
      this.loading = false})
      : assert(validation != null),
        assert(status != null),
        assert(loading != null);

  @JsonKey(defaultValue: ValidationResult.valid)
  @override
  final ValidationResult validation;
  @override
  @nullable
  final String username;
  @override
  @nullable
  final String password;
  @JsonKey(defaultValue: LoginStatus.none)
  @override
  final LoginStatus status;
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
          username != null &&
          username.isNotEmpty &&
          password != null &&
          password.isNotEmpty;
    }
    return _valid;
  }

  @override
  String toString() {
    return 'SignInModel(validation: $validation, username: $username, password: $password, status: $status, loading: $loading, valid: $valid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SignInModel &&
            (identical(other.validation, validation) ||
                const DeepCollectionEquality()
                    .equals(other.validation, validation)) &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.loading, loading) ||
                const DeepCollectionEquality().equals(other.loading, loading)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(validation) ^
      const DeepCollectionEquality().hash(username) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(loading);

  @JsonKey(ignore: true)
  @override
  _$SignInModelCopyWith<_SignInModel> get copyWith =>
      __$SignInModelCopyWithImpl<_SignInModel>(this, _$identity);
}

abstract class _SignInModel implements SignInModel {
  factory _SignInModel(
      {ValidationResult validation,
      @nullable String username,
      @nullable String password,
      LoginStatus status,
      bool loading}) = _$_SignInModel;

  @override
  ValidationResult get validation;
  @override
  @nullable
  String get username;
  @override
  @nullable
  String get password;
  @override
  LoginStatus get status;
  @override
  bool get loading;
  @override
  @JsonKey(ignore: true)
  _$SignInModelCopyWith<_SignInModel> get copyWith;
}
