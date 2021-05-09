// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'purchase_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
PurchaseListModel _$PurchaseListModelFromJson(Map<String, dynamic> json) {
  return _PurchaseListModel.fromJson(json);
}

/// @nodoc
class _$PurchaseListModelTearOff {
  const _$PurchaseListModelTearOff();

// ignore: unused_element
  _PurchaseListModel call(
      {@JsonKey(name: "purchase_id") int purchaseId = 0,
      @JsonKey(name: "item_name") @nullable String itemName,
      @JsonKey(name: "quantity") int quantity = 0,
      @JsonKey(name: "last_updated") @nullable DateTime lastUpdated,
      @JsonKey(name: "description") @nullable String loc}) {
    return _PurchaseListModel(
      purchaseId: purchaseId,
      itemName: itemName,
      quantity: quantity,
      lastUpdated: lastUpdated,
      loc: loc,
    );
  }

// ignore: unused_element
  PurchaseListModel fromJson(Map<String, Object> json) {
    return PurchaseListModel.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $PurchaseListModel = _$PurchaseListModelTearOff();

/// @nodoc
mixin _$PurchaseListModel {
  @JsonKey(name: "purchase_id")
  int get purchaseId;
  @JsonKey(name: "item_name")
  @nullable
  String get itemName;
  @JsonKey(name: "quantity")
  int get quantity;
  @JsonKey(name: "last_updated")
  @nullable
  DateTime get lastUpdated;
  @JsonKey(name: "description")
  @nullable
  String get loc;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $PurchaseListModelCopyWith<PurchaseListModel> get copyWith;
}

/// @nodoc
abstract class $PurchaseListModelCopyWith<$Res> {
  factory $PurchaseListModelCopyWith(
          PurchaseListModel value, $Res Function(PurchaseListModel) then) =
      _$PurchaseListModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "purchase_id") int purchaseId,
      @JsonKey(name: "item_name") @nullable String itemName,
      @JsonKey(name: "quantity") int quantity,
      @JsonKey(name: "last_updated") @nullable DateTime lastUpdated,
      @JsonKey(name: "description") @nullable String loc});
}

/// @nodoc
class _$PurchaseListModelCopyWithImpl<$Res>
    implements $PurchaseListModelCopyWith<$Res> {
  _$PurchaseListModelCopyWithImpl(this._value, this._then);

  final PurchaseListModel _value;
  // ignore: unused_field
  final $Res Function(PurchaseListModel) _then;

  @override
  $Res call({
    Object purchaseId = freezed,
    Object itemName = freezed,
    Object quantity = freezed,
    Object lastUpdated = freezed,
    Object loc = freezed,
  }) {
    return _then(_value.copyWith(
      purchaseId: purchaseId == freezed ? _value.purchaseId : purchaseId as int,
      itemName: itemName == freezed ? _value.itemName : itemName as String,
      quantity: quantity == freezed ? _value.quantity : quantity as int,
      lastUpdated:
          lastUpdated == freezed ? _value.lastUpdated : lastUpdated as DateTime,
      loc: loc == freezed ? _value.loc : loc as String,
    ));
  }
}

/// @nodoc
abstract class _$PurchaseListModelCopyWith<$Res>
    implements $PurchaseListModelCopyWith<$Res> {
  factory _$PurchaseListModelCopyWith(
          _PurchaseListModel value, $Res Function(_PurchaseListModel) then) =
      __$PurchaseListModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "purchase_id") int purchaseId,
      @JsonKey(name: "item_name") @nullable String itemName,
      @JsonKey(name: "quantity") int quantity,
      @JsonKey(name: "last_updated") @nullable DateTime lastUpdated,
      @JsonKey(name: "description") @nullable String loc});
}

/// @nodoc
class __$PurchaseListModelCopyWithImpl<$Res>
    extends _$PurchaseListModelCopyWithImpl<$Res>
    implements _$PurchaseListModelCopyWith<$Res> {
  __$PurchaseListModelCopyWithImpl(
      _PurchaseListModel _value, $Res Function(_PurchaseListModel) _then)
      : super(_value, (v) => _then(v as _PurchaseListModel));

  @override
  _PurchaseListModel get _value => super._value as _PurchaseListModel;

  @override
  $Res call({
    Object purchaseId = freezed,
    Object itemName = freezed,
    Object quantity = freezed,
    Object lastUpdated = freezed,
    Object loc = freezed,
  }) {
    return _then(_PurchaseListModel(
      purchaseId: purchaseId == freezed ? _value.purchaseId : purchaseId as int,
      itemName: itemName == freezed ? _value.itemName : itemName as String,
      quantity: quantity == freezed ? _value.quantity : quantity as int,
      lastUpdated:
          lastUpdated == freezed ? _value.lastUpdated : lastUpdated as DateTime,
      loc: loc == freezed ? _value.loc : loc as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_PurchaseListModel implements _PurchaseListModel {
  const _$_PurchaseListModel(
      {@JsonKey(name: "purchase_id") this.purchaseId = 0,
      @JsonKey(name: "item_name") @nullable this.itemName,
      @JsonKey(name: "quantity") this.quantity = 0,
      @JsonKey(name: "last_updated") @nullable this.lastUpdated,
      @JsonKey(name: "description") @nullable this.loc})
      : assert(purchaseId != null),
        assert(quantity != null);

  factory _$_PurchaseListModel.fromJson(Map<String, dynamic> json) =>
      _$_$_PurchaseListModelFromJson(json);

  @override
  @JsonKey(name: "purchase_id")
  final int purchaseId;
  @override
  @JsonKey(name: "item_name")
  @nullable
  final String itemName;
  @override
  @JsonKey(name: "quantity")
  final int quantity;
  @override
  @JsonKey(name: "last_updated")
  @nullable
  final DateTime lastUpdated;
  @override
  @JsonKey(name: "description")
  @nullable
  final String loc;

  @override
  String toString() {
    return 'PurchaseListModel(purchaseId: $purchaseId, itemName: $itemName, quantity: $quantity, lastUpdated: $lastUpdated, loc: $loc)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PurchaseListModel &&
            (identical(other.purchaseId, purchaseId) ||
                const DeepCollectionEquality()
                    .equals(other.purchaseId, purchaseId)) &&
            (identical(other.itemName, itemName) ||
                const DeepCollectionEquality()
                    .equals(other.itemName, itemName)) &&
            (identical(other.quantity, quantity) ||
                const DeepCollectionEquality()
                    .equals(other.quantity, quantity)) &&
            (identical(other.lastUpdated, lastUpdated) ||
                const DeepCollectionEquality()
                    .equals(other.lastUpdated, lastUpdated)) &&
            (identical(other.loc, loc) ||
                const DeepCollectionEquality().equals(other.loc, loc)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(purchaseId) ^
      const DeepCollectionEquality().hash(itemName) ^
      const DeepCollectionEquality().hash(quantity) ^
      const DeepCollectionEquality().hash(lastUpdated) ^
      const DeepCollectionEquality().hash(loc);

  @JsonKey(ignore: true)
  @override
  _$PurchaseListModelCopyWith<_PurchaseListModel> get copyWith =>
      __$PurchaseListModelCopyWithImpl<_PurchaseListModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PurchaseListModelToJson(this);
  }
}

abstract class _PurchaseListModel implements PurchaseListModel {
  const factory _PurchaseListModel(
          {@JsonKey(name: "purchase_id") int purchaseId,
          @JsonKey(name: "item_name") @nullable String itemName,
          @JsonKey(name: "quantity") int quantity,
          @JsonKey(name: "last_updated") @nullable DateTime lastUpdated,
          @JsonKey(name: "description") @nullable String loc}) =
      _$_PurchaseListModel;

  factory _PurchaseListModel.fromJson(Map<String, dynamic> json) =
      _$_PurchaseListModel.fromJson;

  @override
  @JsonKey(name: "purchase_id")
  int get purchaseId;
  @override
  @JsonKey(name: "item_name")
  @nullable
  String get itemName;
  @override
  @JsonKey(name: "quantity")
  int get quantity;
  @override
  @JsonKey(name: "last_updated")
  @nullable
  DateTime get lastUpdated;
  @override
  @JsonKey(name: "description")
  @nullable
  String get loc;
  @override
  @JsonKey(ignore: true)
  _$PurchaseListModelCopyWith<_PurchaseListModel> get copyWith;
}
