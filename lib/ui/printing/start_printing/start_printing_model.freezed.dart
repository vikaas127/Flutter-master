// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'start_printing_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
StartPrintingModel _$StartPrintingModelFromJson(Map<String, dynamic> json) {
  return _StartPrintingModel.fromJson(json);
}

/// @nodoc
class _$StartPrintingModelTearOff {
  const _$StartPrintingModelTearOff();

// ignore: unused_element
  _StartPrintingModel call(
      {int itemsQty = 0,
      String itemName = '',
      String machineName = '',
      String description = '',
      int expectedGoodOutput = 0}) {
    return _StartPrintingModel(
      itemsQty: itemsQty,
      itemName: itemName,
      machineName: machineName,
      description: description,
      expectedGoodOutput: expectedGoodOutput,
    );
  }

// ignore: unused_element
  StartPrintingModel fromJson(Map<String, Object> json) {
    return StartPrintingModel.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $StartPrintingModel = _$StartPrintingModelTearOff();

/// @nodoc
mixin _$StartPrintingModel {
  int get itemsQty;
  String get itemName;
  String get machineName;
  String get description;
  int get expectedGoodOutput;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $StartPrintingModelCopyWith<StartPrintingModel> get copyWith;
}

/// @nodoc
abstract class $StartPrintingModelCopyWith<$Res> {
  factory $StartPrintingModelCopyWith(
          StartPrintingModel value, $Res Function(StartPrintingModel) then) =
      _$StartPrintingModelCopyWithImpl<$Res>;
  $Res call(
      {int itemsQty,
      String itemName,
      String machineName,
      String description,
      int expectedGoodOutput});
}

/// @nodoc
class _$StartPrintingModelCopyWithImpl<$Res>
    implements $StartPrintingModelCopyWith<$Res> {
  _$StartPrintingModelCopyWithImpl(this._value, this._then);

  final StartPrintingModel _value;
  // ignore: unused_field
  final $Res Function(StartPrintingModel) _then;

  @override
  $Res call({
    Object itemsQty = freezed,
    Object itemName = freezed,
    Object machineName = freezed,
    Object description = freezed,
    Object expectedGoodOutput = freezed,
  }) {
    return _then(_value.copyWith(
      itemsQty: itemsQty == freezed ? _value.itemsQty : itemsQty as int,
      itemName: itemName == freezed ? _value.itemName : itemName as String,
      machineName:
          machineName == freezed ? _value.machineName : machineName as String,
      description:
          description == freezed ? _value.description : description as String,
      expectedGoodOutput: expectedGoodOutput == freezed
          ? _value.expectedGoodOutput
          : expectedGoodOutput as int,
    ));
  }
}

/// @nodoc
abstract class _$StartPrintingModelCopyWith<$Res>
    implements $StartPrintingModelCopyWith<$Res> {
  factory _$StartPrintingModelCopyWith(
          _StartPrintingModel value, $Res Function(_StartPrintingModel) then) =
      __$StartPrintingModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int itemsQty,
      String itemName,
      String machineName,
      String description,
      int expectedGoodOutput});
}

/// @nodoc
class __$StartPrintingModelCopyWithImpl<$Res>
    extends _$StartPrintingModelCopyWithImpl<$Res>
    implements _$StartPrintingModelCopyWith<$Res> {
  __$StartPrintingModelCopyWithImpl(
      _StartPrintingModel _value, $Res Function(_StartPrintingModel) _then)
      : super(_value, (v) => _then(v as _StartPrintingModel));

  @override
  _StartPrintingModel get _value => super._value as _StartPrintingModel;

  @override
  $Res call({
    Object itemsQty = freezed,
    Object itemName = freezed,
    Object machineName = freezed,
    Object description = freezed,
    Object expectedGoodOutput = freezed,
  }) {
    return _then(_StartPrintingModel(
      itemsQty: itemsQty == freezed ? _value.itemsQty : itemsQty as int,
      itemName: itemName == freezed ? _value.itemName : itemName as String,
      machineName:
          machineName == freezed ? _value.machineName : machineName as String,
      description:
          description == freezed ? _value.description : description as String,
      expectedGoodOutput: expectedGoodOutput == freezed
          ? _value.expectedGoodOutput
          : expectedGoodOutput as int,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_StartPrintingModel implements _StartPrintingModel {
  const _$_StartPrintingModel(
      {this.itemsQty = 0,
      this.itemName = '',
      this.machineName = '',
      this.description = '',
      this.expectedGoodOutput = 0})
      : assert(itemsQty != null),
        assert(itemName != null),
        assert(machineName != null),
        assert(description != null),
        assert(expectedGoodOutput != null);

  factory _$_StartPrintingModel.fromJson(Map<String, dynamic> json) =>
      _$_$_StartPrintingModelFromJson(json);

  @JsonKey(defaultValue: 0)
  @override
  final int itemsQty;
  @JsonKey(defaultValue: '')
  @override
  final String itemName;
  @JsonKey(defaultValue: '')
  @override
  final String machineName;
  @JsonKey(defaultValue: '')
  @override
  final String description;
  @JsonKey(defaultValue: 0)
  @override
  final int expectedGoodOutput;

  @override
  String toString() {
    return 'StartPrintingModel(itemsQty: $itemsQty, itemName: $itemName, machineName: $machineName, description: $description, expectedGoodOutput: $expectedGoodOutput)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _StartPrintingModel &&
            (identical(other.itemsQty, itemsQty) ||
                const DeepCollectionEquality()
                    .equals(other.itemsQty, itemsQty)) &&
            (identical(other.itemName, itemName) ||
                const DeepCollectionEquality()
                    .equals(other.itemName, itemName)) &&
            (identical(other.machineName, machineName) ||
                const DeepCollectionEquality()
                    .equals(other.machineName, machineName)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.expectedGoodOutput, expectedGoodOutput) ||
                const DeepCollectionEquality()
                    .equals(other.expectedGoodOutput, expectedGoodOutput)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(itemsQty) ^
      const DeepCollectionEquality().hash(itemName) ^
      const DeepCollectionEquality().hash(machineName) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(expectedGoodOutput);

  @JsonKey(ignore: true)
  @override
  _$StartPrintingModelCopyWith<_StartPrintingModel> get copyWith =>
      __$StartPrintingModelCopyWithImpl<_StartPrintingModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_StartPrintingModelToJson(this);
  }
}

abstract class _StartPrintingModel implements StartPrintingModel {
  const factory _StartPrintingModel(
      {int itemsQty,
      String itemName,
      String machineName,
      String description,
      int expectedGoodOutput}) = _$_StartPrintingModel;

  factory _StartPrintingModel.fromJson(Map<String, dynamic> json) =
      _$_StartPrintingModel.fromJson;

  @override
  int get itemsQty;
  @override
  String get itemName;
  @override
  String get machineName;
  @override
  String get description;
  @override
  int get expectedGoodOutput;
  @override
  @JsonKey(ignore: true)
  _$StartPrintingModelCopyWith<_StartPrintingModel> get copyWith;
}
