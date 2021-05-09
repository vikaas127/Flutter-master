// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'production_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ProductionListTearOff {
  const _$ProductionListTearOff();

// ignore: unused_element
  _ProductionList call(
      {List<Production> productions = const <Production>[],
      bool loading = true}) {
    return _ProductionList(
      productions: productions,
      loading: loading,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ProductionList = _$ProductionListTearOff();

/// @nodoc
mixin _$ProductionList {
  List<Production> get productions;
  bool get loading;

  @JsonKey(ignore: true)
  $ProductionListCopyWith<ProductionList> get copyWith;
}

/// @nodoc
abstract class $ProductionListCopyWith<$Res> {
  factory $ProductionListCopyWith(
          ProductionList value, $Res Function(ProductionList) then) =
      _$ProductionListCopyWithImpl<$Res>;
  $Res call({List<Production> productions, bool loading});
}

/// @nodoc
class _$ProductionListCopyWithImpl<$Res>
    implements $ProductionListCopyWith<$Res> {
  _$ProductionListCopyWithImpl(this._value, this._then);

  final ProductionList _value;
  // ignore: unused_field
  final $Res Function(ProductionList) _then;

  @override
  $Res call({
    Object productions = freezed,
    Object loading = freezed,
  }) {
    return _then(_value.copyWith(
      productions: productions == freezed
          ? _value.productions
          : productions as List<Production>,
      loading: loading == freezed ? _value.loading : loading as bool,
    ));
  }
}

/// @nodoc
abstract class _$ProductionListCopyWith<$Res>
    implements $ProductionListCopyWith<$Res> {
  factory _$ProductionListCopyWith(
          _ProductionList value, $Res Function(_ProductionList) then) =
      __$ProductionListCopyWithImpl<$Res>;
  @override
  $Res call({List<Production> productions, bool loading});
}

/// @nodoc
class __$ProductionListCopyWithImpl<$Res>
    extends _$ProductionListCopyWithImpl<$Res>
    implements _$ProductionListCopyWith<$Res> {
  __$ProductionListCopyWithImpl(
      _ProductionList _value, $Res Function(_ProductionList) _then)
      : super(_value, (v) => _then(v as _ProductionList));

  @override
  _ProductionList get _value => super._value as _ProductionList;

  @override
  $Res call({
    Object productions = freezed,
    Object loading = freezed,
  }) {
    return _then(_ProductionList(
      productions: productions == freezed
          ? _value.productions
          : productions as List<Production>,
      loading: loading == freezed ? _value.loading : loading as bool,
    ));
  }
}

/// @nodoc
class _$_ProductionList implements _ProductionList {
  const _$_ProductionList(
      {this.productions = const <Production>[], this.loading = true})
      : assert(productions != null),
        assert(loading != null);

  @JsonKey(defaultValue: const <Production>[])
  @override
  final List<Production> productions;
  @JsonKey(defaultValue: true)
  @override
  final bool loading;

  @override
  String toString() {
    return 'ProductionList(productions: $productions, loading: $loading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ProductionList &&
            (identical(other.productions, productions) ||
                const DeepCollectionEquality()
                    .equals(other.productions, productions)) &&
            (identical(other.loading, loading) ||
                const DeepCollectionEquality().equals(other.loading, loading)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(productions) ^
      const DeepCollectionEquality().hash(loading);

  @JsonKey(ignore: true)
  @override
  _$ProductionListCopyWith<_ProductionList> get copyWith =>
      __$ProductionListCopyWithImpl<_ProductionList>(this, _$identity);
}

abstract class _ProductionList implements ProductionList {
  const factory _ProductionList({List<Production> productions, bool loading}) =
      _$_ProductionList;

  @override
  List<Production> get productions;
  @override
  bool get loading;
  @override
  @JsonKey(ignore: true)
  _$ProductionListCopyWith<_ProductionList> get copyWith;
}
