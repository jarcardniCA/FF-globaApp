import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CategoriasResultadosRecord extends FirestoreRecord {
  CategoriasResultadosRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "nombre" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  bool hasNombre() => _nombre != null;

  // "create_time" field.
  DateTime? _createTime;
  DateTime? get createTime => _createTime;
  bool hasCreateTime() => _createTime != null;

  // "resultado_ref" field.
  DocumentReference? _resultadoRef;
  DocumentReference? get resultadoRef => _resultadoRef;
  bool hasResultadoRef() => _resultadoRef != null;

  // "order" field.
  int? _order;
  int get order => _order ?? 0;
  bool hasOrder() => _order != null;

  void _initializeFields() {
    _nombre = snapshotData['nombre'] as String?;
    _createTime = snapshotData['create_time'] as DateTime?;
    _resultadoRef = snapshotData['resultado_ref'] as DocumentReference?;
    _order = castToType<int>(snapshotData['order']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('categorias_resultados');

  static Stream<CategoriasResultadosRecord> getDocument(
          DocumentReference ref) =>
      ref.snapshots().map((s) => CategoriasResultadosRecord.fromSnapshot(s));

  static Future<CategoriasResultadosRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => CategoriasResultadosRecord.fromSnapshot(s));

  static CategoriasResultadosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CategoriasResultadosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CategoriasResultadosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CategoriasResultadosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CategoriasResultadosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CategoriasResultadosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCategoriasResultadosRecordData({
  String? nombre,
  DateTime? createTime,
  DocumentReference? resultadoRef,
  int? order,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nombre': nombre,
      'create_time': createTime,
      'resultado_ref': resultadoRef,
      'order': order,
    }.withoutNulls,
  );

  return firestoreData;
}

class CategoriasResultadosRecordDocumentEquality
    implements Equality<CategoriasResultadosRecord> {
  const CategoriasResultadosRecordDocumentEquality();

  @override
  bool equals(CategoriasResultadosRecord? e1, CategoriasResultadosRecord? e2) {
    return e1?.nombre == e2?.nombre &&
        e1?.createTime == e2?.createTime &&
        e1?.resultadoRef == e2?.resultadoRef &&
        e1?.order == e2?.order;
  }

  @override
  int hash(CategoriasResultadosRecord? e) => const ListEquality()
      .hash([e?.nombre, e?.createTime, e?.resultadoRef, e?.order]);

  @override
  bool isValidKey(Object? o) => o is CategoriasResultadosRecord;
}
