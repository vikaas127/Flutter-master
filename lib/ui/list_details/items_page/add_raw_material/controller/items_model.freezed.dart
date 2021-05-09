// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'items_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
ItemsModel _$ItemsModelFromJson(Map<String, dynamic> json) {
  return _ItemsModel.fromJson(json);
}

/// @nodoc
class _$ItemsModelTearOff {
  const _$ItemsModelTearOff();

// ignore: unused_element
  _ItemsModel call(
      {@JsonKey(name: "item_name") String itemName = '',
      @JsonKey(name: "warehouse_name") String location = '',
      @JsonKey(name: "quantity") int quantity = 0,
      @JsonKey(name: "tag") String tag = ''}) {
    return _ItemsModel(
      itemName: itemName,
      location: location,
      quantity: quantity,
      tag: tag,
    );
  }

// ignore: unused_element
  ItemsModel fromJson(Map<String, Object> json) {
    return ItemsModel.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $ItemsModel = _$ItemsModelTearOff();

/// @nodoc
mixin _$ItemsModel {
  @JsonKey(name: "item_name")
  String get itemName;
  @JsonKey(name: "warehouse_name")
  String get location;
  @JsonKey(name: "quantity")
  int get quantity;
  @JsonKey(name: "tag")
  String get tag;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $ItemsModelCopyWith<ItemsModel> get copyWith;
}

/// @nodoc
abstract class $ItemsModelCopyWith<$Res> {
  factory $ItemsModelCopyWith(
          ItemsModel value, $Res Function(ItemsModel) then) =
      _$ItemsModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "item_name") String itemName,
      @JsonKey(name: "warehouse_name") String location,
      @JsonKey(name: "quantity") int quantity,
      @JsonKey(name: "tag") String tag});
}

/// @nodoc
class _$ItemsModelCopyWithImpl<$Res> implements $ItemsModelCopyWith<$Res> {
  _$ItemsModelCopyWithImpl(this._value, this._then);

  final ItemsModel _value;
  // ignore: unused_field
  final $Res Function(ItemsModel) _then;

  @override
  $Res call({
    Object itemName = freezed,
    Object location = freezed,
    Object quantity = freezed,
    Object tag = freezed,
  }) {
    return _then(_value.copyWith(
      itemName: itemName == freezed ? _value.itemName : itemName as String,
      location: location == freezed ? _value.location : location as String,
      quantity: quantity == freezed ? _value.quantity : quantity as int,
      tag: tag == freezed ? _value.tag : tag as String,
    ));
  }
}

/// @nodoc
abstract class _$ItemsModelCopyWith<$Res> implements $ItemsModelCopyWith<$Res> {
  factory _$ItemsModelCopyWith(
          _ItemsModel value, $Res Function(_ItemsModel) then) =
      __$ItemsModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "item_name") String itemName,
      @JsonKey(name: "warehouse_name") String location,
      @JsonKey(name: "quantity") int quantity,
      @JsonKey(name: "tag") String tag});
}

/// @nodoc
class __$ItemsModelCopyWithImpl<$Res> extends _$ItemsModelCopyWithImpl<$Res>
    implements _$ItemsModelCopyWith<$Res> {
  __$ItemsModelCopyWithImpl(
      _ItemsModel _value, $Res Function(_ItemsModel) _then)
      : super(_value, (v) => _then(v as _ItemsModel));

  @override
  _ItemsModel get _value => super._value as _ItemsModel;

  @override
  $Res call({
    Object itemName = freezed,
    Object location = freezed,
    Object quantity = freezed,
    Object tag = freezed,
  }) {
    return _then(_ItemsModel(
      itemName: itemName == freezed ? _value.itemName : itemName as String,
      location: location == freezed ? _value.location : location as String,
      quantity: quantity == freezed ? _value.quantity : quantity as int,
      tag: tag == freezed ? _value.tag : tag as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_ItemsModel implements _ItemsModel {
  const _$_ItemsModel(
      {@JsonKey(name: "item_name") this.itemName = '',
      @JsonKey(name: "warehouse_name") this.location = '',
      @JsonKey(name: "quantity") this.quantity = 0,
      @JsonKey(name: "tag") this.tag = ''});

  factory _$_ItemsModel.fromJson(Map<String, dynamic> json) =>
      _$_$_ItemsModelFromJson(json);

  @override
  @JsonKey(name: "item_name")
  final String itemName;
  @override
  @JsonKey(name: "warehouse_name")
  final String location;
  @override
  @JsonKey(name: "quantity")
  final int quantity;
  @override
  @JsonKey(name: "tag")
  final String tag;

  @override
  String toString() {
    return 'ItemsModel(itemName: $itemName, location: $location, quantity: $quantity, tag: $tag)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ItemsModel &&
            (identical(other.itemName, itemName) ||
                const DeepCollectionEquality()
                    .equals(other.itemName, itemName)) &&
            (identical(other.location, location) ||
                const DeepCollectionEquality()
                    .equals(other.location, location)) &&
            (identical(other.quantity, quantity) ||
                const DeepCollectionEquality()
                    .equals(other.quantity, quantity)) &&
            (identical(other.tag, tag) ||
                const DeepCollectionEquality().equals(other.tag, tag)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(itemName) ^
      const DeepCollectionEquality().hash(location) ^
      const DeepCollectionEquality().hash(quantity) ^
      const DeepCollectionEquality().hash(tag);

  @JsonKey(ignore: true)
  @override
  _$ItemsModelCopyWith<_ItemsModel> get copyWith =>
      __$ItemsModelCopyWithImpl<_ItemsModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ItemsModelToJson(this);
  }
}

abstract class _ItemsModel implements ItemsModel {
  const factory _ItemsModel(
      {@JsonKey(name: "item_name") String itemName,
      @JsonKey(name: "warehouse_name") String location,
      @JsonKey(name: "quantity") int quantity,
      @JsonKey(name: "tag") String tag}) = _$_ItemsModel;

  factory _ItemsModel.fromJson(Map<String, dynamic> json) =
      _$_ItemsModel.fromJson;

  @override
  @JsonKey(name: "item_name")
  String get itemName;
  @override
  @JsonKey(name: "warehouse_name")
  String get location;
  @override
  @JsonKey(name: "quantity")
  int get quantity;
  @override
  @JsonKey(name: "tag")
  String get tag;
  @override
  @JsonKey(ignore: true)
  _$ItemsModelCopyWith<_ItemsModel> get copyWith;
}
