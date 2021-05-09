// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'machine_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
MachineModel _$MachineModelFromJson(Map<String, dynamic> json) {
  return _MachineModel.fromJson(json);
}

/// @nodoc
class _$MachineModelTearOff {
  const _$MachineModelTearOff();

// ignore: unused_element
  _MachineModel call({@JsonKey(name: "machine_name") String machineName = ''}) {
    return _MachineModel(
      machineName: machineName,
    );
  }

// ignore: unused_element
  MachineModel fromJson(Map<String, Object> json) {
    return MachineModel.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $MachineModel = _$MachineModelTearOff();

/// @nodoc
mixin _$MachineModel {
  @JsonKey(name: "machine_name")
  String get machineName;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $MachineModelCopyWith<MachineModel> get copyWith;
}

/// @nodoc
abstract class $MachineModelCopyWith<$Res> {
  factory $MachineModelCopyWith(
          MachineModel value, $Res Function(MachineModel) then) =
      _$MachineModelCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: "machine_name") String machineName});
}

/// @nodoc
class _$MachineModelCopyWithImpl<$Res> implements $MachineModelCopyWith<$Res> {
  _$MachineModelCopyWithImpl(this._value, this._then);

  final MachineModel _value;
  // ignore: unused_field
  final $Res Function(MachineModel) _then;

  @override
  $Res call({
    Object machineName = freezed,
  }) {
    return _then(_value.copyWith(
      machineName:
          machineName == freezed ? _value.machineName : machineName as String,
    ));
  }
}

/// @nodoc
abstract class _$MachineModelCopyWith<$Res>
    implements $MachineModelCopyWith<$Res> {
  factory _$MachineModelCopyWith(
          _MachineModel value, $Res Function(_MachineModel) then) =
      __$MachineModelCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: "machine_name") String machineName});
}

/// @nodoc
class __$MachineModelCopyWithImpl<$Res> extends _$MachineModelCopyWithImpl<$Res>
    implements _$MachineModelCopyWith<$Res> {
  __$MachineModelCopyWithImpl(
      _MachineModel _value, $Res Function(_MachineModel) _then)
      : super(_value, (v) => _then(v as _MachineModel));

  @override
  _MachineModel get _value => super._value as _MachineModel;

  @override
  $Res call({
    Object machineName = freezed,
  }) {
    return _then(_MachineModel(
      machineName:
          machineName == freezed ? _value.machineName : machineName as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_MachineModel implements _MachineModel {
  const _$_MachineModel({@JsonKey(name: "machine_name") this.machineName = ''})
      : assert(machineName != null);

  factory _$_MachineModel.fromJson(Map<String, dynamic> json) =>
      _$_$_MachineModelFromJson(json);

  @override
  @JsonKey(name: "machine_name")
  final String machineName;

  @override
  String toString() {
    return 'MachineModel(machineName: $machineName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MachineModel &&
            (identical(other.machineName, machineName) ||
                const DeepCollectionEquality()
                    .equals(other.machineName, machineName)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(machineName);

  @JsonKey(ignore: true)
  @override
  _$MachineModelCopyWith<_MachineModel> get copyWith =>
      __$MachineModelCopyWithImpl<_MachineModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_MachineModelToJson(this);
  }
}

abstract class _MachineModel implements MachineModel {
  const factory _MachineModel(
      {@JsonKey(name: "machine_name") String machineName}) = _$_MachineModel;

  factory _MachineModel.fromJson(Map<String, dynamic> json) =
      _$_MachineModel.fromJson;

  @override
  @JsonKey(name: "machine_name")
  String get machineName;
  @override
  @JsonKey(ignore: true)
  _$MachineModelCopyWith<_MachineModel> get copyWith;
}
