// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class QuestionStruct extends FFFirebaseStruct {
  QuestionStruct({
    String? question,
    String? imageUrl,
    String? videoUrl,
    String? help,
    String? errorMessage,
    int? score,
    String? type,
    List<AnswerStruct>? answerList,
    int? answerCorrectIndex,
    bool? estado,
    int? order,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _question = question,
        _imageUrl = imageUrl,
        _videoUrl = videoUrl,
        _help = help,
        _errorMessage = errorMessage,
        _score = score,
        _type = type,
        _answerList = answerList,
        _answerCorrectIndex = answerCorrectIndex,
        _estado = estado,
        _order = order,
        super(firestoreUtilData);

  // "question" field.
  String? _question;
  String get question => _question ?? '';
  set question(String? val) => _question = val;

  bool hasQuestion() => _question != null;

  // "image_url" field.
  String? _imageUrl;
  String get imageUrl => _imageUrl ?? '';
  set imageUrl(String? val) => _imageUrl = val;

  bool hasImageUrl() => _imageUrl != null;

  // "video_url" field.
  String? _videoUrl;
  String get videoUrl => _videoUrl ?? '';
  set videoUrl(String? val) => _videoUrl = val;

  bool hasVideoUrl() => _videoUrl != null;

  // "help" field.
  String? _help;
  String get help => _help ?? '';
  set help(String? val) => _help = val;

  bool hasHelp() => _help != null;

  // "error_message" field.
  String? _errorMessage;
  String get errorMessage => _errorMessage ?? '';
  set errorMessage(String? val) => _errorMessage = val;

  bool hasErrorMessage() => _errorMessage != null;

  // "score" field.
  int? _score;
  int get score => _score ?? 0;
  set score(int? val) => _score = val;

  void incrementScore(int amount) => score = score + amount;

  bool hasScore() => _score != null;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  set type(String? val) => _type = val;

  bool hasType() => _type != null;

  // "answerList" field.
  List<AnswerStruct>? _answerList;
  List<AnswerStruct> get answerList => _answerList ?? const [];
  set answerList(List<AnswerStruct>? val) => _answerList = val;

  void updateAnswerList(Function(List<AnswerStruct>) updateFn) {
    updateFn(_answerList ??= []);
  }

  bool hasAnswerList() => _answerList != null;

  // "answerCorrectIndex" field.
  int? _answerCorrectIndex;
  int get answerCorrectIndex => _answerCorrectIndex ?? 0;
  set answerCorrectIndex(int? val) => _answerCorrectIndex = val;

  void incrementAnswerCorrectIndex(int amount) =>
      answerCorrectIndex = answerCorrectIndex + amount;

  bool hasAnswerCorrectIndex() => _answerCorrectIndex != null;

  // "estado" field.
  bool? _estado;
  bool get estado => _estado ?? false;
  set estado(bool? val) => _estado = val;

  bool hasEstado() => _estado != null;

  // "order" field.
  int? _order;
  int get order => _order ?? 0;
  set order(int? val) => _order = val;

  void incrementOrder(int amount) => order = order + amount;

  bool hasOrder() => _order != null;

  static QuestionStruct fromMap(Map<String, dynamic> data) => QuestionStruct(
        question: data['question'] as String?,
        imageUrl: data['image_url'] as String?,
        videoUrl: data['video_url'] as String?,
        help: data['help'] as String?,
        errorMessage: data['error_message'] as String?,
        score: castToType<int>(data['score']),
        type: data['type'] as String?,
        answerList: getStructList(
          data['answerList'],
          AnswerStruct.fromMap,
        ),
        answerCorrectIndex: castToType<int>(data['answerCorrectIndex']),
        estado: data['estado'] as bool?,
        order: castToType<int>(data['order']),
      );

  static QuestionStruct? maybeFromMap(dynamic data) =>
      data is Map ? QuestionStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'question': _question,
        'image_url': _imageUrl,
        'video_url': _videoUrl,
        'help': _help,
        'error_message': _errorMessage,
        'score': _score,
        'type': _type,
        'answerList': _answerList?.map((e) => e.toMap()).toList(),
        'answerCorrectIndex': _answerCorrectIndex,
        'estado': _estado,
        'order': _order,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'question': serializeParam(
          _question,
          ParamType.String,
        ),
        'image_url': serializeParam(
          _imageUrl,
          ParamType.String,
        ),
        'video_url': serializeParam(
          _videoUrl,
          ParamType.String,
        ),
        'help': serializeParam(
          _help,
          ParamType.String,
        ),
        'error_message': serializeParam(
          _errorMessage,
          ParamType.String,
        ),
        'score': serializeParam(
          _score,
          ParamType.int,
        ),
        'type': serializeParam(
          _type,
          ParamType.String,
        ),
        'answerList': serializeParam(
          _answerList,
          ParamType.DataStruct,
          isList: true,
        ),
        'answerCorrectIndex': serializeParam(
          _answerCorrectIndex,
          ParamType.int,
        ),
        'estado': serializeParam(
          _estado,
          ParamType.bool,
        ),
        'order': serializeParam(
          _order,
          ParamType.int,
        ),
      }.withoutNulls;

  static QuestionStruct fromSerializableMap(Map<String, dynamic> data) =>
      QuestionStruct(
        question: deserializeParam(
          data['question'],
          ParamType.String,
          false,
        ),
        imageUrl: deserializeParam(
          data['image_url'],
          ParamType.String,
          false,
        ),
        videoUrl: deserializeParam(
          data['video_url'],
          ParamType.String,
          false,
        ),
        help: deserializeParam(
          data['help'],
          ParamType.String,
          false,
        ),
        errorMessage: deserializeParam(
          data['error_message'],
          ParamType.String,
          false,
        ),
        score: deserializeParam(
          data['score'],
          ParamType.int,
          false,
        ),
        type: deserializeParam(
          data['type'],
          ParamType.String,
          false,
        ),
        answerList: deserializeStructParam<AnswerStruct>(
          data['answerList'],
          ParamType.DataStruct,
          true,
          structBuilder: AnswerStruct.fromSerializableMap,
        ),
        answerCorrectIndex: deserializeParam(
          data['answerCorrectIndex'],
          ParamType.int,
          false,
        ),
        estado: deserializeParam(
          data['estado'],
          ParamType.bool,
          false,
        ),
        order: deserializeParam(
          data['order'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'QuestionStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is QuestionStruct &&
        question == other.question &&
        imageUrl == other.imageUrl &&
        videoUrl == other.videoUrl &&
        help == other.help &&
        errorMessage == other.errorMessage &&
        score == other.score &&
        type == other.type &&
        listEquality.equals(answerList, other.answerList) &&
        answerCorrectIndex == other.answerCorrectIndex &&
        estado == other.estado &&
        order == other.order;
  }

  @override
  int get hashCode => const ListEquality().hash([
        question,
        imageUrl,
        videoUrl,
        help,
        errorMessage,
        score,
        type,
        answerList,
        answerCorrectIndex,
        estado,
        order
      ]);
}

QuestionStruct createQuestionStruct({
  String? question,
  String? imageUrl,
  String? videoUrl,
  String? help,
  String? errorMessage,
  int? score,
  String? type,
  int? answerCorrectIndex,
  bool? estado,
  int? order,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    QuestionStruct(
      question: question,
      imageUrl: imageUrl,
      videoUrl: videoUrl,
      help: help,
      errorMessage: errorMessage,
      score: score,
      type: type,
      answerCorrectIndex: answerCorrectIndex,
      estado: estado,
      order: order,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

QuestionStruct? updateQuestionStruct(
  QuestionStruct? questionStruct, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    questionStruct
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addQuestionStructData(
  Map<String, dynamic> firestoreData,
  QuestionStruct? questionStruct,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (questionStruct == null) {
    return;
  }
  if (questionStruct.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && questionStruct.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final questionStructData =
      getQuestionFirestoreData(questionStruct, forFieldValue);
  final nestedData =
      questionStructData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = questionStruct.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getQuestionFirestoreData(
  QuestionStruct? questionStruct, [
  bool forFieldValue = false,
]) {
  if (questionStruct == null) {
    return {};
  }
  final firestoreData = mapToFirestore(questionStruct.toMap());

  // Add any Firestore field values
  questionStruct.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getQuestionListFirestoreData(
  List<QuestionStruct>? questionStructs,
) =>
    questionStructs?.map((e) => getQuestionFirestoreData(e, true)).toList() ??
    [];
