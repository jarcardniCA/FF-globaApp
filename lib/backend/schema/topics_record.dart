import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TopicsRecord extends FirestoreRecord {
  TopicsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "order" field.
  int? _order;
  int get order => _order ?? 0;
  bool hasOrder() => _order != null;

  // "image_icon" field.
  String? _imageIcon;
  String get imageIcon => _imageIcon ?? '';
  bool hasImageIcon() => _imageIcon != null;

  // "topicStatus" field.
  bool? _topicStatus;
  bool get topicStatus => _topicStatus ?? false;
  bool hasTopicStatus() => _topicStatus != null;

  // "completedby" field.
  DocumentReference? _completedby;
  DocumentReference? get completedby => _completedby;
  bool hasCompletedby() => _completedby != null;

  // "by" field.
  String? _by;
  String get by => _by ?? '';
  bool hasBy() => _by != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _order = castToType<int>(snapshotData['order']);
    _imageIcon = snapshotData['image_icon'] as String?;
    _topicStatus = snapshotData['topicStatus'] as bool?;
    _completedby = snapshotData['completedby'] as DocumentReference?;
    _by = snapshotData['by'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('topics')
          : FirebaseFirestore.instance.collectionGroup('topics');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('topics').doc(id);

  static Stream<TopicsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TopicsRecord.fromSnapshot(s));

  static Future<TopicsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TopicsRecord.fromSnapshot(s));

  static TopicsRecord fromSnapshot(DocumentSnapshot snapshot) => TopicsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TopicsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TopicsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TopicsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TopicsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTopicsRecordData({
  String? name,
  int? order,
  String? imageIcon,
  bool? topicStatus,
  DocumentReference? completedby,
  String? by,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'order': order,
      'image_icon': imageIcon,
      'topicStatus': topicStatus,
      'completedby': completedby,
      'by': by,
    }.withoutNulls,
  );

  return firestoreData;
}

class TopicsRecordDocumentEquality implements Equality<TopicsRecord> {
  const TopicsRecordDocumentEquality();

  @override
  bool equals(TopicsRecord? e1, TopicsRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.order == e2?.order &&
        e1?.imageIcon == e2?.imageIcon &&
        e1?.topicStatus == e2?.topicStatus &&
        e1?.completedby == e2?.completedby &&
        e1?.by == e2?.by;
  }

  @override
  int hash(TopicsRecord? e) => const ListEquality().hash(
      [e?.name, e?.order, e?.imageIcon, e?.topicStatus, e?.completedby, e?.by]);

  @override
  bool isValidKey(Object? o) => o is TopicsRecord;
}
