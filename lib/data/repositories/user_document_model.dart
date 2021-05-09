import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_document_model.freezed.dart';
part 'user_document_model.g.dart';

@freezed
abstract class UserDocument with _$UserDocument {
  factory UserDocument({
    @required String mid,
    @required String displayName,
    @required String pictureUrl,
  }) = _UserDocument;
  factory UserDocument.fromJson(Map<String, dynamic> json) =>
      _$UserDocumentFromJson(json);
}
