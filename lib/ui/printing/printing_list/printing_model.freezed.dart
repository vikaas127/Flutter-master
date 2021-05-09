// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'printing_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
Printing _$PrintingFromJson(Map<String, dynamic> json) {
  return _PrintingModel.fromJson(json);
}

/// @nodoc
class _$PrintingTearOff {
  const _$PrintingTearOff();

// ignore: unused_element
  _PrintingModel call(
      {@JsonKey(name: "items_qty") int itemsQty = 0,
      @JsonKey(name: "production_id") int productionId = 0,
      @JsonKey(name: "expected_good_output") int expectedGoodOutput = 0,
      @JsonKey(name: "remaining_goods_qty") int remainingGoodQty = 0,
      @JsonKey(name: "remaining_items_qty") int remainingItemsQty = 0,
      @JsonKey(name: "status") String status = '',
      @JsonKey(name: "finished_goods") int finishedGoods = 0}) {
    return _PrintingModel(
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
  Printing fromJson(Map<String, Object> json) {
    return Printing.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $Printing = _$PrintingTearOff();

/// @nodoc
mixin _$Printing {
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
  $PrintingCopyWith<Printing> get copyWith;
}

/// @nodoc
abstract class $PrintingCopyWith<$Res> {
  factory $PrintingCopyWith(Printing value, $Res Function(Printing) then) =
      _$PrintingCopyWithImpl<$Res>;
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
class _$PrintingCopyWithImpl<$Res> implements $PrintingCopyWith<$Res> {
  _$PrintingCopyWithImpl(this._value, this._then);

  final Printing _value;
  // ignore: unused_field
  final $Res Function(Printing) _then;

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
abstract class _$PrintingModelCopyWith<$Res>
    implements $PrintingCopyWith<$Res> {
  factory _$PrintingModelCopyWith(
          _PrintingModel value, $Res Function(_PrintingModel) then) =
      __$PrintingModelCopyWithImpl<$Res>;
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
class __$PrintingModelCopyWithImpl<$Res> extends _$PrintingCopyWithImpl<$Res>
    implements _$PrintingModelCopyWith<$Res> {
  __$PrintingModelCopyWithImpl(
      _PrintingModel _value, $Res Function(_PrintingModel) _then)
      : super(_value, (v) => _then(v as _PrintingModel));

  @override
  _PrintingModel get _value => super._value as _PrintingModel;

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
    return _then(_PrintingModel(
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
class _$_PrintingModel implements _PrintingModel {
  const _$_PrintingModel(
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

  factory _$_PrintingModel.fromJson(Map<String, dynamic> json) =>
      _$_$_PrintingModelFromJson(json);

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
    return 'Printing(itemsQty: $itemsQty, productionId: $productionId, expectedGoodOutput: $expectedGoodOutput, remainingGoodQty: $remainingGoodQty, remainingItemsQty: $remainingItemsQty, status: $status, finishedGoods: $finishedGoods)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PrintingModel &&
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
  _$PrintingModelCopyWith<_PrintingModel> get copyWith =>
      __$PrintingModelCopyWithImpl<_PrintingModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PrintingModelToJson(this);
  }
}

abstract class _PrintingModel implements Printing {
  const factory _PrintingModel(
      {@JsonKey(name: "items_qty") int itemsQty,
      @JsonKey(name: "production_id") int productionId,
      @JsonKey(name: "expected_good_output") int expectedGoodOutput,
      @JsonKey(name: "remaining_goods_qty") int remainingGoodQty,
      @JsonKey(name: "remaining_items_qty") int remainingItemsQty,
      @JsonKey(name: "status") String status,
      @JsonKey(name: "finished_goods") int finishedGoods}) = _$_PrintingModel;

  factory _PrintingModel.fromJson(Map<String, dynamic> json) =
      _$_PrintingModel.fromJson;

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
  _$PrintingModelCopyWith<_PrintingModel> get copyWith;
}
