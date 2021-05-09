// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'cancel_production_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
CancelProductionModel _$CancelProductionModelFromJson(
    Map<String, dynamic> json) {
  return _CancelProductionModel.fromJson(json);
}

/// @nodoc
class _$CancelProductionModelTearOff {
  const _$CancelProductionModelTearOff();

// ignore: unused_element
  _CancelProductionModel call(
      {@JsonKey(name: 'production_id')
          int productionId = 0,
      @JsonKey(name: 'remaining_raw_material_qty')
          int remainingRawMaterialQty = 0,
      @JsonKey(name: 'damaged_goods')
          int damagedGoods = 0,
      @JsonKey(name: 'goods_produced')
          int goodsProduced = '',
      @JsonKey(name: 'reason')
          String reason = ''}) {
    return _CancelProductionModel(
      productionId: productionId,
      remainingRawMaterialQty: remainingRawMaterialQty,
      damagedGoods: damagedGoods,
      goodsProduced: goodsProduced,
      reason: reason,
    );
  }

// ignore: unused_element
  CancelProductionModel fromJson(Map<String, Object> json) {
    return CancelProductionModel.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $CancelProductionModel = _$CancelProductionModelTearOff();

/// @nodoc
mixin _$CancelProductionModel {
  @JsonKey(name: 'production_id')
  int get productionId;
  @JsonKey(name: 'remaining_raw_material_qty')
  int get remainingRawMaterialQty;
  @JsonKey(name: 'damaged_goods')
  int get damagedGoods;
  @JsonKey(name: 'goods_produced')
  int get goodsProduced;
  @JsonKey(name: 'reason')
  String get reason;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $CancelProductionModelCopyWith<CancelProductionModel> get copyWith;
}

/// @nodoc
abstract class $CancelProductionModelCopyWith<$Res> {
  factory $CancelProductionModelCopyWith(CancelProductionModel value,
          $Res Function(CancelProductionModel) then) =
      _$CancelProductionModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'production_id') int productionId,
      @JsonKey(name: 'remaining_raw_material_qty') int remainingRawMaterialQty,
      @JsonKey(name: 'damaged_goods') int damagedGoods,
      @JsonKey(name: 'goods_produced') int goodsProduced,
      @JsonKey(name: 'reason') String reason});
}

/// @nodoc
class _$CancelProductionModelCopyWithImpl<$Res>
    implements $CancelProductionModelCopyWith<$Res> {
  _$CancelProductionModelCopyWithImpl(this._value, this._then);

  final CancelProductionModel _value;
  // ignore: unused_field
  final $Res Function(CancelProductionModel) _then;

  @override
  $Res call({
    Object productionId = freezed,
    Object remainingRawMaterialQty = freezed,
    Object damagedGoods = freezed,
    Object goodsProduced = freezed,
    Object reason = freezed,
  }) {
    return _then(_value.copyWith(
      productionId:
          productionId == freezed ? _value.productionId : productionId as int,
      remainingRawMaterialQty: remainingRawMaterialQty == freezed
          ? _value.remainingRawMaterialQty
          : remainingRawMaterialQty as int,
      damagedGoods:
          damagedGoods == freezed ? _value.damagedGoods : damagedGoods as int,
      goodsProduced: goodsProduced == freezed
          ? _value.goodsProduced
          : goodsProduced as int,
      reason: reason == freezed ? _value.reason : reason as String,
    ));
  }
}

/// @nodoc
abstract class _$CancelProductionModelCopyWith<$Res>
    implements $CancelProductionModelCopyWith<$Res> {
  factory _$CancelProductionModelCopyWith(_CancelProductionModel value,
          $Res Function(_CancelProductionModel) then) =
      __$CancelProductionModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'production_id') int productionId,
      @JsonKey(name: 'remaining_raw_material_qty') int remainingRawMaterialQty,
      @JsonKey(name: 'damaged_goods') int damagedGoods,
      @JsonKey(name: 'goods_produced') int goodsProduced,
      @JsonKey(name: 'reason') String reason});
}

/// @nodoc
class __$CancelProductionModelCopyWithImpl<$Res>
    extends _$CancelProductionModelCopyWithImpl<$Res>
    implements _$CancelProductionModelCopyWith<$Res> {
  __$CancelProductionModelCopyWithImpl(_CancelProductionModel _value,
      $Res Function(_CancelProductionModel) _then)
      : super(_value, (v) => _then(v as _CancelProductionModel));

  @override
  _CancelProductionModel get _value => super._value as _CancelProductionModel;

  @override
  $Res call({
    Object productionId = freezed,
    Object remainingRawMaterialQty = freezed,
    Object damagedGoods = freezed,
    Object goodsProduced = freezed,
    Object reason = freezed,
  }) {
    return _then(_CancelProductionModel(
      productionId:
          productionId == freezed ? _value.productionId : productionId as int,
      remainingRawMaterialQty: remainingRawMaterialQty == freezed
          ? _value.remainingRawMaterialQty
          : remainingRawMaterialQty as int,
      damagedGoods:
          damagedGoods == freezed ? _value.damagedGoods : damagedGoods as int,
      goodsProduced: goodsProduced == freezed
          ? _value.goodsProduced
          : goodsProduced as int,
      reason: reason == freezed ? _value.reason : reason as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_CancelProductionModel implements _CancelProductionModel {
  const _$_CancelProductionModel(
      {@JsonKey(name: 'production_id')
          this.productionId = 0,
      @JsonKey(name: 'remaining_raw_material_qty')
          this.remainingRawMaterialQty = 0,
      @JsonKey(name: 'damaged_goods')
          this.damagedGoods = 0,
      @JsonKey(name: 'goods_produced')
          this.goodsProduced = '',
      @JsonKey(name: 'reason')
          this.reason = ''})
      : assert(productionId != null),
        assert(remainingRawMaterialQty != null),
        assert(damagedGoods != null),
        assert(goodsProduced != null),
        assert(reason != null);

  factory _$_CancelProductionModel.fromJson(Map<String, dynamic> json) =>
      _$_$_CancelProductionModelFromJson(json);

  @override
  @JsonKey(name: 'production_id')
  final int productionId;
  @override
  @JsonKey(name: 'remaining_raw_material_qty')
  final int remainingRawMaterialQty;
  @override
  @JsonKey(name: 'damaged_goods')
  final int damagedGoods;
  @override
  @JsonKey(name: 'goods_produced')
  final int goodsProduced;
  @override
  @JsonKey(name: 'reason')
  final String reason;

  @override
  String toString() {
    return 'CancelProductionModel(productionId: $productionId, remainingRawMaterialQty: $remainingRawMaterialQty, damagedGoods: $damagedGoods, goodsProduced: $goodsProduced, reason: $reason)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CancelProductionModel &&
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
                    .equals(other.goodsProduced, goodsProduced)) &&
            (identical(other.reason, reason) ||
                const DeepCollectionEquality().equals(other.reason, reason)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(productionId) ^
      const DeepCollectionEquality().hash(remainingRawMaterialQty) ^
      const DeepCollectionEquality().hash(damagedGoods) ^
      const DeepCollectionEquality().hash(goodsProduced) ^
      const DeepCollectionEquality().hash(reason);

  @JsonKey(ignore: true)
  @override
  _$CancelProductionModelCopyWith<_CancelProductionModel> get copyWith =>
      __$CancelProductionModelCopyWithImpl<_CancelProductionModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CancelProductionModelToJson(this);
  }
}

abstract class _CancelProductionModel implements CancelProductionModel {
  const factory _CancelProductionModel(
      {@JsonKey(name: 'production_id') int productionId,
      @JsonKey(name: 'remaining_raw_material_qty') int remainingRawMaterialQty,
      @JsonKey(name: 'damaged_goods') int damagedGoods,
      @JsonKey(name: 'goods_produced') int goodsProduced,
      @JsonKey(name: 'reason') String reason}) = _$_CancelProductionModel;

  factory _CancelProductionModel.fromJson(Map<String, dynamic> json) =
      _$_CancelProductionModel.fromJson;

  @override
  @JsonKey(name: 'production_id')
  int get productionId;
  @override
  @JsonKey(name: 'remaining_raw_material_qty')
  int get remainingRawMaterialQty;
  @override
  @JsonKey(name: 'damaged_goods')
  int get damagedGoods;
  @override
  @JsonKey(name: 'goods_produced')
  int get goodsProduced;
  @override
  @JsonKey(name: 'reason')
  String get reason;
  @override
  @JsonKey(ignore: true)
  _$CancelProductionModelCopyWith<_CancelProductionModel> get copyWith;
}
