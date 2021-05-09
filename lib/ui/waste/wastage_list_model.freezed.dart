// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'wastage_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$WastageListTearOff {
  const _$WastageListTearOff();

// ignore: unused_element
  _WastageList call(
      {List<WastageModel> wastage = const <WastageModel>[],
      bool loading = true}) {
    return _WastageList(
      wastage: wastage,
      loading: loading,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $WastageList = _$WastageListTearOff();

/// @nodoc
mixin _$WastageList {
  List<WastageModel> get wastage;
  bool get loading;

  @JsonKey(ignore: true)
  $WastageListCopyWith<WastageList> get copyWith;
}

/// @nodoc
abstract class $WastageListCopyWith<$Res> {
  factory $WastageListCopyWith(
          WastageList value, $Res Function(WastageList) then) =
      _$WastageListCopyWithImpl<$Res>;
  $Res call({List<WastageModel> wastage, bool loading});
}

/// @nodoc
class _$WastageListCopyWithImpl<$Res> implements $WastageListCopyWith<$Res> {
  _$WastageListCopyWithImpl(this._value, this._then);

  final WastageList _value;
  // ignore: unused_field
  final $Res Function(WastageList) _then;

  @override
  $Res call({
    Object wastage = freezed,
    Object loading = freezed,
  }) {
    return _then(_value.copyWith(
      wastage:
          wastage == freezed ? _value.wastage : wastage as List<WastageModel>,
      loading: loading == freezed ? _value.loading : loading as bool,
    ));
  }
}

/// @nodoc
abstract class _$WastageListCopyWith<$Res>
    implements $WastageListCopyWith<$Res> {
  factory _$WastageListCopyWith(
          _WastageList value, $Res Function(_WastageList) then) =
      __$WastageListCopyWithImpl<$Res>;
  @override
  $Res call({List<WastageModel> wastage, bool loading});
}

/// @nodoc
class __$WastageListCopyWithImpl<$Res> extends _$WastageListCopyWithImpl<$Res>
    implements _$WastageListCopyWith<$Res> {
  __$WastageListCopyWithImpl(
      _WastageList _value, $Res Function(_WastageList) _then)
      : super(_value, (v) => _then(v as _WastageList));

  @override
  _WastageList get _value => super._value as _WastageList;

  @override
  $Res call({
    Object wastage = freezed,
    Object loading = freezed,
  }) {
    return _then(_WastageList(
      wastage:
          wastage == freezed ? _value.wastage : wastage as List<WastageModel>,
      loading: loading == freezed ? _value.loading : loading as bool,
    ));
  }
}

/// @nodoc
class _$_WastageList implements _WastageList {
  const _$_WastageList(
      {this.wastage = const <WastageModel>[], this.loading = true})
      : assert(wastage != null),
        assert(loading != null);

  @JsonKey(defaultValue: const <WastageModel>[])
  @override
  final List<WastageModel> wastage;
  @JsonKey(defaultValue: true)
  @override
  final bool loading;

  @override
  String toString() {
    return 'WastageList(wastage: $wastage, loading: $loading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WastageList &&
            (identical(other.wastage, wastage) ||
                const DeepCollectionEquality()
                    .equals(other.wastage, wastage)) &&
            (identical(other.loading, loading) ||
                const DeepCollectionEquality().equals(other.loading, loading)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(wastage) ^
      const DeepCollectionEquality().hash(loading);

  @JsonKey(ignore: true)
  @override
  _$WastageListCopyWith<_WastageList> get copyWith =>
      __$WastageListCopyWithImpl<_WastageList>(this, _$identity);
}

abstract class _WastageList implements WastageList {
  const factory _WastageList({List<WastageModel> wastage, bool loading}) =
      _$_WastageList;

  @override
  List<WastageModel> get wastage;
  @override
  bool get loading;
  @override
  @JsonKey(ignore: true)
  _$WastageListCopyWith<_WastageList> get copyWith;
}
