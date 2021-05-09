// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'warehouse_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
WarehouseModel _$WarehouseModelFromJson(Map<String, dynamic> json) {
  return _WarehouseModel.fromJson(json);
}

/// @nodoc
class _$WarehouseModelTearOff {
  const _$WarehouseModelTearOff();

// ignore: unused_element
  _WarehouseModel call(
      {@JsonKey(name: "location_id") int locationId = 0,
      @JsonKey(name: "location_name") String locationName = '',
      @JsonKey(name: "description") String description = ''}) {
    return _WarehouseModel(
      locationId: locationId,
      locationName: locationName,
      description: description,
    );
  }

// ignore: unused_element
  WarehouseModel fromJson(Map<String, Object> json) {
    return WarehouseModel.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $WarehouseModel = _$WarehouseModelTearOff();

/// @nodoc
mixin _$WarehouseModel {
  @JsonKey(name: "location_id")
  int get locationId;
  @JsonKey(name: "location_name")
  String get locationName;
  @JsonKey(name: "description")
  String get description;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $WarehouseModelCopyWith<WarehouseModel> get copyWith;
}

/// @nodoc
abstract class $WarehouseModelCopyWith<$Res> {
  factory $WarehouseModelCopyWith(
          WarehouseModel value, $Res Function(WarehouseModel) then) =
      _$WarehouseModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "location_id") int locationId,
      @JsonKey(name: "location_name") String locationName,
      @JsonKey(name: "description") String description});
}

/// @nodoc
class _$WarehouseModelCopyWithImpl<$Res>
    implements $WarehouseModelCopyWith<$Res> {
  _$WarehouseModelCopyWithImpl(this._value, this._then);

  final WarehouseModel _value;
  // ignore: unused_field
  final $Res Function(WarehouseModel) _then;

  @override
  $Res call({
    Object locationId = freezed,
    Object locationName = freezed,
    Object description = freezed,
  }) {
    return _then(_value.copyWith(
      locationId: locationId == freezed ? _value.locationId : locationId as int,
      locationName: locationName == freezed
          ? _value.locationName
          : locationName as String,
      description:
          description == freezed ? _value.description : description as String,
    ));
  }
}

/// @nodoc
abstract class _$WarehouseModelCopyWith<$Res>
    implements $WarehouseModelCopyWith<$Res> {
  factory _$WarehouseModelCopyWith(
          _WarehouseModel value, $Res Function(_WarehouseModel) then) =
      __$WarehouseModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "location_id") int locationId,
      @JsonKey(name: "location_name") String locationName,
      @JsonKey(name: "description") String description});
}

/// @nodoc
class __$WarehouseModelCopyWithImpl<$Res>
    extends _$WarehouseModelCopyWithImpl<$Res>
    implements _$WarehouseModelCopyWith<$Res> {
  __$WarehouseModelCopyWithImpl(
      _WarehouseModel _value, $Res Function(_WarehouseModel) _then)
      : super(_value, (v) => _then(v as _WarehouseModel));

  @override
  _WarehouseModel get _value => super._value as _WarehouseModel;

  @override
  $Res call({
    Object locationId = freezed,
    Object locationName = freezed,
    Object description = freezed,
  }) {
    return _then(_WarehouseModel(
      locationId: locationId == freezed ? _value.locationId : locationId as int,
      locationName: locationName == freezed
          ? _value.locationName
          : locationName as String,
      description:
          description == freezed ? _value.description : description as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_WarehouseModel implements _WarehouseModel {
  const _$_WarehouseModel(
      {@JsonKey(name: "location_id") this.locationId = 0,
      @JsonKey(name: "location_name") this.locationName = '',
      @JsonKey(name: "description") this.description = ''});

  factory _$_WarehouseModel.fromJson(Map<String, dynamic> json) =>
      _$_$_WarehouseModelFromJson(json);

  @override
  @JsonKey(name: "location_id")
  final int locationId;
  @override
  @JsonKey(name: "location_name")
  final String locationName;
  @override
  @JsonKey(name: "description")
  final String description;

  @override
  String toString() {
    return 'WarehouseModel(locationId: $locationId, locationName: $locationName, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WarehouseModel &&
            (identical(other.locationId, locationId) ||
                const DeepCollectionEquality()
                    .equals(other.locationId, locationId)) &&
            (identical(other.locationName, locationName) ||
                const DeepCollectionEquality()
                    .equals(other.locationName, locationName)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(locationId) ^
      const DeepCollectionEquality().hash(locationName) ^
      const DeepCollectionEquality().hash(description);

  @JsonKey(ignore: true)
  @override
  _$WarehouseModelCopyWith<_WarehouseModel> get copyWith =>
      __$WarehouseModelCopyWithImpl<_WarehouseModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_WarehouseModelToJson(this);
  }
}

abstract class _WarehouseModel implements WarehouseModel {
  const factory _WarehouseModel(
      {@JsonKey(name: "location_id") int locationId,
      @JsonKey(name: "location_name") String locationName,
      @JsonKey(name: "description") String description}) = _$_WarehouseModel;

  factory _WarehouseModel.fromJson(Map<String, dynamic> json) =
      _$_WarehouseModel.fromJson;

  @override
  @JsonKey(name: "location_id")
  int get locationId;
  @override
  @JsonKey(name: "location_name")
  String get locationName;
  @override
  @JsonKey(name: "description")
  String get description;
  @override
  @JsonKey(ignore: true)
  _$WarehouseModelCopyWith<_WarehouseModel> get copyWith;
}
