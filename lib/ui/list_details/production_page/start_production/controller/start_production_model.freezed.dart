// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'start_production_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
StartProductionModel _$StartProductionModelFromJson(Map<String, dynamic> json) {
  return _StartProductionModel.fromJson(json);
}

/// @nodoc
class _$StartProductionModelTearOff {
  const _$StartProductionModelTearOff();

// ignore: unused_element
  _StartProductionModel call(
      {@JsonKey(name: "items_qty") int itemsQty = 0,
      @JsonKey(name: "expected_good_output") int expectedGoodOutput = 0,
      @JsonKey(name: "goods_name") String goodsName = '',
      @JsonKey(name: "input_items") String inputItems = '',
      @JsonKey(name: "machine_name") String machineName = ''}) {
    return _StartProductionModel(
      itemsQty: itemsQty,
      expectedGoodOutput: expectedGoodOutput,
      goodsName: goodsName,
      inputItems: inputItems,
      machineName: machineName,
    );
  }

// ignore: unused_element
  StartProductionModel fromJson(Map<String, Object> json) {
    return StartProductionModel.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $StartProductionModel = _$StartProductionModelTearOff();

/// @nodoc
mixin _$StartProductionModel {
  @JsonKey(name: "items_qty")
  int get itemsQty;
  @JsonKey(name: "expected_good_output")
  int get expectedGoodOutput;
  @JsonKey(name: "goods_name")
  String get goodsName;
  @JsonKey(name: "input_items")
  String get inputItems;
  @JsonKey(name: "machine_name")
  String get machineName;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $StartProductionModelCopyWith<StartProductionModel> get copyWith;
}

/// @nodoc
abstract class $StartProductionModelCopyWith<$Res> {
  factory $StartProductionModelCopyWith(StartProductionModel value,
          $Res Function(StartProductionModel) then) =
      _$StartProductionModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "items_qty") int itemsQty,
      @JsonKey(name: "expected_good_output") int expectedGoodOutput,
      @JsonKey(name: "goods_name") String goodsName,
      @JsonKey(name: "input_items") String inputItems,
      @JsonKey(name: "machine_name") String machineName});
}

/// @nodoc
class _$StartProductionModelCopyWithImpl<$Res>
    implements $StartProductionModelCopyWith<$Res> {
  _$StartProductionModelCopyWithImpl(this._value, this._then);

  final StartProductionModel _value;
  // ignore: unused_field
  final $Res Function(StartProductionModel) _then;

  @override
  $Res call({
    Object itemsQty = freezed,
    Object expectedGoodOutput = freezed,
    Object goodsName = freezed,
    Object inputItems = freezed,
    Object machineName = freezed,
  }) {
    return _then(_value.copyWith(
      itemsQty: itemsQty == freezed ? _value.itemsQty : itemsQty as int,
      expectedGoodOutput: expectedGoodOutput == freezed
          ? _value.expectedGoodOutput
          : expectedGoodOutput as int,
      goodsName: goodsName == freezed ? _value.goodsName : goodsName as String,
      inputItems:
          inputItems == freezed ? _value.inputItems : inputItems as String,
      machineName:
          machineName == freezed ? _value.machineName : machineName as String,
    ));
  }
}

/// @nodoc
abstract class _$StartProductionModelCopyWith<$Res>
    implements $StartProductionModelCopyWith<$Res> {
  factory _$StartProductionModelCopyWith(_StartProductionModel value,
          $Res Function(_StartProductionModel) then) =
      __$StartProductionModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "items_qty") int itemsQty,
      @JsonKey(name: "expected_good_output") int expectedGoodOutput,
      @JsonKey(name: "goods_name") String goodsName,
      @JsonKey(name: "input_items") String inputItems,
      @JsonKey(name: "machine_name") String machineName});
}

/// @nodoc
class __$StartProductionModelCopyWithImpl<$Res>
    extends _$StartProductionModelCopyWithImpl<$Res>
    implements _$StartProductionModelCopyWith<$Res> {
  __$StartProductionModelCopyWithImpl(
      _StartProductionModel _value, $Res Function(_StartProductionModel) _then)
      : super(_value, (v) => _then(v as _StartProductionModel));

  @override
  _StartProductionModel get _value => super._value as _StartProductionModel;

  @override
  $Res call({
    Object itemsQty = freezed,
    Object expectedGoodOutput = freezed,
    Object goodsName = freezed,
    Object inputItems = freezed,
    Object machineName = freezed,
  }) {
    return _then(_StartProductionModel(
      itemsQty: itemsQty == freezed ? _value.itemsQty : itemsQty as int,
      expectedGoodOutput: expectedGoodOutput == freezed
          ? _value.expectedGoodOutput
          : expectedGoodOutput as int,
      goodsName: goodsName == freezed ? _value.goodsName : goodsName as String,
      inputItems:
          inputItems == freezed ? _value.inputItems : inputItems as String,
      machineName:
          machineName == freezed ? _value.machineName : machineName as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_StartProductionModel implements _StartProductionModel {
  const _$_StartProductionModel(
      {@JsonKey(name: "items_qty") this.itemsQty = 0,
      @JsonKey(name: "expected_good_output") this.expectedGoodOutput = 0,
      @JsonKey(name: "goods_name") this.goodsName = '',
      @JsonKey(name: "input_items") this.inputItems = '',
      @JsonKey(name: "machine_name") this.machineName = ''})
      : assert(itemsQty != null),
        assert(expectedGoodOutput != null),
        assert(goodsName != null),
        assert(inputItems != null),
        assert(machineName != null);

  factory _$_StartProductionModel.fromJson(Map<String, dynamic> json) =>
      _$_$_StartProductionModelFromJson(json);

  @override
  @JsonKey(name: "items_qty")
  final int itemsQty;
  @override
  @JsonKey(name: "expected_good_output")
  final int expectedGoodOutput;
  @override
  @JsonKey(name: "goods_name")
  final String goodsName;
  @override
  @JsonKey(name: "input_items")
  final String inputItems;
  @override
  @JsonKey(name: "machine_name")
  final String machineName;

  @override
  String toString() {
    return 'StartProductionModel(itemsQty: $itemsQty, expectedGoodOutput: $expectedGoodOutput, goodsName: $goodsName, inputItems: $inputItems, machineName: $machineName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _StartProductionModel &&
            (identical(other.itemsQty, itemsQty) ||
                const DeepCollectionEquality()
                    .equals(other.itemsQty, itemsQty)) &&
            (identical(other.expectedGoodOutput, expectedGoodOutput) ||
                const DeepCollectionEquality()
                    .equals(other.expectedGoodOutput, expectedGoodOutput)) &&
            (identical(other.goodsName, goodsName) ||
                const DeepCollectionEquality()
                    .equals(other.goodsName, goodsName)) &&
            (identical(other.inputItems, inputItems) ||
                const DeepCollectionEquality()
                    .equals(other.inputItems, inputItems)) &&
            (identical(other.machineName, machineName) ||
                const DeepCollectionEquality()
                    .equals(other.machineName, machineName)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(itemsQty) ^
      const DeepCollectionEquality().hash(expectedGoodOutput) ^
      const DeepCollectionEquality().hash(goodsName) ^
      const DeepCollectionEquality().hash(inputItems) ^
      const DeepCollectionEquality().hash(machineName);

  @JsonKey(ignore: true)
  @override
  _$StartProductionModelCopyWith<_StartProductionModel> get copyWith =>
      __$StartProductionModelCopyWithImpl<_StartProductionModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_StartProductionModelToJson(this);
  }
}

abstract class _StartProductionModel implements StartProductionModel {
  const factory _StartProductionModel(
          {@JsonKey(name: "items_qty") int itemsQty,
          @JsonKey(name: "expected_good_output") int expectedGoodOutput,
          @JsonKey(name: "goods_name") String goodsName,
          @JsonKey(name: "input_items") String inputItems,
          @JsonKey(name: "machine_name") String machineName}) =
      _$_StartProductionModel;

  factory _StartProductionModel.fromJson(Map<String, dynamic> json) =
      _$_StartProductionModel.fromJson;

  @override
  @JsonKey(name: "items_qty")
  int get itemsQty;
  @override
  @JsonKey(name: "expected_good_output")
  int get expectedGoodOutput;
  @override
  @JsonKey(name: "goods_name")
  String get goodsName;
  @override
  @JsonKey(name: "input_items")
  String get inputItems;
  @override
  @JsonKey(name: "machine_name")
  String get machineName;
  @override
  @JsonKey(ignore: true)
  _$StartProductionModelCopyWith<_StartProductionModel> get copyWith;
}
