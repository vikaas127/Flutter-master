// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'printing_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$PrintingListModelTearOff {
  const _$PrintingListModelTearOff();

// ignore: unused_element
  _PrintingListModel call(
      {List<Printing> printings = const <Printing>[], bool loading = true}) {
    return _PrintingListModel(
      printings: printings,
      loading: loading,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $PrintingListModel = _$PrintingListModelTearOff();

/// @nodoc
mixin _$PrintingListModel {
  List<Printing> get printings;
  bool get loading;

  @JsonKey(ignore: true)
  $PrintingListModelCopyWith<PrintingListModel> get copyWith;
}

/// @nodoc
abstract class $PrintingListModelCopyWith<$Res> {
  factory $PrintingListModelCopyWith(
          PrintingListModel value, $Res Function(PrintingListModel) then) =
      _$PrintingListModelCopyWithImpl<$Res>;
  $Res call({List<Printing> printings, bool loading});
}

/// @nodoc
class _$PrintingListModelCopyWithImpl<$Res>
    implements $PrintingListModelCopyWith<$Res> {
  _$PrintingListModelCopyWithImpl(this._value, this._then);

  final PrintingListModel _value;
  // ignore: unused_field
  final $Res Function(PrintingListModel) _then;

  @override
  $Res call({
    Object printings = freezed,
    Object loading = freezed,
  }) {
    return _then(_value.copyWith(
      printings:
          printings == freezed ? _value.printings : printings as List<Printing>,
      loading: loading == freezed ? _value.loading : loading as bool,
    ));
  }
}

/// @nodoc
abstract class _$PrintingListModelCopyWith<$Res>
    implements $PrintingListModelCopyWith<$Res> {
  factory _$PrintingListModelCopyWith(
          _PrintingListModel value, $Res Function(_PrintingListModel) then) =
      __$PrintingListModelCopyWithImpl<$Res>;
  @override
  $Res call({List<Printing> printings, bool loading});
}

/// @nodoc
class __$PrintingListModelCopyWithImpl<$Res>
    extends _$PrintingListModelCopyWithImpl<$Res>
    implements _$PrintingListModelCopyWith<$Res> {
  __$PrintingListModelCopyWithImpl(
      _PrintingListModel _value, $Res Function(_PrintingListModel) _then)
      : super(_value, (v) => _then(v as _PrintingListModel));

  @override
  _PrintingListModel get _value => super._value as _PrintingListModel;

  @override
  $Res call({
    Object printings = freezed,
    Object loading = freezed,
  }) {
    return _then(_PrintingListModel(
      printings:
          printings == freezed ? _value.printings : printings as List<Printing>,
      loading: loading == freezed ? _value.loading : loading as bool,
    ));
  }
}

/// @nodoc
class _$_PrintingListModel implements _PrintingListModel {
  const _$_PrintingListModel(
      {this.printings = const <Printing>[], this.loading = true})
      : assert(printings != null),
        assert(loading != null);

  @JsonKey(defaultValue: const <Printing>[])
  @override
  final List<Printing> printings;
  @JsonKey(defaultValue: true)
  @override
  final bool loading;

  @override
  String toString() {
    return 'PrintingListModel(printings: $printings, loading: $loading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PrintingListModel &&
            (identical(other.printings, printings) ||
                const DeepCollectionEquality()
                    .equals(other.printings, printings)) &&
            (identical(other.loading, loading) ||
                const DeepCollectionEquality().equals(other.loading, loading)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(printings) ^
      const DeepCollectionEquality().hash(loading);

  @JsonKey(ignore: true)
  @override
  _$PrintingListModelCopyWith<_PrintingListModel> get copyWith =>
      __$PrintingListModelCopyWithImpl<_PrintingListModel>(this, _$identity);
}

abstract class _PrintingListModel implements PrintingListModel {
  const factory _PrintingListModel({List<Printing> printings, bool loading}) =
      _$_PrintingListModel;

  @override
  List<Printing> get printings;
  @override
  bool get loading;
  @override
  @JsonKey(ignore: true)
  _$PrintingListModelCopyWith<_PrintingListModel> get copyWith;
}
