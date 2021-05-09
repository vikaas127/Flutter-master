// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'reutilization_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
ReutilizationModel _$ReutilizationModelFromJson(Map<String, dynamic> json) {
  return _ReutilizationModel.fromJson(json);
}

/// @nodoc
class _$ReutilizationModelTearOff {
  const _$ReutilizationModelTearOff();

// ignore: unused_element
  _ReutilizationModel call(
      {@JsonKey(name: "reutilization_id") int reutilizationId = 0,
      @JsonKey(name: "last_updated") @nullable DateTime lastUpdated}) {
    return _ReutilizationModel(
      reutilizationId: reutilizationId,
      lastUpdated: lastUpdated,
    );
  }

// ignore: unused_element
  ReutilizationModel fromJson(Map<String, Object> json) {
    return ReutilizationModel.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $ReutilizationModel = _$ReutilizationModelTearOff();

/// @nodoc
mixin _$ReutilizationModel {
  @JsonKey(name: "reutilization_id")
  int get reutilizationId;
  @JsonKey(name: "last_updated")
  @nullable
  DateTime get lastUpdated;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $ReutilizationModelCopyWith<ReutilizationModel> get copyWith;
}

/// @nodoc
abstract class $ReutilizationModelCopyWith<$Res> {
  factory $ReutilizationModelCopyWith(
          ReutilizationModel value, $Res Function(ReutilizationModel) then) =
      _$ReutilizationModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "reutilization_id") int reutilizationId,
      @JsonKey(name: "last_updated") @nullable DateTime lastUpdated});
}

/// @nodoc
class _$ReutilizationModelCopyWithImpl<$Res>
    implements $ReutilizationModelCopyWith<$Res> {
  _$ReutilizationModelCopyWithImpl(this._value, this._then);

  final ReutilizationModel _value;
  // ignore: unused_field
  final $Res Function(ReutilizationModel) _then;

  @override
  $Res call({
    Object reutilizationId = freezed,
    Object lastUpdated = freezed,
  }) {
    return _then(_value.copyWith(
      reutilizationId: reutilizationId == freezed
          ? _value.reutilizationId
          : reutilizationId as int,
      lastUpdated:
          lastUpdated == freezed ? _value.lastUpdated : lastUpdated as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$ReutilizationModelCopyWith<$Res>
    implements $ReutilizationModelCopyWith<$Res> {
  factory _$ReutilizationModelCopyWith(
          _ReutilizationModel value, $Res Function(_ReutilizationModel) then) =
      __$ReutilizationModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "reutilization_id") int reutilizationId,
      @JsonKey(name: "last_updated") @nullable DateTime lastUpdated});
}

/// @nodoc
class __$ReutilizationModelCopyWithImpl<$Res>
    extends _$ReutilizationModelCopyWithImpl<$Res>
    implements _$ReutilizationModelCopyWith<$Res> {
  __$ReutilizationModelCopyWithImpl(
      _ReutilizationModel _value, $Res Function(_ReutilizationModel) _then)
      : super(_value, (v) => _then(v as _ReutilizationModel));

  @override
  _ReutilizationModel get _value => super._value as _ReutilizationModel;

  @override
  $Res call({
    Object reutilizationId = freezed,
    Object lastUpdated = freezed,
  }) {
    return _then(_ReutilizationModel(
      reutilizationId: reutilizationId == freezed
          ? _value.reutilizationId
          : reutilizationId as int,
      lastUpdated:
          lastUpdated == freezed ? _value.lastUpdated : lastUpdated as DateTime,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_ReutilizationModel implements _ReutilizationModel {
  const _$_ReutilizationModel(
      {@JsonKey(name: "reutilization_id") this.reutilizationId = 0,
      @JsonKey(name: "last_updated") @nullable this.lastUpdated})
      : assert(reutilizationId != null);

  factory _$_ReutilizationModel.fromJson(Map<String, dynamic> json) =>
      _$_$_ReutilizationModelFromJson(json);

  @override
  @JsonKey(name: "reutilization_id")
  final int reutilizationId;
  @override
  @JsonKey(name: "last_updated")
  @nullable
  final DateTime lastUpdated;

  @override
  String toString() {
    return 'ReutilizationModel(reutilizationId: $reutilizationId, lastUpdated: $lastUpdated)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ReutilizationModel &&
            (identical(other.reutilizationId, reutilizationId) ||
                const DeepCollectionEquality()
                    .equals(other.reutilizationId, reutilizationId)) &&
            (identical(other.lastUpdated, lastUpdated) ||
                const DeepCollectionEquality()
                    .equals(other.lastUpdated, lastUpdated)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(reutilizationId) ^
      const DeepCollectionEquality().hash(lastUpdated);

  @JsonKey(ignore: true)
  @override
  _$ReutilizationModelCopyWith<_ReutilizationModel> get copyWith =>
      __$ReutilizationModelCopyWithImpl<_ReutilizationModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ReutilizationModelToJson(this);
  }
}

abstract class _ReutilizationModel implements ReutilizationModel {
  const factory _ReutilizationModel(
          {@JsonKey(name: "reutilization_id") int reutilizationId,
          @JsonKey(name: "last_updated") @nullable DateTime lastUpdated}) =
      _$_ReutilizationModel;

  factory _ReutilizationModel.fromJson(Map<String, dynamic> json) =
      _$_ReutilizationModel.fromJson;

  @override
  @JsonKey(name: "reutilization_id")
  int get reutilizationId;
  @override
  @JsonKey(name: "last_updated")
  @nullable
  DateTime get lastUpdated;
  @override
  @JsonKey(ignore: true)
  _$ReutilizationModelCopyWith<_ReutilizationModel> get copyWith;
}
