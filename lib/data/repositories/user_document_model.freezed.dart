// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'user_document_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
UserDocument _$UserDocumentFromJson(Map<String, dynamic> json) {
  return _UserDocument.fromJson(json);
}

/// @nodoc
class _$UserDocumentTearOff {
  const _$UserDocumentTearOff();

// ignore: unused_element
  _UserDocument call(
      {@required String mid,
      @required String displayName,
      @required String pictureUrl}) {
    return _UserDocument(
      mid: mid,
      displayName: displayName,
      pictureUrl: pictureUrl,
    );
  }

// ignore: unused_element
  UserDocument fromJson(Map<String, Object> json) {
    return UserDocument.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $UserDocument = _$UserDocumentTearOff();

/// @nodoc
mixin _$UserDocument {
  String get mid;
  String get displayName;
  String get pictureUrl;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $UserDocumentCopyWith<UserDocument> get copyWith;
}

/// @nodoc
abstract class $UserDocumentCopyWith<$Res> {
  factory $UserDocumentCopyWith(
          UserDocument value, $Res Function(UserDocument) then) =
      _$UserDocumentCopyWithImpl<$Res>;
  $Res call({String mid, String displayName, String pictureUrl});
}

/// @nodoc
class _$UserDocumentCopyWithImpl<$Res> implements $UserDocumentCopyWith<$Res> {
  _$UserDocumentCopyWithImpl(this._value, this._then);

  final UserDocument _value;
  // ignore: unused_field
  final $Res Function(UserDocument) _then;

  @override
  $Res call({
    Object mid = freezed,
    Object displayName = freezed,
    Object pictureUrl = freezed,
  }) {
    return _then(_value.copyWith(
      mid: mid == freezed ? _value.mid : mid as String,
      displayName:
          displayName == freezed ? _value.displayName : displayName as String,
      pictureUrl:
          pictureUrl == freezed ? _value.pictureUrl : pictureUrl as String,
    ));
  }
}

/// @nodoc
abstract class _$UserDocumentCopyWith<$Res>
    implements $UserDocumentCopyWith<$Res> {
  factory _$UserDocumentCopyWith(
          _UserDocument value, $Res Function(_UserDocument) then) =
      __$UserDocumentCopyWithImpl<$Res>;
  @override
  $Res call({String mid, String displayName, String pictureUrl});
}

/// @nodoc
class __$UserDocumentCopyWithImpl<$Res> extends _$UserDocumentCopyWithImpl<$Res>
    implements _$UserDocumentCopyWith<$Res> {
  __$UserDocumentCopyWithImpl(
      _UserDocument _value, $Res Function(_UserDocument) _then)
      : super(_value, (v) => _then(v as _UserDocument));

  @override
  _UserDocument get _value => super._value as _UserDocument;

  @override
  $Res call({
    Object mid = freezed,
    Object displayName = freezed,
    Object pictureUrl = freezed,
  }) {
    return _then(_UserDocument(
      mid: mid == freezed ? _value.mid : mid as String,
      displayName:
          displayName == freezed ? _value.displayName : displayName as String,
      pictureUrl:
          pictureUrl == freezed ? _value.pictureUrl : pictureUrl as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_UserDocument implements _UserDocument {
  _$_UserDocument(
      {@required this.mid,
      @required this.displayName,
      @required this.pictureUrl})
      : assert(mid != null),
        assert(displayName != null),
        assert(pictureUrl != null);

  factory _$_UserDocument.fromJson(Map<String, dynamic> json) =>
      _$_$_UserDocumentFromJson(json);

  @override
  final String mid;
  @override
  final String displayName;
  @override
  final String pictureUrl;

  @override
  String toString() {
    return 'UserDocument(mid: $mid, displayName: $displayName, pictureUrl: $pictureUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserDocument &&
            (identical(other.mid, mid) ||
                const DeepCollectionEquality().equals(other.mid, mid)) &&
            (identical(other.displayName, displayName) ||
                const DeepCollectionEquality()
                    .equals(other.displayName, displayName)) &&
            (identical(other.pictureUrl, pictureUrl) ||
                const DeepCollectionEquality()
                    .equals(other.pictureUrl, pictureUrl)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(mid) ^
      const DeepCollectionEquality().hash(displayName) ^
      const DeepCollectionEquality().hash(pictureUrl);

  @JsonKey(ignore: true)
  @override
  _$UserDocumentCopyWith<_UserDocument> get copyWith =>
      __$UserDocumentCopyWithImpl<_UserDocument>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UserDocumentToJson(this);
  }
}

abstract class _UserDocument implements UserDocument {
  factory _UserDocument(
      {@required String mid,
      @required String displayName,
      @required String pictureUrl}) = _$_UserDocument;

  factory _UserDocument.fromJson(Map<String, dynamic> json) =
      _$_UserDocument.fromJson;

  @override
  String get mid;
  @override
  String get displayName;
  @override
  String get pictureUrl;
  @override
  @JsonKey(ignore: true)
  _$UserDocumentCopyWith<_UserDocument> get copyWith;
}
