// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'warehouse_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$WarehouseListTearOff {
  const _$WarehouseListTearOff();

// ignore: unused_element
  _WarehouseList call(
      {List<WarehouseModel> warehouses = const <WarehouseModel>[],
      bool loading = true}) {
    return _WarehouseList(
      warehouses: warehouses,
      loading: loading,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $WarehouseList = _$WarehouseListTearOff();

/// @nodoc
mixin _$WarehouseList {
  List<WarehouseModel> get warehouses;
  bool get loading;

  @JsonKey(ignore: true)
  $WarehouseListCopyWith<WarehouseList> get copyWith;
}

/// @nodoc
abstract class $WarehouseListCopyWith<$Res> {
  factory $WarehouseListCopyWith(
          WarehouseList value, $Res Function(WarehouseList) then) =
      _$WarehouseListCopyWithImpl<$Res>;
  $Res call({List<WarehouseModel> warehouses, bool loading});
}

/// @nodoc
class _$WarehouseListCopyWithImpl<$Res>
    implements $WarehouseListCopyWith<$Res> {
  _$WarehouseListCopyWithImpl(this._value, this._then);

  final WarehouseList _value;
  // ignore: unused_field
  final $Res Function(WarehouseList) _then;

  @override
  $Res call({
    Object warehouses = freezed,
    Object loading = freezed,
  }) {
    return _then(_value.copyWith(
      warehouses: warehouses == freezed
          ? _value.warehouses
          : warehouses as List<WarehouseModel>,
      loading: loading == freezed ? _value.loading : loading as bool,
    ));
  }
}

/// @nodoc
abstract class _$WarehouseListCopyWith<$Res>
    implements $WarehouseListCopyWith<$Res> {
  factory _$WarehouseListCopyWith(
          _WarehouseList value, $Res Function(_WarehouseList) then) =
      __$WarehouseListCopyWithImpl<$Res>;
  @override
  $Res call({List<WarehouseModel> warehouses, bool loading});
}

/// @nodoc
class __$WarehouseListCopyWithImpl<$Res>
    extends _$WarehouseListCopyWithImpl<$Res>
    implements _$WarehouseListCopyWith<$Res> {
  __$WarehouseListCopyWithImpl(
      _WarehouseList _value, $Res Function(_WarehouseList) _then)
      : super(_value, (v) => _then(v as _WarehouseList));

  @override
  _WarehouseList get _value => super._value as _WarehouseList;

  @override
  $Res call({
    Object warehouses = freezed,
    Object loading = freezed,
  }) {
    return _then(_WarehouseList(
      warehouses: warehouses == freezed
          ? _value.warehouses
          : warehouses as List<WarehouseModel>,
      loading: loading == freezed ? _value.loading : loading as bool,
    ));
  }
}

/// @nodoc
class _$_WarehouseList implements _WarehouseList {
  const _$_WarehouseList(
      {this.warehouses = const <WarehouseModel>[], this.loading = true})
      : assert(warehouses != null),
        assert(loading != null);

  @JsonKey(defaultValue: const <WarehouseModel>[])
  @override
  final List<WarehouseModel> warehouses;
  @JsonKey(defaultValue: true)
  @override
  final bool loading;

  @override
  String toString() {
    return 'WarehouseList(warehouses: $warehouses, loading: $loading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WarehouseList &&
            (identical(other.warehouses, warehouses) ||
                const DeepCollectionEquality()
                    .equals(other.warehouses, warehouses)) &&
            (identical(other.loading, loading) ||
                const DeepCollectionEquality().equals(other.loading, loading)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(warehouses) ^
      const DeepCollectionEquality().hash(loading);

  @JsonKey(ignore: true)
  @override
  _$WarehouseListCopyWith<_WarehouseList> get copyWith =>
      __$WarehouseListCopyWithImpl<_WarehouseList>(this, _$identity);
}

abstract class _WarehouseList implements WarehouseList {
  const factory _WarehouseList(
      {List<WarehouseModel> warehouses, bool loading}) = _$_WarehouseList;

  @override
  List<WarehouseModel> get warehouses;
  @override
  bool get loading;
  @override
  @JsonKey(ignore: true)
  _$WarehouseListCopyWith<_WarehouseList> get copyWith;
}
