// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'buyer_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
BuyerModel _$BuyerModelFromJson(Map<String, dynamic> json) {
  return _BuyerModel.fromJson(json);
}

/// @nodoc
class _$BuyerModelTearOff {
  const _$BuyerModelTearOff();

// ignore: unused_element
  _BuyerModel call(
      {@JsonKey(name: "buyer_name") String buyerName = '',
      @JsonKey(name: "buyer_id") int buyerId = 0,
      @JsonKey(name: "phone_no") int phoneNumber = 0,
      @JsonKey(name: "address") String address = '',
      @JsonKey(name: "description") String description = ''}) {
    return _BuyerModel(
      buyerName: buyerName,
      buyerId: buyerId,
      phoneNumber: phoneNumber,
      address: address,
      description: description,
    );
  }

// ignore: unused_element
  BuyerModel fromJson(Map<String, Object> json) {
    return BuyerModel.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $BuyerModel = _$BuyerModelTearOff();

/// @nodoc
mixin _$BuyerModel {
  @JsonKey(name: "buyer_name")
  String get buyerName;
  @JsonKey(name: "buyer_id")
  int get buyerId;
  @JsonKey(name: "phone_no")
  int get phoneNumber;
  @JsonKey(name: "address")
  String get address;
  @JsonKey(name: "description")
  String get description;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $BuyerModelCopyWith<BuyerModel> get copyWith;
}

/// @nodoc
abstract class $BuyerModelCopyWith<$Res> {
  factory $BuyerModelCopyWith(
          BuyerModel value, $Res Function(BuyerModel) then) =
      _$BuyerModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "buyer_name") String buyerName,
      @JsonKey(name: "buyer_id") int buyerId,
      @JsonKey(name: "phone_no") int phoneNumber,
      @JsonKey(name: "address") String address,
      @JsonKey(name: "description") String description});
}

/// @nodoc
class _$BuyerModelCopyWithImpl<$Res> implements $BuyerModelCopyWith<$Res> {
  _$BuyerModelCopyWithImpl(this._value, this._then);

  final BuyerModel _value;
  // ignore: unused_field
  final $Res Function(BuyerModel) _then;

  @override
  $Res call({
    Object buyerName = freezed,
    Object buyerId = freezed,
    Object phoneNumber = freezed,
    Object address = freezed,
    Object description = freezed,
  }) {
    return _then(_value.copyWith(
      buyerName: buyerName == freezed ? _value.buyerName : buyerName as String,
      buyerId: buyerId == freezed ? _value.buyerId : buyerId as int,
      phoneNumber:
          phoneNumber == freezed ? _value.phoneNumber : phoneNumber as int,
      address: address == freezed ? _value.address : address as String,
      description:
          description == freezed ? _value.description : description as String,
    ));
  }
}

/// @nodoc
abstract class _$BuyerModelCopyWith<$Res> implements $BuyerModelCopyWith<$Res> {
  factory _$BuyerModelCopyWith(
          _BuyerModel value, $Res Function(_BuyerModel) then) =
      __$BuyerModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "buyer_name") String buyerName,
      @JsonKey(name: "buyer_id") int buyerId,
      @JsonKey(name: "phone_no") int phoneNumber,
      @JsonKey(name: "address") String address,
      @JsonKey(name: "description") String description});
}

/// @nodoc
class __$BuyerModelCopyWithImpl<$Res> extends _$BuyerModelCopyWithImpl<$Res>
    implements _$BuyerModelCopyWith<$Res> {
  __$BuyerModelCopyWithImpl(
      _BuyerModel _value, $Res Function(_BuyerModel) _then)
      : super(_value, (v) => _then(v as _BuyerModel));

  @override
  _BuyerModel get _value => super._value as _BuyerModel;

  @override
  $Res call({
    Object buyerName = freezed,
    Object buyerId = freezed,
    Object phoneNumber = freezed,
    Object address = freezed,
    Object description = freezed,
  }) {
    return _then(_BuyerModel(
      buyerName: buyerName == freezed ? _value.buyerName : buyerName as String,
      buyerId: buyerId == freezed ? _value.buyerId : buyerId as int,
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
class _$_BuyerModel implements _BuyerModel {
  const _$_BuyerModel(
      {@JsonKey(name: "buyer_name") this.buyerName = '',
      @JsonKey(name: "buyer_id") this.buyerId = 0,
      @JsonKey(name: "phone_no") this.phoneNumber = 0,
      @JsonKey(name: "address") this.address = '',
      @JsonKey(name: "description") this.description = ''})
      : assert(buyerName != null),
        assert(buyerId != null),
        assert(phoneNumber != null),
        assert(address != null),
        assert(description != null);

  factory _$_BuyerModel.fromJson(Map<String, dynamic> json) =>
      _$_$_BuyerModelFromJson(json);

  @override
  @JsonKey(name: "buyer_name")
  final String buyerName;
  @override
  @JsonKey(name: "buyer_id")
  final int buyerId;
  @override
  @JsonKey(name: "phone_no")
  final int phoneNumber;
  @override
  @JsonKey(name: "address")
  final String address;
  @override
  @JsonKey(name: "description")
  final String description;

  @override
  String toString() {
    return 'BuyerModel(buyerName: $buyerName, buyerId: $buyerId, phoneNumber: $phoneNumber, address: $address, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BuyerModel &&
            (identical(other.buyerName, buyerName) ||
                const DeepCollectionEquality()
                    .equals(other.buyerName, buyerName)) &&
            (identical(other.buyerId, buyerId) ||
                const DeepCollectionEquality()
                    .equals(other.buyerId, buyerId)) &&
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
      const DeepCollectionEquality().hash(buyerName) ^
      const DeepCollectionEquality().hash(buyerId) ^
      const DeepCollectionEquality().hash(phoneNumber) ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(description);

  @JsonKey(ignore: true)
  @override
  _$BuyerModelCopyWith<_BuyerModel> get copyWith =>
      __$BuyerModelCopyWithImpl<_BuyerModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_BuyerModelToJson(this);
  }
}

abstract class _BuyerModel implements BuyerModel {
  const factory _BuyerModel(
      {@JsonKey(name: "buyer_name") String buyerName,
      @JsonKey(name: "buyer_id") int buyerId,
      @JsonKey(name: "phone_no") int phoneNumber,
      @JsonKey(name: "address") String address,
      @JsonKey(name: "description") String description}) = _$_BuyerModel;

  factory _BuyerModel.fromJson(Map<String, dynamic> json) =
      _$_BuyerModel.fromJson;

  @override
  @JsonKey(name: "buyer_name")
  String get buyerName;
  @override
  @JsonKey(name: "buyer_id")
  int get buyerId;
  @override
  @JsonKey(name: "phone_no")
  int get phoneNumber;
  @override
  @JsonKey(name: "address")
  String get address;
  @override
  @JsonKey(name: "description")
  String get description;
  @override
  @JsonKey(ignore: true)
  _$BuyerModelCopyWith<_BuyerModel> get copyWith;
}
