import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CategoriasRecord extends FirestoreRecord {
  CategoriasRecord._(
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

  // "Order" field.
  int? _order;
  int get order => _order ?? 0;
  bool hasOrder() => _order != null;

  // "formarciones_ref" field.
  DocumentReference? _formarcionesRef;
  DocumentReference? get formarcionesRef => _formarcionesRef;
  bool hasFormarcionesRef() => _formarcionesRef != null;

  // "categ" field.
  List<CategoriaStruct>? _categ;
  List<CategoriaStruct> get categ => _categ ?? const [];
  bool hasCateg() => _categ != null;

  void _initializeFields() {
    _nombre = snapshotData['nombre'] as String?;
    _createTime = snapshotData['create_time'] as DateTime?;
    _order = castToType<int>(snapshotData['Order']);
    _formarcionesRef = snapshotData['formarciones_ref'] as DocumentReference?;
    _categ = getStructList(
      snapshotData['categ'],
      CategoriaStruct.fromMap,
    );
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('categorias');

  static Stream<CategoriasRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CategoriasRecord.fromSnapshot(s));

  static Future<CategoriasRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CategoriasRecord.fromSnapshot(s));

  static CategoriasRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CategoriasRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CategoriasRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CategoriasRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CategoriasRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CategoriasRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCategoriasRecordData({
  String? nombre,
  DateTime? createTime,
  int? order,
  DocumentReference? formarcionesRef,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nombre': nombre,
      'create_time': createTime,
      'Order': order,
      'formarciones_ref': formarcionesRef,
    }.withoutNulls,
  );

  return firestoreData;
}

class CategoriasRecordDocumentEquality implements Equality<CategoriasRecord> {
  const CategoriasRecordDocumentEquality();

  @override
  bool equals(CategoriasRecord? e1, CategoriasRecord? e2) {
    const listEquality = ListEquality();
    return e1?.nombre == e2?.nombre &&
        e1?.createTime == e2?.createTime &&
        e1?.order == e2?.order &&
        e1?.formarcionesRef == e2?.formarcionesRef &&
        listEquality.equals(e1?.categ, e2?.categ);
  }

  @override
  int hash(CategoriasRecord? e) => const ListEquality()
      .hash([e?.nombre, e?.createTime, e?.order, e?.formarcionesRef, e?.categ]);

  @override
  bool isValidKey(Object? o) => o is CategoriasRecord;
}
