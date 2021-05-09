// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'warehouse_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$MachineListTearOff {
  const _$MachineListTearOff();

// ignore: unused_element
  _MachineList call(
      {List<MachineModel> machines = const <MachineModel>[],
      bool loading = true}) {
    return _MachineList(
      machines: machines,
      loading: loading,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $MachineList = _$MachineListTearOff();

/// @nodoc
mixin _$MachineList {
  List<MachineModel> get machines;
  bool get loading;

  @JsonKey(ignore: true)
  $MachineListCopyWith<MachineList> get copyWith;
}

/// @nodoc
abstract class $MachineListCopyWith<$Res> {
  factory $MachineListCopyWith(
          MachineList value, $Res Function(MachineList) then) =
      _$MachineListCopyWithImpl<$Res>;
  $Res call({List<MachineModel> machines, bool loading});
}

/// @nodoc
class _$MachineListCopyWithImpl<$Res> implements $MachineListCopyWith<$Res> {
  _$MachineListCopyWithImpl(this._value, this._then);

  final MachineList _value;
  // ignore: unused_field
  final $Res Function(MachineList) _then;

  @override
  $Res call({
    Object machines = freezed,
    Object loading = freezed,
  }) {
    return _then(_value.copyWith(
      machines: machines == freezed
          ? _value.machines
          : machines as List<MachineModel>,
      loading: loading == freezed ? _value.loading : loading as bool,
    ));
  }
}

/// @nodoc
abstract class _$MachineListCopyWith<$Res>
    implements $MachineListCopyWith<$Res> {
  factory _$MachineListCopyWith(
          _MachineList value, $Res Function(_MachineList) then) =
      __$MachineListCopyWithImpl<$Res>;
  @override
  $Res call({List<MachineModel> machines, bool loading});
}

/// @nodoc
class __$MachineListCopyWithImpl<$Res> extends _$MachineListCopyWithImpl<$Res>
    implements _$MachineListCopyWith<$Res> {
  __$MachineListCopyWithImpl(
      _MachineList _value, $Res Function(_MachineList) _then)
      : super(_value, (v) => _then(v as _MachineList));

  @override
  _MachineList get _value => super._value as _MachineList;

  @override
  $Res call({
    Object machines = freezed,
    Object loading = freezed,
  }) {
    return _then(_MachineList(
      machines: machines == freezed
          ? _value.machines
          : machines as List<MachineModel>,
      loading: loading == freezed ? _value.loading : loading as bool,
    ));
  }
}

/// @nodoc
class _$_MachineList implements _MachineList {
  const _$_MachineList(
      {this.machines = const <MachineModel>[], this.loading = true})
      : assert(machines != null),
        assert(loading != null);

  @JsonKey(defaultValue: const <MachineModel>[])
  @override
  final List<MachineModel> machines;
  @JsonKey(defaultValue: true)
  @override
  final bool loading;

  @override
  String toString() {
    return 'MachineList(machines: $machines, loading: $loading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MachineList &&
            (identical(other.machines, machines) ||
                const DeepCollectionEquality()
                    .equals(other.machines, machines)) &&
            (identical(other.loading, loading) ||
                const DeepCollectionEquality().equals(other.loading, loading)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(machines) ^
      const DeepCollectionEquality().hash(loading);

  @JsonKey(ignore: true)
  @override
  _$MachineListCopyWith<_MachineList> get copyWith =>
      __$MachineListCopyWithImpl<_MachineList>(this, _$identity);
}

abstract class _MachineList implements MachineList {
  const factory _MachineList({List<MachineModel> machines, bool loading}) =
      _$_MachineList;

  @override
  List<MachineModel> get machines;
  @override
  bool get loading;
  @override
  @JsonKey(ignore: true)
  _$MachineListCopyWith<_MachineList> get copyWith;
}
