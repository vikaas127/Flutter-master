// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'finish_production_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
FinishProduction _$FinishProductionFromJson(Map<String, dynamic> json) {
  return _FinishProduction.fromJson(json);
}

/// @nodoc
class _$FinishProductionTearOff {
  const _$FinishProductionTearOff();

// ignore: unused_element
  _FinishProduction call(
      {@JsonKey(name: 'production_id')
          int productionId = '',
      @JsonKey(name: 'remaining_raw_material_qty')
          int remainingRawMaterialQty = '',
      @JsonKey(name: 'damaged_goods')
          String damagedGoods = '',
      @JsonKey(name: 'goods_produced')
          String goodsProduced = ''}) {
    return _FinishProduction(
      productionId: productionId,
      remainingRawMaterialQty: remainingRawMaterialQty,
      damagedGoods: damagedGoods,
      goodsProduced: goodsProduced,
    );
  }

// ignore: unused_element
  FinishProduction fromJson(Map<String, Object> json) {
    return FinishProduction.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $FinishProduction = _$FinishProductionTearOff();

/// @nodoc
mixin _$FinishProduction {
  @JsonKey(name: 'production_id')
  int get productionId;
  @JsonKey(name: 'remaining_raw_material_qty')
  int get remainingRawMaterialQty;
  @JsonKey(name: 'damaged_goods')
  String get damagedGoods;
  @JsonKey(name: 'goods_produced')
  String get goodsProduced;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $FinishProductionCopyWith<FinishProduction> get copyWith;
}

/// @nodoc
abstract class $FinishProductionCopyWith<$Res> {
  factory $FinishProductionCopyWith(
          FinishProduction value, $Res Function(FinishProduction) then) =
      _$FinishProductionCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'production_id') int productionId,
      @JsonKey(name: 'remaining_raw_material_qty') int remainingRawMaterialQty,
      @JsonKey(name: 'damaged_goods') String damagedGoods,
      @JsonKey(name: 'goods_produced') String goodsProduced});
}

/// @nodoc
class _$FinishProductionCopyWithImpl<$Res>
    implements $FinishProductionCopyWith<$Res> {
  _$FinishProductionCopyWithImpl(this._value, this._then);

  final FinishProduction _value;
  // ignore: unused_field
  final $Res Function(FinishProduction) _then;

  @override
  $Res call({
    Object productionId = freezed,
    Object remainingRawMaterialQty = freezed,
    Object damagedGoods = freezed,
    Object goodsProduced = freezed,
  }) {
    return _then(_value.copyWith(
      productionId:
          productionId == freezed ? _value.productionId : productionId as int,
      remainingRawMaterialQty: remainingRawMaterialQty == freezed
          ? _value.remainingRawMaterialQty
          : remainingRawMaterialQty as int,
      damagedGoods: damagedGoods == freezed
          ? _value.damagedGoods
          : damagedGoods as String,
      goodsProduced: goodsProduced == freezed
          ? _value.goodsProduced
          : goodsProduced as String,
    ));
  }
}

/// @nodoc
abstract class _$FinishProductionCopyWith<$Res>
    implements $FinishProductionCopyWith<$Res> {
  factory _$FinishProductionCopyWith(
          _FinishProduction value, $Res Function(_FinishProduction) then) =
      __$FinishProductionCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'production_id') int productionId,
      @JsonKey(name: 'remaining_raw_material_qty') int remainingRawMaterialQty,
      @JsonKey(name: 'damaged_goods') String damagedGoods,
      @JsonKey(name: 'goods_produced') String goodsProduced});
}

/// @nodoc
class __$FinishProductionCopyWithImpl<$Res>
    extends _$FinishProductionCopyWithImpl<$Res>
    implements _$FinishProductionCopyWith<$Res> {
  __$FinishProductionCopyWithImpl(
      _FinishProduction _value, $Res Function(_FinishProduction) _then)
      : super(_value, (v) => _then(v as _FinishProduction));

  @override
  _FinishProduction get _value => super._value as _FinishProduction;

  @override
  $Res call({
    Object productionId = freezed,
    Object remainingRawMaterialQty = freezed,
    Object damagedGoods = freezed,
    Object goodsProduced = freezed,
  }) {
    return _then(_FinishProduction(
      productionId:
          productionId == freezed ? _value.productionId : productionId as int,
      remainingRawMaterialQty: remainingRawMaterialQty == freezed
          ? _value.remainingRawMaterialQty
          : remainingRawMaterialQty as int,
      damagedGoods: damagedGoods == freezed
          ? _value.damagedGoods
          : damagedGoods as String,
      goodsProduced: goodsProduced == freezed
          ? _value.goodsProduced
          : goodsProduced as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_FinishProduction implements _FinishProduction {
  const _$_FinishProduction(
      {@JsonKey(name: 'production_id')
          this.productionId = '',
      @JsonKey(name: 'remaining_raw_material_qty')
          this.remainingRawMaterialQty = '',
      @JsonKey(name: 'damaged_goods')
          this.damagedGoods = '',
      @JsonKey(name: 'goods_produced')
          this.goodsProduced = ''})
      : assert(productionId != null),
        assert(remainingRawMaterialQty != null),
        assert(damagedGoods != null),
        assert(goodsProduced != null);

  factory _$_FinishProduction.fromJson(Map<String, dynamic> json) =>
      _$_$_FinishProductionFromJson(json);

  @override
  @JsonKey(name: 'production_id')
  final int productionId;
  @override
  @JsonKey(name: 'remaining_raw_material_qty')
  final int remainingRawMaterialQty;
  @override
  @JsonKey(name: 'damaged_goods')
  final String damagedGoods;
  @override
  @JsonKey(name: 'goods_produced')
  final String goodsProduced;

  @override
  String toString() {
    return 'FinishProduction(productionId: $productionId, remainingRawMaterialQty: $remainingRawMaterialQty, damagedGoods: $damagedGoods, goodsProduced: $goodsProduced)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FinishProduction &&
            (identical(other.productionId, productionId) ||
                const DeepCollectionEquality()
                    .equals(other.productionId, productionId)) &&
            (identical(
                    other.remainingRawMaterialQty, remainingRawMaterialQty) ||
                const DeepCollectionEquality().equals(
                    other.remainingRawMaterialQty, remainingRawMaterialQty)) &&
            (identical(other.damagedGoods, damagedGoods) ||
                const DeepCollectionEquality()
                    .equals(other.damagedGoods, damagedGoods)) &&
            (identical(other.goodsProduced, goodsProduced) ||
                const DeepCollectionEquality()
                    .equals(other.goodsProduced, goodsProduced)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(productionId) ^
      const DeepCollectionEquality().hash(remainingRawMaterialQty) ^
      const DeepCollectionEquality().hash(damagedGoods) ^
      const DeepCollectionEquality().hash(goodsProduced);

  @JsonKey(ignore: true)
  @override
  _$FinishProductionCopyWith<_FinishProduction> get copyWith =>
      __$FinishProductionCopyWithImpl<_FinishProduction>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_FinishProductionToJson(this);
  }
}

abstract class _FinishProduction implements FinishProduction {
  const factory _FinishProduction(
      {@JsonKey(name: 'production_id')
          int productionId,
      @JsonKey(name: 'remaining_raw_material_qty')
          int remainingRawMaterialQty,
      @JsonKey(name: 'damaged_goods')
          String damagedGoods,
      @JsonKey(name: 'goods_produced')
          String goodsProduced}) = _$_FinishProduction;

  factory _FinishProduction.fromJson(Map<String, dynamic> json) =
      _$_FinishProduction.fromJson;

  @override
  @JsonKey(name: 'production_id')
  int get productionId;
  @override
  @JsonKey(name: 'remaining_raw_material_qty')
  int get remainingRawMaterialQty;
  @override
  @JsonKey(name: 'damaged_goods')
  String get damagedGoods;
  @override
  @JsonKey(name: 'goods_produced')
  String get goodsProduced;
  @override
  @JsonKey(ignore: true)
  _$FinishProductionCopyWith<_FinishProduction> get copyWith;
}
