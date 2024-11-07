import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ResultadoCombinacionRecord extends FirestoreRecord {
  ResultadoCombinacionRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "nombre" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  bool hasNombre() => _nombre != null;

  // "descripcion" field.
  String? _descripcion;
  String get descripcion => _descripcion ?? '';
  bool hasDescripcion() => _descripcion != null;

  // "categoria_ref" field.
  DocumentReference? _categoriaRef;
  DocumentReference? get categoriaRef => _categoriaRef;
  bool hasCategoriaRef() => _categoriaRef != null;

  // "order" field.
  int? _order;
  int get order => _order ?? 0;
  bool hasOrder() => _order != null;

  void _initializeFields() {
    _nombre = snapshotData['nombre'] as String?;
    _descripcion = snapshotData['descripcion'] as String?;
    _categoriaRef = snapshotData['categoria_ref'] as DocumentReference?;
    _order = castToType<int>(snapshotData['order']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('resultado_combinacion');

  static Stream<ResultadoCombinacionRecord> getDocument(
          DocumentReference ref) =>
      ref.snapshots().map((s) => ResultadoCombinacionRecord.fromSnapshot(s));

  static Future<ResultadoCombinacionRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => ResultadoCombinacionRecord.fromSnapshot(s));

  static ResultadoCombinacionRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ResultadoCombinacionRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ResultadoCombinacionRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ResultadoCombinacionRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ResultadoCombinacionRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ResultadoCombinacionRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createResultadoCombinacionRecordData({
  String? nombre,
  String? descripcion,
  DocumentReference? categoriaRef,
  int? order,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nombre': nombre,
      'descripcion': descripcion,
      'categoria_ref': categoriaRef,
      'order': order,
    }.withoutNulls,
  );

  return firestoreData;
}

class ResultadoCombinacionRecordDocumentEquality
    implements Equality<ResultadoCombinacionRecord> {
  const ResultadoCombinacionRecordDocumentEquality();

  @override
  bool equals(ResultadoCombinacionRecord? e1, ResultadoCombinacionRecord? e2) {
    return e1?.nombre == e2?.nombre &&
        e1?.descripcion == e2?.descripcion &&
        e1?.categoriaRef == e2?.categoriaRef &&
        e1?.order == e2?.order;
  }

  @override
  int hash(ResultadoCombinacionRecord? e) => const ListEquality()
      .hash([e?.nombre, e?.descripcion, e?.categoriaRef, e?.order]);

  @override
  bool isValidKey(Object? o) => o is ResultadoCombinacionRecord;
}
