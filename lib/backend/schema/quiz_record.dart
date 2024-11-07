import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class QuizRecord extends FirestoreRecord {
  QuizRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "question" field.
  List<QuestionStruct>? _question;
  List<QuestionStruct> get question => _question ?? const [];
  bool hasQuestion() => _question != null;

  // "courses" field.
  String? _courses;
  String get courses => _courses ?? '';
  bool hasCourses() => _courses != null;

  // "topic" field.
  String? _topic;
  String get topic => _topic ?? '';
  bool hasTopic() => _topic != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "topic_ref" field.
  DocumentReference? _topicRef;
  DocumentReference? get topicRef => _topicRef;
  bool hasTopicRef() => _topicRef != null;

  // "course_ref" field.
  DocumentReference? _courseRef;
  DocumentReference? get courseRef => _courseRef;
  bool hasCourseRef() => _courseRef != null;

  void _initializeFields() {
    _question = getStructList(
      snapshotData['question'],
      QuestionStruct.fromMap,
    );
    _courses = snapshotData['courses'] as String?;
    _topic = snapshotData['topic'] as String?;
    _name = snapshotData['name'] as String?;
    _topicRef = snapshotData['topic_ref'] as DocumentReference?;
    _courseRef = snapshotData['course_ref'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('quiz');

  static Stream<QuizRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => QuizRecord.fromSnapshot(s));

  static Future<QuizRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => QuizRecord.fromSnapshot(s));

  static QuizRecord fromSnapshot(DocumentSnapshot snapshot) => QuizRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static QuizRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      QuizRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'QuizRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is QuizRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createQuizRecordData({
  String? courses,
  String? topic,
  String? name,
  DocumentReference? topicRef,
  DocumentReference? courseRef,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'courses': courses,
      'topic': topic,
      'name': name,
      'topic_ref': topicRef,
      'course_ref': courseRef,
    }.withoutNulls,
  );

  return firestoreData;
}

class QuizRecordDocumentEquality implements Equality<QuizRecord> {
  const QuizRecordDocumentEquality();

  @override
  bool equals(QuizRecord? e1, QuizRecord? e2) {
    const listEquality = ListEquality();
    return listEquality.equals(e1?.question, e2?.question) &&
        e1?.courses == e2?.courses &&
        e1?.topic == e2?.topic &&
        e1?.name == e2?.name &&
        e1?.topicRef == e2?.topicRef &&
        e1?.courseRef == e2?.courseRef;
  }

  @override
  int hash(QuizRecord? e) => const ListEquality().hash(
      [e?.question, e?.courses, e?.topic, e?.name, e?.topicRef, e?.courseRef]);

  @override
  bool isValidKey(Object? o) => o is QuizRecord;
}
