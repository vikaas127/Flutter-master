// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'goods_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$GoodsListTearOff {
  const _$GoodsListTearOff();

// ignore: unused_element
  _GoodsList call(
      {List<GoodsModel> goods = const <GoodsModel>[], bool loading = true}) {
    return _GoodsList(
      goods: goods,
      loading: loading,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $GoodsList = _$GoodsListTearOff();

/// @nodoc
mixin _$GoodsList {
  List<GoodsModel> get goods;
  bool get loading;

  @JsonKey(ignore: true)
  $GoodsListCopyWith<GoodsList> get copyWith;
}

/// @nodoc
abstract class $GoodsListCopyWith<$Res> {
  factory $GoodsListCopyWith(GoodsList value, $Res Function(GoodsList) then) =
      _$GoodsListCopyWithImpl<$Res>;
  $Res call({List<GoodsModel> goods, bool loading});
}

/// @nodoc
class _$GoodsListCopyWithImpl<$Res> implements $GoodsListCopyWith<$Res> {
  _$GoodsListCopyWithImpl(this._value, this._then);

  final GoodsList _value;
  // ignore: unused_field
  final $Res Function(GoodsList) _then;

  @override
  $Res call({
    Object goods = freezed,
    Object loading = freezed,
  }) {
    return _then(_value.copyWith(
      goods: goods == freezed ? _value.goods : goods as List<GoodsModel>,
      loading: loading == freezed ? _value.loading : loading as bool,
    ));
  }
}

/// @nodoc
abstract class _$GoodsListCopyWith<$Res> implements $GoodsListCopyWith<$Res> {
  factory _$GoodsListCopyWith(
          _GoodsList value, $Res Function(_GoodsList) then) =
      __$GoodsListCopyWithImpl<$Res>;
  @override
  $Res call({List<GoodsModel> goods, bool loading});
}

/// @nodoc
class __$GoodsListCopyWithImpl<$Res> extends _$GoodsListCopyWithImpl<$Res>
    implements _$GoodsListCopyWith<$Res> {
  __$GoodsListCopyWithImpl(_GoodsList _value, $Res Function(_GoodsList) _then)
      : super(_value, (v) => _then(v as _GoodsList));

  @override
  _GoodsList get _value => super._value as _GoodsList;

  @override
  $Res call({
    Object goods = freezed,
    Object loading = freezed,
  }) {
    return _then(_GoodsList(
      goods: goods == freezed ? _value.goods : goods as List<GoodsModel>,
      loading: loading == freezed ? _value.loading : loading as bool,
    ));
  }
}

/// @nodoc
class _$_GoodsList implements _GoodsList {
  const _$_GoodsList({this.goods = const <GoodsModel>[], this.loading = true})
      : assert(goods != null),
        assert(loading != null);

  @JsonKey(defaultValue: const <GoodsModel>[])
  @override
  final List<GoodsModel> goods;
  @JsonKey(defaultValue: true)
  @override
  final bool loading;

  @override
  String toString() {
    return 'GoodsList(goods: $goods, loading: $loading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GoodsList &&
            (identical(other.goods, goods) ||
                const DeepCollectionEquality().equals(other.goods, goods)) &&
            (identical(other.loading, loading) ||
                const DeepCollectionEquality().equals(other.loading, loading)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(goods) ^
      const DeepCollectionEquality().hash(loading);

  @JsonKey(ignore: true)
  @override
  _$GoodsListCopyWith<_GoodsList> get copyWith =>
      __$GoodsListCopyWithImpl<_GoodsList>(this, _$identity);
}

abstract class _GoodsList implements GoodsList {
  const factory _GoodsList({List<GoodsModel> goods, bool loading}) =
      _$_GoodsList;

  @override
  List<GoodsModel> get goods;
  @override
  bool get loading;
  @override
  @JsonKey(ignore: true)
  _$GoodsListCopyWith<_GoodsList> get copyWith;
}
