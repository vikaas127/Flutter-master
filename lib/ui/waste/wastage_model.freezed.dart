// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'wastage_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
WastageModel _$WastageModelFromJson(Map<String, dynamic> json) {
  return _WastageModel.fromJson(json);
}

/// @nodoc
class _$WastageModelTearOff {
  const _$WastageModelTearOff();

// ignore: unused_element
  _WastageModel call(
      {@JsonKey(name: "wastage_id") int wastageId = 0,
      @JsonKey(name: "goods_id") int goodsId = 0,
      @JsonKey(name: "tag") String tag = '',
      @JsonKey(name: "last_updated") @nullable DateTime lastUpdated}) {
    return _WastageModel(
      wastageId: wastageId,
      goodsId: goodsId,
      tag: tag,
      lastUpdated: lastUpdated,
    );
  }

// ignore: unused_element
  WastageModel fromJson(Map<String, Object> json) {
    return WastageModel.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $WastageModel = _$WastageModelTearOff();

/// @nodoc
mixin _$WastageModel {
  @JsonKey(name: "wastage_id")
  int get wastageId;
  @JsonKey(name: "goods_id")
  int get goodsId;
  @JsonKey(name: "tag")
  String get tag;
  @JsonKey(name: "last_updated")
  @nullable
  DateTime get lastUpdated;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $WastageModelCopyWith<WastageModel> get copyWith;
}

/// @nodoc
abstract class $WastageModelCopyWith<$Res> {
  factory $WastageModelCopyWith(
          WastageModel value, $Res Function(WastageModel) then) =
      _$WastageModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "wastage_id") int wastageId,
      @JsonKey(name: "goods_id") int goodsId,
      @JsonKey(name: "tag") String tag,
      @JsonKey(name: "last_updated") @nullable DateTime lastUpdated});
}

/// @nodoc
class _$WastageModelCopyWithImpl<$Res> implements $WastageModelCopyWith<$Res> {
  _$WastageModelCopyWithImpl(this._value, this._then);

  final WastageModel _value;
  // ignore: unused_field
  final $Res Function(WastageModel) _then;

  @override
  $Res call({
    Object wastageId = freezed,
    Object goodsId = freezed,
    Object tag = freezed,
    Object lastUpdated = freezed,
  }) {
    return _then(_value.copyWith(
      wastageId: wastageId == freezed ? _value.wastageId : wastageId as int,
      goodsId: goodsId == freezed ? _value.goodsId : goodsId as int,
      tag: tag == freezed ? _value.tag : tag as String,
      lastUpdated:
          lastUpdated == freezed ? _value.lastUpdated : lastUpdated as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$WastageModelCopyWith<$Res>
    implements $WastageModelCopyWith<$Res> {
  factory _$WastageModelCopyWith(
          _WastageModel value, $Res Function(_WastageModel) then) =
      __$WastageModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "wastage_id") int wastageId,
      @JsonKey(name: "goods_id") int goodsId,
      @JsonKey(name: "tag") String tag,
      @JsonKey(name: "last_updated") @nullable DateTime lastUpdated});
}

/// @nodoc
class __$WastageModelCopyWithImpl<$Res> extends _$WastageModelCopyWithImpl<$Res>
    implements _$WastageModelCopyWith<$Res> {
  __$WastageModelCopyWithImpl(
      _WastageModel _value, $Res Function(_WastageModel) _then)
      : super(_value, (v) => _then(v as _WastageModel));

  @override
  _WastageModel get _value => super._value as _WastageModel;

  @override
  $Res call({
    Object wastageId = freezed,
    Object goodsId = freezed,
    Object tag = freezed,
    Object lastUpdated = freezed,
  }) {
    return _then(_WastageModel(
      wastageId: wastageId == freezed ? _value.wastageId : wastageId as int,
      goodsId: goodsId == freezed ? _value.goodsId : goodsId as int,
      tag: tag == freezed ? _value.tag : tag as String,
      lastUpdated:
          lastUpdated == freezed ? _value.lastUpdated : lastUpdated as DateTime,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_WastageModel implements _WastageModel {
  const _$_WastageModel(
      {@JsonKey(name: "wastage_id") this.wastageId = 0,
      @JsonKey(name: "goods_id") this.goodsId = 0,
      @JsonKey(name: "tag") this.tag = '',
      @JsonKey(name: "last_updated") @nullable this.lastUpdated})
      : assert(wastageId != null),
        assert(goodsId != null),
        assert(tag != null);

  factory _$_WastageModel.fromJson(Map<String, dynamic> json) =>
      _$_$_WastageModelFromJson(json);

  @override
  @JsonKey(name: "wastage_id")
  final int wastageId;
  @override
  @JsonKey(name: "goods_id")
  final int goodsId;
  @override
  @JsonKey(name: "tag")
  final String tag;
  @override
  @JsonKey(name: "last_updated")
  @nullable
  final DateTime lastUpdated;

  @override
  String toString() {
    return 'WastageModel(wastageId: $wastageId, goodsId: $goodsId, tag: $tag, lastUpdated: $lastUpdated)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WastageModel &&
            (identical(other.wastageId, wastageId) ||
                const DeepCollectionEquality()
                    .equals(other.wastageId, wastageId)) &&
            (identical(other.goodsId, goodsId) ||
                const DeepCollectionEquality()
                    .equals(other.goodsId, goodsId)) &&
            (identical(other.tag, tag) ||
                const DeepCollectionEquality().equals(other.tag, tag)) &&
            (identical(other.lastUpdated, lastUpdated) ||
                const DeepCollectionEquality()
                    .equals(other.lastUpdated, lastUpdated)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(wastageId) ^
      const DeepCollectionEquality().hash(goodsId) ^
      const DeepCollectionEquality().hash(tag) ^
      const DeepCollectionEquality().hash(lastUpdated);

  @JsonKey(ignore: true)
  @override
  _$WastageModelCopyWith<_WastageModel> get copyWith =>
      __$WastageModelCopyWithImpl<_WastageModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_WastageModelToJson(this);
  }
}

abstract class _WastageModel implements WastageModel {
  const factory _WastageModel(
          {@JsonKey(name: "wastage_id") int wastageId,
          @JsonKey(name: "goods_id") int goodsId,
          @JsonKey(name: "tag") String tag,
          @JsonKey(name: "last_updated") @nullable DateTime lastUpdated}) =
      _$_WastageModel;

  factory _WastageModel.fromJson(Map<String, dynamic> json) =
      _$_WastageModel.fromJson;

  @override
  @JsonKey(name: "wastage_id")
  int get wastageId;
  @override
  @JsonKey(name: "goods_id")
  int get goodsId;
  @override
  @JsonKey(name: "tag")
  String get tag;
  @override
  @JsonKey(name: "last_updated")
  @nullable
  DateTime get lastUpdated;
  @override
  @JsonKey(ignore: true)
  _$WastageModelCopyWith<_WastageModel> get copyWith;
}
