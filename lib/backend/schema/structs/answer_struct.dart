// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class AnswerStruct extends FFFirebaseStruct {
  AnswerStruct({
    String? text,
    String? imageUrl,
    String? video,
    String? type,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _text = text,
        _imageUrl = imageUrl,
        _video = video,
        _type = type,
        super(firestoreUtilData);

  // "text" field.
  String? _text;
  String get text => _text ?? '';
  set text(String? val) => _text = val;

  bool hasText() => _text != null;

  // "image_url" field.
  String? _imageUrl;
  String get imageUrl => _imageUrl ?? '';
  set imageUrl(String? val) => _imageUrl = val;

  bool hasImageUrl() => _imageUrl != null;

  // "video" field.
  String? _video;
  String get video => _video ?? '';
  set video(String? val) => _video = val;

  bool hasVideo() => _video != null;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  set type(String? val) => _type = val;

  bool hasType() => _type != null;

  static AnswerStruct fromMap(Map<String, dynamic> data) => AnswerStruct(
        text: data['text'] as String?,
        imageUrl: data['image_url'] as String?,
        video: data['video'] as String?,
        type: data['type'] as String?,
      );

  static AnswerStruct? maybeFromMap(dynamic data) =>
      data is Map ? AnswerStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'text': _text,
        'image_url': _imageUrl,
        'video': _video,
        'type': _type,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'text': serializeParam(
          _text,
          ParamType.String,
        ),
        'image_url': serializeParam(
          _imageUrl,
          ParamType.String,
        ),
        'video': serializeParam(
          _video,
          ParamType.String,
        ),
        'type': serializeParam(
          _type,
          ParamType.String,
        ),
      }.withoutNulls;

  static AnswerStruct fromSerializableMap(Map<String, dynamic> data) =>
      AnswerStruct(
        text: deserializeParam(
          data['text'],
          ParamType.String,
          false,
        ),
        imageUrl: deserializeParam(
          data['image_url'],
          ParamType.String,
          false,
        ),
        video: deserializeParam(
          data['video'],
          ParamType.String,
          false,
        ),
        type: deserializeParam(
          data['type'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'AnswerStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AnswerStruct &&
        text == other.text &&
        imageUrl == other.imageUrl &&
        video == other.video &&
        type == other.type;
  }

  @override
  int get hashCode => const ListEquality().hash([text, imageUrl, video, type]);
}

AnswerStruct createAnswerStruct({
  String? text,
  String? imageUrl,
  String? video,
  String? type,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    AnswerStruct(
      text: text,
      imageUrl: imageUrl,
      video: video,
      type: type,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

AnswerStruct? updateAnswerStruct(
  AnswerStruct? answer, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    answer
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addAnswerStructData(
  Map<String, dynamic> firestoreData,
  AnswerStruct? answer,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (answer == null) {
    return;
  }
  if (answer.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && answer.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final answerData = getAnswerFirestoreData(answer, forFieldValue);
  final nestedData = answerData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = answer.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getAnswerFirestoreData(
  AnswerStruct? answer, [
  bool forFieldValue = false,
]) {
  if (answer == null) {
    return {};
  }
  final firestoreData = mapToFirestore(answer.toMap());

  // Add any Firestore field values
  answer.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getAnswerListFirestoreData(
  List<AnswerStruct>? answers,
) =>
    answers?.map((e) => getAnswerFirestoreData(e, true)).toList() ?? [];
