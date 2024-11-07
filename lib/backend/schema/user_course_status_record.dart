import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserCourseStatusRecord extends FirestoreRecord {
  UserCourseStatusRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "cousreStart" field.
  bool? _cousreStart;
  bool get cousreStart => _cousreStart ?? false;
  bool hasCousreStart() => _cousreStart != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  void _initializeFields() {
    _cousreStart = snapshotData['cousreStart'] as bool?;
    _uid = snapshotData['uid'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('User_Course_Status');

  static Stream<UserCourseStatusRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UserCourseStatusRecord.fromSnapshot(s));

  static Future<UserCourseStatusRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => UserCourseStatusRecord.fromSnapshot(s));

  static UserCourseStatusRecord fromSnapshot(DocumentSnapshot snapshot) =>
      UserCourseStatusRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UserCourseStatusRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UserCourseStatusRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UserCourseStatusRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UserCourseStatusRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUserCourseStatusRecordData({
  bool? cousreStart,
  String? uid,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'cousreStart': cousreStart,
      'uid': uid,
    }.withoutNulls,
  );

  return firestoreData;
}

class UserCourseStatusRecordDocumentEquality
    implements Equality<UserCourseStatusRecord> {
  const UserCourseStatusRecordDocumentEquality();

  @override
  bool equals(UserCourseStatusRecord? e1, UserCourseStatusRecord? e2) {
    return e1?.cousreStart == e2?.cousreStart && e1?.uid == e2?.uid;
  }

  @override
  int hash(UserCourseStatusRecord? e) =>
      const ListEquality().hash([e?.cousreStart, e?.uid]);

  @override
  bool isValidKey(Object? o) => o is UserCourseStatusRecord;
}
