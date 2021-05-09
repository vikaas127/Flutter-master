// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'purchase_items_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
PurchaseModel _$PurchaseModelFromJson(Map<String, dynamic> json) {
  return _PurchaseModel.fromJson(json);
}

/// @nodoc
class _$PurchaseModelTearOff {
  const _$PurchaseModelTearOff();

// ignore: unused_element
  _PurchaseModel call(
      {@JsonKey(name: "quantity") int quantity = 0,
      @JsonKey(name: "supplier_name") @nullable String supplierName,
      @JsonKey(name: "tag") String tag = '',
      @JsonKey(name: "item_name") String itemName = '',
      @JsonKey(name: "loc") String loc = ''}) {
    return _PurchaseModel(
      quantity: quantity,
      supplierName: supplierName,
      tag: tag,
      itemName: itemName,
      loc: loc,
    );
  }

// ignore: unused_element
  PurchaseModel fromJson(Map<String, Object> json) {
    return PurchaseModel.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $PurchaseModel = _$PurchaseModelTearOff();

/// @nodoc
mixin _$PurchaseModel {
  @JsonKey(name: "quantity")
  int get quantity;
  @JsonKey(name: "supplier_name")
  @nullable
  String get supplierName;
  @JsonKey(name: "tag")
  String get tag;
  @JsonKey(name: "item_name")
  String get itemName;
  @JsonKey(name: "loc")
  String get loc;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $PurchaseModelCopyWith<PurchaseModel> get copyWith;
}

/// @nodoc
abstract class $PurchaseModelCopyWith<$Res> {
  factory $PurchaseModelCopyWith(
          PurchaseModel value, $Res Function(PurchaseModel) then) =
      _$PurchaseModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "quantity") int quantity,
      @JsonKey(name: "supplier_name") @nullable String supplierName,
      @JsonKey(name: "tag") String tag,
      @JsonKey(name: "item_name") String itemName,
      @JsonKey(name: "loc") String loc});
}

/// @nodoc
class _$PurchaseModelCopyWithImpl<$Res>
    implements $PurchaseModelCopyWith<$Res> {
  _$PurchaseModelCopyWithImpl(this._value, this._then);

  final PurchaseModel _value;
  // ignore: unused_field
  final $Res Function(PurchaseModel) _then;

  @override
  $Res call({
    Object quantity = freezed,
    Object supplierName = freezed,
    Object tag = freezed,
    Object itemName = freezed,
    Object loc = freezed,
  }) {
    return _then(_value.copyWith(
      quantity: quantity == freezed ? _value.quantity : quantity as int,
      supplierName: supplierName == freezed
          ? _value.supplierName
          : supplierName as String,
      tag: tag == freezed ? _value.tag : tag as String,
      itemName: itemName == freezed ? _value.itemName : itemName as String,
      loc: loc == freezed ? _value.loc : loc as String,
    ));
  }
}

/// @nodoc
abstract class _$PurchaseModelCopyWith<$Res>
    implements $PurchaseModelCopyWith<$Res> {
  factory _$PurchaseModelCopyWith(
          _PurchaseModel value, $Res Function(_PurchaseModel) then) =
      __$PurchaseModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "quantity") int quantity,
      @JsonKey(name: "supplier_name") @nullable String supplierName,
      @JsonKey(name: "tag") String tag,
      @JsonKey(name: "item_name") String itemName,
      @JsonKey(name: "loc") String loc});
}

/// @nodoc
class __$PurchaseModelCopyWithImpl<$Res>
    extends _$PurchaseModelCopyWithImpl<$Res>
    implements _$PurchaseModelCopyWith<$Res> {
  __$PurchaseModelCopyWithImpl(
      _PurchaseModel _value, $Res Function(_PurchaseModel) _then)
      : super(_value, (v) => _then(v as _PurchaseModel));

  @override
  _PurchaseModel get _value => super._value as _PurchaseModel;

  @override
  $Res call({
    Object quantity = freezed,
    Object supplierName = freezed,
    Object tag = freezed,
    Object itemName = freezed,
    Object loc = freezed,
  }) {
    return _then(_PurchaseModel(
      quantity: quantity == freezed ? _value.quantity : quantity as int,
      supplierName: supplierName == freezed
          ? _value.supplierName
          : supplierName as String,
      tag: tag == freezed ? _value.tag : tag as String,
      itemName: itemName == freezed ? _value.itemName : itemName as String,
      loc: loc == freezed ? _value.loc : loc as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_PurchaseModel implements _PurchaseModel {
  const _$_PurchaseModel(
      {@JsonKey(name: "quantity") this.quantity = 0,
      @JsonKey(name: "supplier_name") @nullable this.supplierName,
      @JsonKey(name: "tag") this.tag = '',
      @JsonKey(name: "item_name") this.itemName = '',
      @JsonKey(name: "loc") this.loc = ''})
      : assert(quantity != null),
        assert(tag != null),
        assert(itemName != null),
        assert(loc != null);

  factory _$_PurchaseModel.fromJson(Map<String, dynamic> json) =>
      _$_$_PurchaseModelFromJson(json);

  @override
  @JsonKey(name: "quantity")
  final int quantity;
  @override
  @JsonKey(name: "supplier_name")
  @nullable
  final String supplierName;
  @override
  @JsonKey(name: "tag")
  final String tag;
  @override
  @JsonKey(name: "item_name")
  final String itemName;
  @override
  @JsonKey(name: "loc")
  final String loc;

  @override
  String toString() {
    return 'PurchaseModel(quantity: $quantity, supplierName: $supplierName, tag: $tag, itemName: $itemName, loc: $loc)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PurchaseModel &&
            (identical(other.quantity, quantity) ||
                const DeepCollectionEquality()
                    .equals(other.quantity, quantity)) &&
            (identical(other.supplierName, supplierName) ||
                const DeepCollectionEquality()
                    .equals(other.supplierName, supplierName)) &&
            (identical(other.tag, tag) ||
                const DeepCollectionEquality().equals(other.tag, tag)) &&
            (identical(other.itemName, itemName) ||
                const DeepCollectionEquality()
                    .equals(other.itemName, itemName)) &&
            (identical(other.loc, loc) ||
                const DeepCollectionEquality().equals(other.loc, loc)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(quantity) ^
      const DeepCollectionEquality().hash(supplierName) ^
      const DeepCollectionEquality().hash(tag) ^
      const DeepCollectionEquality().hash(itemName) ^
      const DeepCollectionEquality().hash(loc);

  @JsonKey(ignore: true)
  @override
  _$PurchaseModelCopyWith<_PurchaseModel> get copyWith =>
      __$PurchaseModelCopyWithImpl<_PurchaseModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PurchaseModelToJson(this);
  }
}

abstract class _PurchaseModel implements PurchaseModel {
  const factory _PurchaseModel(
      {@JsonKey(name: "quantity") int quantity,
      @JsonKey(name: "supplier_name") @nullable String supplierName,
      @JsonKey(name: "tag") String tag,
      @JsonKey(name: "item_name") String itemName,
      @JsonKey(name: "loc") String loc}) = _$_PurchaseModel;

  factory _PurchaseModel.fromJson(Map<String, dynamic> json) =
      _$_PurchaseModel.fromJson;

  @override
  @JsonKey(name: "quantity")
  int get quantity;
  @override
  @JsonKey(name: "supplier_name")
  @nullable
  String get supplierName;
  @override
  @JsonKey(name: "tag")
  String get tag;
  @override
  @JsonKey(name: "item_name")
  String get itemName;
  @override
  @JsonKey(name: "loc")
  String get loc;
  @override
  @JsonKey(ignore: true)
  _$PurchaseModelCopyWith<_PurchaseModel> get copyWith;
}
