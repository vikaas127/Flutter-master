// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'purchase_history_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$PurchaseHistoryTearOff {
  const _$PurchaseHistoryTearOff();

// ignore: unused_element
  _SupplierList call(
      {List<PurchaseListModel> purchases = const <PurchaseListModel>[],
      bool loading = true}) {
    return _SupplierList(
      purchases: purchases,
      loading: loading,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $PurchaseHistory = _$PurchaseHistoryTearOff();

/// @nodoc
mixin _$PurchaseHistory {
  List<PurchaseListModel> get purchases;
  bool get loading;

  @JsonKey(ignore: true)
  $PurchaseHistoryCopyWith<PurchaseHistory> get copyWith;
}

/// @nodoc
abstract class $PurchaseHistoryCopyWith<$Res> {
  factory $PurchaseHistoryCopyWith(
          PurchaseHistory value, $Res Function(PurchaseHistory) then) =
      _$PurchaseHistoryCopyWithImpl<$Res>;
  $Res call({List<PurchaseListModel> purchases, bool loading});
}

/// @nodoc
class _$PurchaseHistoryCopyWithImpl<$Res>
    implements $PurchaseHistoryCopyWith<$Res> {
  _$PurchaseHistoryCopyWithImpl(this._value, this._then);

  final PurchaseHistory _value;
  // ignore: unused_field
  final $Res Function(PurchaseHistory) _then;

  @override
  $Res call({
    Object purchases = freezed,
    Object loading = freezed,
  }) {
    return _then(_value.copyWith(
      purchases: purchases == freezed
          ? _value.purchases
          : purchases as List<PurchaseListModel>,
      loading: loading == freezed ? _value.loading : loading as bool,
    ));
  }
}

/// @nodoc
abstract class _$SupplierListCopyWith<$Res>
    implements $PurchaseHistoryCopyWith<$Res> {
  factory _$SupplierListCopyWith(
          _SupplierList value, $Res Function(_SupplierList) then) =
      __$SupplierListCopyWithImpl<$Res>;
  @override
  $Res call({List<PurchaseListModel> purchases, bool loading});
}

/// @nodoc
class __$SupplierListCopyWithImpl<$Res>
    extends _$PurchaseHistoryCopyWithImpl<$Res>
    implements _$SupplierListCopyWith<$Res> {
  __$SupplierListCopyWithImpl(
      _SupplierList _value, $Res Function(_SupplierList) _then)
      : super(_value, (v) => _then(v as _SupplierList));

  @override
  _SupplierList get _value => super._value as _SupplierList;

  @override
  $Res call({
    Object purchases = freezed,
    Object loading = freezed,
  }) {
    return _then(_SupplierList(
      purchases: purchases == freezed
          ? _value.purchases
          : purchases as List<PurchaseListModel>,
      loading: loading == freezed ? _value.loading : loading as bool,
    ));
  }
}

/// @nodoc
class _$_SupplierList implements _SupplierList {
  const _$_SupplierList(
      {this.purchases = const <PurchaseListModel>[], this.loading = true})
      : assert(purchases != null),
        assert(loading != null);

  @JsonKey(defaultValue: const <PurchaseListModel>[])
  @override
  final List<PurchaseListModel> purchases;
  @JsonKey(defaultValue: true)
  @override
  final bool loading;

  @override
  String toString() {
    return 'PurchaseHistory(purchases: $purchases, loading: $loading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SupplierList &&
            (identical(other.purchases, purchases) ||
                const DeepCollectionEquality()
                    .equals(other.purchases, purchases)) &&
            (identical(other.loading, loading) ||
                const DeepCollectionEquality().equals(other.loading, loading)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(purchases) ^
      const DeepCollectionEquality().hash(loading);

  @JsonKey(ignore: true)
  @override
  _$SupplierListCopyWith<_SupplierList> get copyWith =>
      __$SupplierListCopyWithImpl<_SupplierList>(this, _$identity);
}

abstract class _SupplierList implements PurchaseHistory {
  const factory _SupplierList(
      {List<PurchaseListModel> purchases, bool loading}) = _$_SupplierList;

  @override
  List<PurchaseListModel> get purchases;
  @override
  bool get loading;
  @override
  @JsonKey(ignore: true)
  _$SupplierListCopyWith<_SupplierList> get copyWith;
}
