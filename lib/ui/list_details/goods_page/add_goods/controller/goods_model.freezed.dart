// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'goods_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
GoodsModel _$GoodsModelFromJson(Map<String, dynamic> json) {
  return _GoodsModel.fromJson(json);
}

/// @nodoc
class _$GoodsModelTearOff {
  const _$GoodsModelTearOff();

// ignore: unused_element
  _GoodsModel call(
      {@JsonKey(name: 'goods_name') String goodsName = '',
      @JsonKey(name: 'location_name') String locationName = '',
      @JsonKey(name: 'quantity') int quantity = 0}) {
    return _GoodsModel(
      goodsName: goodsName,
      locationName: locationName,
      quantity: quantity,
    );
  }

// ignore: unused_element
  GoodsModel fromJson(Map<String, Object> json) {
    return GoodsModel.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $GoodsModel = _$GoodsModelTearOff();

/// @nodoc
mixin _$GoodsModel {
  @JsonKey(name: 'goods_name')
  String get goodsName;
  @JsonKey(name: 'location_name')
  String get locationName;
  @JsonKey(name: 'quantity')
  int get quantity;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $GoodsModelCopyWith<GoodsModel> get copyWith;
}

/// @nodoc
abstract class $GoodsModelCopyWith<$Res> {
  factory $GoodsModelCopyWith(
          GoodsModel value, $Res Function(GoodsModel) then) =
      _$GoodsModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'goods_name') String goodsName,
      @JsonKey(name: 'location_name') String locationName,
      @JsonKey(name: 'quantity') int quantity});
}

/// @nodoc
class _$GoodsModelCopyWithImpl<$Res> implements $GoodsModelCopyWith<$Res> {
  _$GoodsModelCopyWithImpl(this._value, this._then);

  final GoodsModel _value;
  // ignore: unused_field
  final $Res Function(GoodsModel) _then;

  @override
  $Res call({
    Object goodsName = freezed,
    Object locationName = freezed,
    Object quantity = freezed,
  }) {
    return _then(_value.copyWith(
      goodsName: goodsName == freezed ? _value.goodsName : goodsName as String,
      locationName: locationName == freezed
          ? _value.locationName
          : locationName as String,
      quantity: quantity == freezed ? _value.quantity : quantity as int,
    ));
  }
}

/// @nodoc
abstract class _$GoodsModelCopyWith<$Res> implements $GoodsModelCopyWith<$Res> {
  factory _$GoodsModelCopyWith(
          _GoodsModel value, $Res Function(_GoodsModel) then) =
      __$GoodsModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'goods_name') String goodsName,
      @JsonKey(name: 'location_name') String locationName,
      @JsonKey(name: 'quantity') int quantity});
}

/// @nodoc
class __$GoodsModelCopyWithImpl<$Res> extends _$GoodsModelCopyWithImpl<$Res>
    implements _$GoodsModelCopyWith<$Res> {
  __$GoodsModelCopyWithImpl(
      _GoodsModel _value, $Res Function(_GoodsModel) _then)
      : super(_value, (v) => _then(v as _GoodsModel));

  @override
  _GoodsModel get _value => super._value as _GoodsModel;

  @override
  $Res call({
    Object goodsName = freezed,
    Object locationName = freezed,
    Object quantity = freezed,
  }) {
    return _then(_GoodsModel(
      goodsName: goodsName == freezed ? _value.goodsName : goodsName as String,
      locationName: locationName == freezed
          ? _value.locationName
          : locationName as String,
      quantity: quantity == freezed ? _value.quantity : quantity as int,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_GoodsModel implements _GoodsModel {
  const _$_GoodsModel(
      {@JsonKey(name: 'goods_name') this.goodsName = '',
      @JsonKey(name: 'location_name') this.locationName = '',
      @JsonKey(name: 'quantity') this.quantity = 0})
      : assert(goodsName != null),
        assert(locationName != null),
        assert(quantity != null);

  factory _$_GoodsModel.fromJson(Map<String, dynamic> json) =>
      _$_$_GoodsModelFromJson(json);

  @override
  @JsonKey(name: 'goods_name')
  final String goodsName;
  @override
  @JsonKey(name: 'location_name')
  final String locationName;
  @override
  @JsonKey(name: 'quantity')
  final int quantity;

  @override
  String toString() {
    return 'GoodsModel(goodsName: $goodsName, locationName: $locationName, quantity: $quantity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GoodsModel &&
            (identical(other.goodsName, goodsName) ||
                const DeepCollectionEquality()
                    .equals(other.goodsName, goodsName)) &&
            (identical(other.locationName, locationName) ||
                const DeepCollectionEquality()
                    .equals(other.locationName, locationName)) &&
            (identical(other.quantity, quantity) ||
                const DeepCollectionEquality()
                    .equals(other.quantity, quantity)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(goodsName) ^
      const DeepCollectionEquality().hash(locationName) ^
      const DeepCollectionEquality().hash(quantity);

  @JsonKey(ignore: true)
  @override
  _$GoodsModelCopyWith<_GoodsModel> get copyWith =>
      __$GoodsModelCopyWithImpl<_GoodsModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_GoodsModelToJson(this);
  }
}

abstract class _GoodsModel implements GoodsModel {
  const factory _GoodsModel(
      {@JsonKey(name: 'goods_name') String goodsName,
      @JsonKey(name: 'location_name') String locationName,
      @JsonKey(name: 'quantity') int quantity}) = _$_GoodsModel;

  factory _GoodsModel.fromJson(Map<String, dynamic> json) =
      _$_GoodsModel.fromJson;

  @override
  @JsonKey(name: 'goods_name')
  String get goodsName;
  @override
  @JsonKey(name: 'location_name')
  String get locationName;
  @override
  @JsonKey(name: 'quantity')
  int get quantity;
  @override
  @JsonKey(ignore: true)
  _$GoodsModelCopyWith<_GoodsModel> get copyWith;
}
