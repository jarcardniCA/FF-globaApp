import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class InformacionCategoriaRecord extends FirestoreRecord {
  InformacionCategoriaRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "categoriaRef" field.
  DocumentReference? _categoriaRef;
  DocumentReference? get categoriaRef => _categoriaRef;
  bool hasCategoriaRef() => _categoriaRef != null;

  // "titulo" field.
  String? _titulo;
  String get titulo => _titulo ?? '';
  bool hasTitulo() => _titulo != null;

  // "descripcion" field.
  String? _descripcion;
  String get descripcion => _descripcion ?? '';
  bool hasDescripcion() => _descripcion != null;

  // "create_time" field.
  DateTime? _createTime;
  DateTime? get createTime => _createTime;
  bool hasCreateTime() => _createTime != null;

  // "Order" field.
  int? _order;
  int get order => _order ?? 0;
  bool hasOrder() => _order != null;

  void _initializeFields() {
    _categoriaRef = snapshotData['categoriaRef'] as DocumentReference?;
    _titulo = snapshotData['titulo'] as String?;
    _descripcion = snapshotData['descripcion'] as String?;
    _createTime = snapshotData['create_time'] as DateTime?;
    _order = castToType<int>(snapshotData['Order']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('informacion_categoria');

  static Stream<InformacionCategoriaRecord> getDocument(
          DocumentReference ref) =>
      ref.snapshots().map((s) => InformacionCategoriaRecord.fromSnapshot(s));

  static Future<InformacionCategoriaRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => InformacionCategoriaRecord.fromSnapshot(s));

  static InformacionCategoriaRecord fromSnapshot(DocumentSnapshot snapshot) =>
      InformacionCategoriaRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static InformacionCategoriaRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      InformacionCategoriaRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'InformacionCategoriaRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is InformacionCategoriaRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createInformacionCategoriaRecordData({
  DocumentReference? categoriaRef,
  String? titulo,
  String? descripcion,
  DateTime? createTime,
  int? order,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'categoriaRef': categoriaRef,
      'titulo': titulo,
      'descripcion': descripcion,
      'create_time': createTime,
      'Order': order,
    }.withoutNulls,
  );

  return firestoreData;
}

class InformacionCategoriaRecordDocumentEquality
    implements Equality<InformacionCategoriaRecord> {
  const InformacionCategoriaRecordDocumentEquality();

  @override
  bool equals(InformacionCategoriaRecord? e1, InformacionCategoriaRecord? e2) {
    return e1?.categoriaRef == e2?.categoriaRef &&
        e1?.titulo == e2?.titulo &&
        e1?.descripcion == e2?.descripcion &&
        e1?.createTime == e2?.createTime &&
        e1?.order == e2?.order;
  }

  @override
  int hash(InformacionCategoriaRecord? e) => const ListEquality().hash(
      [e?.categoriaRef, e?.titulo, e?.descripcion, e?.createTime, e?.order]);

  @override
  bool isValidKey(Object? o) => o is InformacionCategoriaRecord;
}
