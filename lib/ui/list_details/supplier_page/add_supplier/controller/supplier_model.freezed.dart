// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'supplier_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
SupplierModel _$SupplierModelFromJson(Map<String, dynamic> json) {
  return _SupplierModel.fromJson(json);
}

/// @nodoc
class _$SupplierModelTearOff {
  const _$SupplierModelTearOff();

// ignore: unused_element
  _SupplierModel call(
      {@JsonKey(name: 'supplier_id') int supplierId = 0,
      @JsonKey(name: 'supplier_name') String supplierName = '',
      @JsonKey(name: 'phone_no') int phoneNumber = 0,
      @JsonKey(name: 'address') String address = '',
      @JsonKey(name: 'description') String description = ''}) {
    return _SupplierModel(
      supplierId: supplierId,
      supplierName: supplierName,
      phoneNumber: phoneNumber,
      address: address,
      description: description,
    );
  }

// ignore: unused_element
  SupplierModel fromJson(Map<String, Object> json) {
    return SupplierModel.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $SupplierModel = _$SupplierModelTearOff();

/// @nodoc
mixin _$SupplierModel {
  @JsonKey(name: 'supplier_id')
  int get supplierId;
  @JsonKey(name: 'supplier_name')
  String get supplierName;
  @JsonKey(name: 'phone_no')
  int get phoneNumber;
  @JsonKey(name: 'address')
  String get address;
  @JsonKey(name: 'description')
  String get description;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $SupplierModelCopyWith<SupplierModel> get copyWith;
}

/// @nodoc
abstract class $SupplierModelCopyWith<$Res> {
  factory $SupplierModelCopyWith(
          SupplierModel value, $Res Function(SupplierModel) then) =
      _$SupplierModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'supplier_id') int supplierId,
      @JsonKey(name: 'supplier_name') String supplierName,
      @JsonKey(name: 'phone_no') int phoneNumber,
      @JsonKey(name: 'address') String address,
      @JsonKey(name: 'description') String description});
}

/// @nodoc
class _$SupplierModelCopyWithImpl<$Res>
    implements $SupplierModelCopyWith<$Res> {
  _$SupplierModelCopyWithImpl(this._value, this._then);

  final SupplierModel _value;
  // ignore: unused_field
  final $Res Function(SupplierModel) _then;

  @override
  $Res call({
    Object supplierId = freezed,
    Object supplierName = freezed,
    Object phoneNumber = freezed,
    Object address = freezed,
    Object description = freezed,
  }) {
    return _then(_value.copyWith(
      supplierId: supplierId == freezed ? _value.supplierId : supplierId as int,
      supplierName: supplierName == freezed
          ? _value.supplierName
          : supplierName as String,
      phoneNumber:
          phoneNumber == freezed ? _value.phoneNumber : phoneNumber as int,
      address: address == freezed ? _value.address : address as String,
      description:
          description == freezed ? _value.description : description as String,
    ));
  }
}

/// @nodoc
abstract class _$SupplierModelCopyWith<$Res>
    implements $SupplierModelCopyWith<$Res> {
  factory _$SupplierModelCopyWith(
          _SupplierModel value, $Res Function(_SupplierModel) then) =
      __$SupplierModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'supplier_id') int supplierId,
      @JsonKey(name: 'supplier_name') String supplierName,
      @JsonKey(name: 'phone_no') int phoneNumber,
      @JsonKey(name: 'address') String address,
      @JsonKey(name: 'description') String description});
}

/// @nodoc
class __$SupplierModelCopyWithImpl<$Res>
    extends _$SupplierModelCopyWithImpl<$Res>
    implements _$SupplierModelCopyWith<$Res> {
  __$SupplierModelCopyWithImpl(
      _SupplierModel _value, $Res Function(_SupplierModel) _then)
      : super(_value, (v) => _then(v as _SupplierModel));

  @override
  _SupplierModel get _value => super._value as _SupplierModel;

  @override
  $Res call({
    Object supplierId = freezed,
    Object supplierName = freezed,
    Object phoneNumber = freezed,
    Object address = freezed,
    Object description = freezed,
  }) {
    return _then(_SupplierModel(
      supplierId: supplierId == freezed ? _value.supplierId : supplierId as int,
      supplierName: supplierName == freezed
          ? _value.supplierName
          : supplierName as String,
      phoneNumber:
          phoneNumber == freezed ? _value.phoneNumber : phoneNumber as int,
      address: address == freezed ? _value.address : address as String,
      description:
          description == freezed ? _value.description : description as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_SupplierModel implements _SupplierModel {
  const _$_SupplierModel(
      {@JsonKey(name: 'supplier_id') this.supplierId = 0,
      @JsonKey(name: 'supplier_name') this.supplierName = '',
      @JsonKey(name: 'phone_no') this.phoneNumber = 0,
      @JsonKey(name: 'address') this.address = '',
      @JsonKey(name: 'description') this.description = ''})
      : assert(supplierId != null),
        assert(supplierName != null),
        assert(phoneNumber != null),
        assert(address != null),
        assert(description != null);

  factory _$_SupplierModel.fromJson(Map<String, dynamic> json) =>
      _$_$_SupplierModelFromJson(json);

  @override
  @JsonKey(name: 'supplier_id')
  final int supplierId;
  @override
  @JsonKey(name: 'supplier_name')
  final String supplierName;
  @override
  @JsonKey(name: 'phone_no')
  final int phoneNumber;
  @override
  @JsonKey(name: 'address')
  final String address;
  @override
  @JsonKey(name: 'description')
  final String description;

  @override
  String toString() {
    return 'SupplierModel(supplierId: $supplierId, supplierName: $supplierName, phoneNumber: $phoneNumber, address: $address, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SupplierModel &&
            (identical(other.supplierId, supplierId) ||
                const DeepCollectionEquality()
                    .equals(other.supplierId, supplierId)) &&
            (identical(other.supplierName, supplierName) ||
                const DeepCollectionEquality()
                    .equals(other.supplierName, supplierName)) &&
            (identical(other.phoneNumber, phoneNumber) ||
                const DeepCollectionEquality()
                    .equals(other.phoneNumber, phoneNumber)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(supplierId) ^
      const DeepCollectionEquality().hash(supplierName) ^
      const DeepCollectionEquality().hash(phoneNumber) ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(description);

  @JsonKey(ignore: true)
  @override
  _$SupplierModelCopyWith<_SupplierModel> get copyWith =>
      __$SupplierModelCopyWithImpl<_SupplierModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SupplierModelToJson(this);
  }
}

abstract class _SupplierModel implements SupplierModel {
  const factory _SupplierModel(
      {@JsonKey(name: 'supplier_id') int supplierId,
      @JsonKey(name: 'supplier_name') String supplierName,
      @JsonKey(name: 'phone_no') int phoneNumber,
      @JsonKey(name: 'address') String address,
      @JsonKey(name: 'description') String description}) = _$_SupplierModel;

  factory _SupplierModel.fromJson(Map<String, dynamic> json) =
      _$_SupplierModel.fromJson;

  @override
  @JsonKey(name: 'supplier_id')
  int get supplierId;
  @override
  @JsonKey(name: 'supplier_name')
  String get supplierName;
  @override
  @JsonKey(name: 'phone_no')
  int get phoneNumber;
  @override
  @JsonKey(name: 'address')
  String get address;
  @override
  @JsonKey(name: 'description')
  String get description;
  @override
  @JsonKey(ignore: true)
  _$SupplierModelCopyWith<_SupplierModel> get copyWith;
}
