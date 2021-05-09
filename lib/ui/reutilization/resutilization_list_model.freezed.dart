// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'resutilization_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ReutilizationListTearOff {
  const _$ReutilizationListTearOff();

// ignore: unused_element
  _ReutilizationList call(
      {List<ReutilizationModel> reutiization = const <ReutilizationModel>[],
      bool loading = true}) {
    return _ReutilizationList(
      reutiization: reutiization,
      loading: loading,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ReutilizationList = _$ReutilizationListTearOff();

/// @nodoc
mixin _$ReutilizationList {
  List<ReutilizationModel> get reutiization;
  bool get loading;

  @JsonKey(ignore: true)
  $ReutilizationListCopyWith<ReutilizationList> get copyWith;
}

/// @nodoc
abstract class $ReutilizationListCopyWith<$Res> {
  factory $ReutilizationListCopyWith(
          ReutilizationList value, $Res Function(ReutilizationList) then) =
      _$ReutilizationListCopyWithImpl<$Res>;
  $Res call({List<ReutilizationModel> reutiization, bool loading});
}

/// @nodoc
class _$ReutilizationListCopyWithImpl<$Res>
    implements $ReutilizationListCopyWith<$Res> {
  _$ReutilizationListCopyWithImpl(this._value, this._then);

  final ReutilizationList _value;
  // ignore: unused_field
  final $Res Function(ReutilizationList) _then;

  @override
  $Res call({
    Object reutiization = freezed,
    Object loading = freezed,
  }) {
    return _then(_value.copyWith(
      reutiization: reutiization == freezed
          ? _value.reutiization
          : reutiization as List<ReutilizationModel>,
      loading: loading == freezed ? _value.loading : loading as bool,
    ));
  }
}

/// @nodoc
abstract class _$ReutilizationListCopyWith<$Res>
    implements $ReutilizationListCopyWith<$Res> {
  factory _$ReutilizationListCopyWith(
          _ReutilizationList value, $Res Function(_ReutilizationList) then) =
      __$ReutilizationListCopyWithImpl<$Res>;
  @override
  $Res call({List<ReutilizationModel> reutiization, bool loading});
}

/// @nodoc
class __$ReutilizationListCopyWithImpl<$Res>
    extends _$ReutilizationListCopyWithImpl<$Res>
    implements _$ReutilizationListCopyWith<$Res> {
  __$ReutilizationListCopyWithImpl(
      _ReutilizationList _value, $Res Function(_ReutilizationList) _then)
      : super(_value, (v) => _then(v as _ReutilizationList));

  @override
  _ReutilizationList get _value => super._value as _ReutilizationList;

  @override
  $Res call({
    Object reutiization = freezed,
    Object loading = freezed,
  }) {
    return _then(_ReutilizationList(
      reutiization: reutiization == freezed
          ? _value.reutiization
          : reutiization as List<ReutilizationModel>,
      loading: loading == freezed ? _value.loading : loading as bool,
    ));
  }
}

/// @nodoc
class _$_ReutilizationList implements _ReutilizationList {
  const _$_ReutilizationList(
      {this.reutiization = const <ReutilizationModel>[], this.loading = true})
      : assert(reutiization != null),
        assert(loading != null);

  @JsonKey(defaultValue: const <ReutilizationModel>[])
  @override
  final List<ReutilizationModel> reutiization;
  @JsonKey(defaultValue: true)
  @override
  final bool loading;

  @override
  String toString() {
    return 'ReutilizationList(reutiization: $reutiization, loading: $loading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ReutilizationList &&
            (identical(other.reutiization, reutiization) ||
                const DeepCollectionEquality()
                    .equals(other.reutiization, reutiization)) &&
            (identical(other.loading, loading) ||
                const DeepCollectionEquality().equals(other.loading, loading)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(reutiization) ^
      const DeepCollectionEquality().hash(loading);

  @JsonKey(ignore: true)
  @override
  _$ReutilizationListCopyWith<_ReutilizationList> get copyWith =>
      __$ReutilizationListCopyWithImpl<_ReutilizationList>(this, _$identity);
}

abstract class _ReutilizationList implements ReutilizationList {
  const factory _ReutilizationList(
      {List<ReutilizationModel> reutiization,
      bool loading}) = _$_ReutilizationList;

  @override
  List<ReutilizationModel> get reutiization;
  @override
  bool get loading;
  @override
  @JsonKey(ignore: true)
  _$ReutilizationListCopyWith<_ReutilizationList> get copyWith;
}
