// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'supplier_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$SupplierListTearOff {
  const _$SupplierListTearOff();

// ignore: unused_element
  _SupplierList call(
      {List<SupplierModel> suppliers = const <SupplierModel>[],
      bool loading = true}) {
    return _SupplierList(
      suppliers: suppliers,
      loading: loading,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SupplierList = _$SupplierListTearOff();

/// @nodoc
mixin _$SupplierList {
  List<SupplierModel> get suppliers;
  bool get loading;

  @JsonKey(ignore: true)
  $SupplierListCopyWith<SupplierList> get copyWith;
}

/// @nodoc
abstract class $SupplierListCopyWith<$Res> {
  factory $SupplierListCopyWith(
          SupplierList value, $Res Function(SupplierList) then) =
      _$SupplierListCopyWithImpl<$Res>;
  $Res call({List<SupplierModel> suppliers, bool loading});
}

/// @nodoc
class _$SupplierListCopyWithImpl<$Res> implements $SupplierListCopyWith<$Res> {
  _$SupplierListCopyWithImpl(this._value, this._then);

  final SupplierList _value;
  // ignore: unused_field
  final $Res Function(SupplierList) _then;

  @override
  $Res call({
    Object suppliers = freezed,
    Object loading = freezed,
  }) {
    return _then(_value.copyWith(
      suppliers: suppliers == freezed
          ? _value.suppliers
          : suppliers as List<SupplierModel>,
      loading: loading == freezed ? _value.loading : loading as bool,
    ));
  }
}

/// @nodoc
abstract class _$SupplierListCopyWith<$Res>
    implements $SupplierListCopyWith<$Res> {
  factory _$SupplierListCopyWith(
          _SupplierList value, $Res Function(_SupplierList) then) =
      __$SupplierListCopyWithImpl<$Res>;
  @override
  $Res call({List<SupplierModel> suppliers, bool loading});
}

/// @nodoc
class __$SupplierListCopyWithImpl<$Res> extends _$SupplierListCopyWithImpl<$Res>
    implements _$SupplierListCopyWith<$Res> {
  __$SupplierListCopyWithImpl(
      _SupplierList _value, $Res Function(_SupplierList) _then)
      : super(_value, (v) => _then(v as _SupplierList));

  @override
  _SupplierList get _value => super._value as _SupplierList;

  @override
  $Res call({
    Object suppliers = freezed,
    Object loading = freezed,
  }) {
    return _then(_SupplierList(
      suppliers: suppliers == freezed
          ? _value.suppliers
          : suppliers as List<SupplierModel>,
      loading: loading == freezed ? _value.loading : loading as bool,
    ));
  }
}

/// @nodoc
class _$_SupplierList implements _SupplierList {
  const _$_SupplierList(
      {this.suppliers = const <SupplierModel>[], this.loading = true})
      : assert(suppliers != null),
        assert(loading != null);

  @JsonKey(defaultValue: const <SupplierModel>[])
  @override
  final List<SupplierModel> suppliers;
  @JsonKey(defaultValue: true)
  @override
  final bool loading;

  @override
  String toString() {
    return 'SupplierList(suppliers: $suppliers, loading: $loading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SupplierList &&
            (identical(other.suppliers, suppliers) ||
                const DeepCollectionEquality()
                    .equals(other.suppliers, suppliers)) &&
            (identical(other.loading, loading) ||
                const DeepCollectionEquality().equals(other.loading, loading)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(suppliers) ^
      const DeepCollectionEquality().hash(loading);

  @JsonKey(ignore: true)
  @override
  _$SupplierListCopyWith<_SupplierList> get copyWith =>
      __$SupplierListCopyWithImpl<_SupplierList>(this, _$identity);
}

abstract class _SupplierList implements SupplierList {
  const factory _SupplierList({List<SupplierModel> suppliers, bool loading}) =
      _$_SupplierList;

  @override
  List<SupplierModel> get suppliers;
  @override
  bool get loading;
  @override
  @JsonKey(ignore: true)
  _$SupplierListCopyWith<_SupplierList> get copyWith;
}
