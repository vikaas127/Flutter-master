// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'buyer_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$BuyerListTearOff {
  const _$BuyerListTearOff();

// ignore: unused_element
  _BuyerList call(
      {List<BuyerModel> buyers = const <BuyerModel>[], bool loading = true}) {
    return _BuyerList(
      buyers: buyers,
      loading: loading,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $BuyerList = _$BuyerListTearOff();

/// @nodoc
mixin _$BuyerList {
  List<BuyerModel> get buyers;
  bool get loading;

  @JsonKey(ignore: true)
  $BuyerListCopyWith<BuyerList> get copyWith;
}

/// @nodoc
abstract class $BuyerListCopyWith<$Res> {
  factory $BuyerListCopyWith(BuyerList value, $Res Function(BuyerList) then) =
      _$BuyerListCopyWithImpl<$Res>;
  $Res call({List<BuyerModel> buyers, bool loading});
}

/// @nodoc
class _$BuyerListCopyWithImpl<$Res> implements $BuyerListCopyWith<$Res> {
  _$BuyerListCopyWithImpl(this._value, this._then);

  final BuyerList _value;
  // ignore: unused_field
  final $Res Function(BuyerList) _then;

  @override
  $Res call({
    Object buyers = freezed,
    Object loading = freezed,
  }) {
    return _then(_value.copyWith(
      buyers: buyers == freezed ? _value.buyers : buyers as List<BuyerModel>,
      loading: loading == freezed ? _value.loading : loading as bool,
    ));
  }
}

/// @nodoc
abstract class _$BuyerListCopyWith<$Res> implements $BuyerListCopyWith<$Res> {
  factory _$BuyerListCopyWith(
          _BuyerList value, $Res Function(_BuyerList) then) =
      __$BuyerListCopyWithImpl<$Res>;
  @override
  $Res call({List<BuyerModel> buyers, bool loading});
}

/// @nodoc
class __$BuyerListCopyWithImpl<$Res> extends _$BuyerListCopyWithImpl<$Res>
    implements _$BuyerListCopyWith<$Res> {
  __$BuyerListCopyWithImpl(_BuyerList _value, $Res Function(_BuyerList) _then)
      : super(_value, (v) => _then(v as _BuyerList));

  @override
  _BuyerList get _value => super._value as _BuyerList;

  @override
  $Res call({
    Object buyers = freezed,
    Object loading = freezed,
  }) {
    return _then(_BuyerList(
      buyers: buyers == freezed ? _value.buyers : buyers as List<BuyerModel>,
      loading: loading == freezed ? _value.loading : loading as bool,
    ));
  }
}

/// @nodoc
class _$_BuyerList implements _BuyerList {
  const _$_BuyerList({this.buyers = const <BuyerModel>[], this.loading = true})
      : assert(buyers != null),
        assert(loading != null);

  @JsonKey(defaultValue: const <BuyerModel>[])
  @override
  final List<BuyerModel> buyers;
  @JsonKey(defaultValue: true)
  @override
  final bool loading;

  @override
  String toString() {
    return 'BuyerList(buyers: $buyers, loading: $loading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BuyerList &&
            (identical(other.buyers, buyers) ||
                const DeepCollectionEquality().equals(other.buyers, buyers)) &&
            (identical(other.loading, loading) ||
                const DeepCollectionEquality().equals(other.loading, loading)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(buyers) ^
      const DeepCollectionEquality().hash(loading);

  @JsonKey(ignore: true)
  @override
  _$BuyerListCopyWith<_BuyerList> get copyWith =>
      __$BuyerListCopyWithImpl<_BuyerList>(this, _$identity);
}

abstract class _BuyerList implements BuyerList {
  const factory _BuyerList({List<BuyerModel> buyers, bool loading}) =
      _$_BuyerList;

  @override
  List<BuyerModel> get buyers;
  @override
  bool get loading;
  @override
  @JsonKey(ignore: true)
  _$BuyerListCopyWith<_BuyerList> get copyWith;
}
