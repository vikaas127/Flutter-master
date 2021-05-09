// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'finish_printing_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
FinishPrintingModel _$FinishPrintingModelFromJson(Map<String, dynamic> json) {
  return _FinishPrintingModel.fromJson(json);
}

/// @nodoc
class _$FinishPrintingModelTearOff {
  const _$FinishPrintingModelTearOff();

// ignore: unused_element
  _FinishPrintingModel call(
      {int printingId = 0,
      int remainingRawMaterialQty = 0,
      int damagedGoods = 0,
      int goodsProduced = 0}) {
    return _FinishPrintingModel(
      printingId: printingId,
      remainingRawMaterialQty: remainingRawMaterialQty,
      damagedGoods: damagedGoods,
      goodsProduced: goodsProduced,
    );
  }

// ignore: unused_element
  FinishPrintingModel fromJson(Map<String, Object> json) {
    return FinishPrintingModel.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $FinishPrintingModel = _$FinishPrintingModelTearOff();

/// @nodoc
mixin _$FinishPrintingModel {
  int get printingId;
  int get remainingRawMaterialQty;
  int get damagedGoods;
  int get goodsProduced;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $FinishPrintingModelCopyWith<FinishPrintingModel> get copyWith;
}

/// @nodoc
abstract class $FinishPrintingModelCopyWith<$Res> {
  factory $FinishPrintingModelCopyWith(
          FinishPrintingModel value, $Res Function(FinishPrintingModel) then) =
      _$FinishPrintingModelCopyWithImpl<$Res>;
  $Res call(
      {int printingId,
      int remainingRawMaterialQty,
      int damagedGoods,
      int goodsProduced});
}

/// @nodoc
class _$FinishPrintingModelCopyWithImpl<$Res>
    implements $FinishPrintingModelCopyWith<$Res> {
  _$FinishPrintingModelCopyWithImpl(this._value, this._then);

  final FinishPrintingModel _value;
  // ignore: unused_field
  final $Res Function(FinishPrintingModel) _then;

  @override
  $Res call({
    Object printingId = freezed,
    Object remainingRawMaterialQty = freezed,
    Object damagedGoods = freezed,
    Object goodsProduced = freezed,
  }) {
    return _then(_value.copyWith(
      printingId: printingId == freezed ? _value.printingId : printingId as int,
      remainingRawMaterialQty: remainingRawMaterialQty == freezed
          ? _value.remainingRawMaterialQty
          : remainingRawMaterialQty as int,
      damagedGoods:
          damagedGoods == freezed ? _value.damagedGoods : damagedGoods as int,
      goodsProduced: goodsProduced == freezed
          ? _value.goodsProduced
          : goodsProduced as int,
    ));
  }
}

/// @nodoc
abstract class _$FinishPrintingModelCopyWith<$Res>
    implements $FinishPrintingModelCopyWith<$Res> {
  factory _$FinishPrintingModelCopyWith(_FinishPrintingModel value,
          $Res Function(_FinishPrintingModel) then) =
      __$FinishPrintingModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int printingId,
      int remainingRawMaterialQty,
      int damagedGoods,
      int goodsProduced});
}

/// @nodoc
class __$FinishPrintingModelCopyWithImpl<$Res>
    extends _$FinishPrintingModelCopyWithImpl<$Res>
    implements _$FinishPrintingModelCopyWith<$Res> {
  __$FinishPrintingModelCopyWithImpl(
      _FinishPrintingModel _value, $Res Function(_FinishPrintingModel) _then)
      : super(_value, (v) => _then(v as _FinishPrintingModel));

  @override
  _FinishPrintingModel get _value => super._value as _FinishPrintingModel;

  @override
  $Res call({
    Object printingId = freezed,
    Object remainingRawMaterialQty = freezed,
    Object damagedGoods = freezed,
    Object goodsProduced = freezed,
  }) {
    return _then(_FinishPrintingModel(
      printingId: printingId == freezed ? _value.printingId : printingId as int,
      remainingRawMaterialQty: remainingRawMaterialQty == freezed
          ? _value.remainingRawMaterialQty
          : remainingRawMaterialQty as int,
      damagedGoods:
          damagedGoods == freezed ? _value.damagedGoods : damagedGoods as int,
      goodsProduced: goodsProduced == freezed
          ? _value.goodsProduced
          : goodsProduced as int,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_FinishPrintingModel implements _FinishPrintingModel {
  const _$_FinishPrintingModel(
      {this.printingId = 0,
      this.remainingRawMaterialQty = 0,
      this.damagedGoods = 0,
      this.goodsProduced = 0})
      : assert(printingId != null),
        assert(remainingRawMaterialQty != null),
        assert(damagedGoods != null),
        assert(goodsProduced != null);

  factory _$_FinishPrintingModel.fromJson(Map<String, dynamic> json) =>
      _$_$_FinishPrintingModelFromJson(json);

  @JsonKey(defaultValue: 0)
  @override
  final int printingId;
  @JsonKey(defaultValue: 0)
  @override
  final int remainingRawMaterialQty;
  @JsonKey(defaultValue: 0)
  @override
  final int damagedGoods;
  @JsonKey(defaultValue: 0)
  @override
  final int goodsProduced;

  @override
  String toString() {
    return 'FinishPrintingModel(printingId: $printingId, remainingRawMaterialQty: $remainingRawMaterialQty, damagedGoods: $damagedGoods, goodsProduced: $goodsProduced)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FinishPrintingModel &&
            (identical(other.printingId, printingId) ||
                const DeepCollectionEquality()
                    .equals(other.printingId, printingId)) &&
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
      const DeepCollectionEquality().hash(printingId) ^
      const DeepCollectionEquality().hash(remainingRawMaterialQty) ^
      const DeepCollectionEquality().hash(damagedGoods) ^
      const DeepCollectionEquality().hash(goodsProduced);

  @JsonKey(ignore: true)
  @override
  _$FinishPrintingModelCopyWith<_FinishPrintingModel> get copyWith =>
      __$FinishPrintingModelCopyWithImpl<_FinishPrintingModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_FinishPrintingModelToJson(this);
  }
}

abstract class _FinishPrintingModel implements FinishPrintingModel {
  const factory _FinishPrintingModel(
      {int printingId,
      int remainingRawMaterialQty,
      int damagedGoods,
      int goodsProduced}) = _$_FinishPrintingModel;

  factory _FinishPrintingModel.fromJson(Map<String, dynamic> json) =
      _$_FinishPrintingModel.fromJson;

  @override
  int get printingId;
  @override
  int get remainingRawMaterialQty;
  @override
  int get damagedGoods;
  @override
  int get goodsProduced;
  @override
  @JsonKey(ignore: true)
  _$FinishPrintingModelCopyWith<_FinishPrintingModel> get copyWith;
}
