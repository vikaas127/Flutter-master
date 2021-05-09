// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'production_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
Production _$ProductionFromJson(Map<String, dynamic> json) {
  return _ProductionModel.fromJson(json);
}

/// @nodoc
class _$ProductionTearOff {
  const _$ProductionTearOff();

// ignore: unused_element
  _ProductionModel call(
      {@JsonKey(name: "items_qty") int itemsQty = 0,
      @JsonKey(name: "production_id") int productionId = 0,
      @JsonKey(name: "expected_good_output") int expectedGoodOutput = 0,
      @JsonKey(name: "remaining_goods_qty") int remainingGoodQty = 0,
      @JsonKey(name: "remaining_items_qty") int remainingItemsQty = 0,
      @JsonKey(name: "status") String status = '',
      @JsonKey(name: "finished_goods") int finishedGoods = 0}) {
    return _ProductionModel(
      itemsQty: itemsQty,
      productionId: productionId,
      expectedGoodOutput: expectedGoodOutput,
      remainingGoodQty: remainingGoodQty,
      remainingItemsQty: remainingItemsQty,
      status: status,
      finishedGoods: finishedGoods,
    );
  }

// ignore: unused_element
  Production fromJson(Map<String, Object> json) {
    return Production.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $Production = _$ProductionTearOff();

/// @nodoc
mixin _$Production {
  @JsonKey(name: "items_qty")
  int get itemsQty;
  @JsonKey(name: "production_id")
  int get productionId;
  @JsonKey(name: "expected_good_output")
  int get expectedGoodOutput;
  @JsonKey(name: "remaining_goods_qty")
  int get remainingGoodQty;
  @JsonKey(name: "remaining_items_qty")
  int get remainingItemsQty;
  @JsonKey(name: "status")
  String get status;
  @JsonKey(name: "finished_goods")
  int get finishedGoods;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $ProductionCopyWith<Production> get copyWith;
}

/// @nodoc
abstract class $ProductionCopyWith<$Res> {
  factory $ProductionCopyWith(
          Production value, $Res Function(Production) then) =
      _$ProductionCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "items_qty") int itemsQty,
      @JsonKey(name: "production_id") int productionId,
      @JsonKey(name: "expected_good_output") int expectedGoodOutput,
      @JsonKey(name: "remaining_goods_qty") int remainingGoodQty,
      @JsonKey(name: "remaining_items_qty") int remainingItemsQty,
      @JsonKey(name: "status") String status,
      @JsonKey(name: "finished_goods") int finishedGoods});
}

/// @nodoc
class _$ProductionCopyWithImpl<$Res> implements $ProductionCopyWith<$Res> {
  _$ProductionCopyWithImpl(this._value, this._then);

  final Production _value;
  // ignore: unused_field
  final $Res Function(Production) _then;

  @override
  $Res call({
    Object itemsQty = freezed,
    Object productionId = freezed,
    Object expectedGoodOutput = freezed,
    Object remainingGoodQty = freezed,
    Object remainingItemsQty = freezed,
    Object status = freezed,
    Object finishedGoods = freezed,
  }) {
    return _then(_value.copyWith(
      itemsQty: itemsQty == freezed ? _value.itemsQty : itemsQty as int,
      productionId:
          productionId == freezed ? _value.productionId : productionId as int,
      expectedGoodOutput: expectedGoodOutput == freezed
          ? _value.expectedGoodOutput
          : expectedGoodOutput as int,
      remainingGoodQty: remainingGoodQty == freezed
          ? _value.remainingGoodQty
          : remainingGoodQty as int,
      remainingItemsQty: remainingItemsQty == freezed
          ? _value.remainingItemsQty
          : remainingItemsQty as int,
      status: status == freezed ? _value.status : status as String,
      finishedGoods: finishedGoods == freezed
          ? _value.finishedGoods
          : finishedGoods as int,
    ));
  }
}

/// @nodoc
abstract class _$ProductionModelCopyWith<$Res>
    implements $ProductionCopyWith<$Res> {
  factory _$ProductionModelCopyWith(
          _ProductionModel value, $Res Function(_ProductionModel) then) =
      __$ProductionModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "items_qty") int itemsQty,
      @JsonKey(name: "production_id") int productionId,
      @JsonKey(name: "expected_good_output") int expectedGoodOutput,
      @JsonKey(name: "remaining_goods_qty") int remainingGoodQty,
      @JsonKey(name: "remaining_items_qty") int remainingItemsQty,
      @JsonKey(name: "status") String status,
      @JsonKey(name: "finished_goods") int finishedGoods});
}

/// @nodoc
class __$ProductionModelCopyWithImpl<$Res>
    extends _$ProductionCopyWithImpl<$Res>
    implements _$ProductionModelCopyWith<$Res> {
  __$ProductionModelCopyWithImpl(
      _ProductionModel _value, $Res Function(_ProductionModel) _then)
      : super(_value, (v) => _then(v as _ProductionModel));

  @override
  _ProductionModel get _value => super._value as _ProductionModel;

  @override
  $Res call({
    Object itemsQty = freezed,
    Object productionId = freezed,
    Object expectedGoodOutput = freezed,
    Object remainingGoodQty = freezed,
    Object remainingItemsQty = freezed,
    Object status = freezed,
    Object finishedGoods = freezed,
  }) {
    return _then(_ProductionModel(
      itemsQty: itemsQty == freezed ? _value.itemsQty : itemsQty as int,
      productionId:
          productionId == freezed ? _value.productionId : productionId as int,
      expectedGoodOutput: expectedGoodOutput == freezed
          ? _value.expectedGoodOutput
          : expectedGoodOutput as int,
      remainingGoodQty: remainingGoodQty == freezed
          ? _value.remainingGoodQty
          : remainingGoodQty as int,
      remainingItemsQty: remainingItemsQty == freezed
          ? _value.remainingItemsQty
          : remainingItemsQty as int,
      status: status == freezed ? _value.status : status as String,
      finishedGoods: finishedGoods == freezed
          ? _value.finishedGoods
          : finishedGoods as int,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_ProductionModel implements _ProductionModel {
  const _$_ProductionModel(
      {@JsonKey(name: "items_qty") this.itemsQty = 0,
      @JsonKey(name: "production_id") this.productionId = 0,
      @JsonKey(name: "expected_good_output") this.expectedGoodOutput = 0,
      @JsonKey(name: "remaining_goods_qty") this.remainingGoodQty = 0,
      @JsonKey(name: "remaining_items_qty") this.remainingItemsQty = 0,
      @JsonKey(name: "status") this.status = '',
      @JsonKey(name: "finished_goods") this.finishedGoods = 0})
      : assert(itemsQty != null),
        assert(productionId != null),
        assert(expectedGoodOutput != null),
        assert(remainingGoodQty != null),
        assert(remainingItemsQty != null),
        assert(status != null),
        assert(finishedGoods != null);

  factory _$_ProductionModel.fromJson(Map<String, dynamic> json) =>
      _$_$_ProductionModelFromJson(json);

  @override
  @JsonKey(name: "items_qty")
  final int itemsQty;
  @override
  @JsonKey(name: "production_id")
  final int productionId;
  @override
  @JsonKey(name: "expected_good_output")
  final int expectedGoodOutput;
  @override
  @JsonKey(name: "remaining_goods_qty")
  final int remainingGoodQty;
  @override
  @JsonKey(name: "remaining_items_qty")
  final int remainingItemsQty;
  @override
  @JsonKey(name: "status")
  final String status;
  @override
  @JsonKey(name: "finished_goods")
  final int finishedGoods;

  @override
  String toString() {
    return 'Production(itemsQty: $itemsQty, productionId: $productionId, expectedGoodOutput: $expectedGoodOutput, remainingGoodQty: $remainingGoodQty, remainingItemsQty: $remainingItemsQty, status: $status, finishedGoods: $finishedGoods)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ProductionModel &&
            (identical(other.itemsQty, itemsQty) ||
                const DeepCollectionEquality()
                    .equals(other.itemsQty, itemsQty)) &&
            (identical(other.productionId, productionId) ||
                const DeepCollectionEquality()
                    .equals(other.productionId, productionId)) &&
            (identical(other.expectedGoodOutput, expectedGoodOutput) ||
                const DeepCollectionEquality()
                    .equals(other.expectedGoodOutput, expectedGoodOutput)) &&
            (identical(other.remainingGoodQty, remainingGoodQty) ||
                const DeepCollectionEquality()
                    .equals(other.remainingGoodQty, remainingGoodQty)) &&
            (identical(other.remainingItemsQty, remainingItemsQty) ||
                const DeepCollectionEquality()
                    .equals(other.remainingItemsQty, remainingItemsQty)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.finishedGoods, finishedGoods) ||
                const DeepCollectionEquality()
                    .equals(other.finishedGoods, finishedGoods)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(itemsQty) ^
      const DeepCollectionEquality().hash(productionId) ^
      const DeepCollectionEquality().hash(expectedGoodOutput) ^
      const DeepCollectionEquality().hash(remainingGoodQty) ^
      const DeepCollectionEquality().hash(remainingItemsQty) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(finishedGoods);

  @JsonKey(ignore: true)
  @override
  _$ProductionModelCopyWith<_ProductionModel> get copyWith =>
      __$ProductionModelCopyWithImpl<_ProductionModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ProductionModelToJson(this);
  }
}

abstract class _ProductionModel implements Production {
  const factory _ProductionModel(
      {@JsonKey(name: "items_qty") int itemsQty,
      @JsonKey(name: "production_id") int productionId,
      @JsonKey(name: "expected_good_output") int expectedGoodOutput,
      @JsonKey(name: "remaining_goods_qty") int remainingGoodQty,
      @JsonKey(name: "remaining_items_qty") int remainingItemsQty,
      @JsonKey(name: "status") String status,
      @JsonKey(name: "finished_goods") int finishedGoods}) = _$_ProductionModel;

  factory _ProductionModel.fromJson(Map<String, dynamic> json) =
      _$_ProductionModel.fromJson;

  @override
  @JsonKey(name: "items_qty")
  int get itemsQty;
  @override
  @JsonKey(name: "production_id")
  int get productionId;
  @override
  @JsonKey(name: "expected_good_output")
  int get expectedGoodOutput;
  @override
  @JsonKey(name: "remaining_goods_qty")
  int get remainingGoodQty;
  @override
  @JsonKey(name: "remaining_items_qty")
  int get remainingItemsQty;
  @override
  @JsonKey(name: "status")
  String get status;
  @override
  @JsonKey(name: "finished_goods")
  int get finishedGoods;
  @override
  @JsonKey(ignore: true)
  _$ProductionModelCopyWith<_ProductionModel> get copyWith;
}
