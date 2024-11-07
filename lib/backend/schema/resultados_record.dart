import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ResultadosRecord extends FirestoreRecord {
  ResultadosRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "formacion_a" field.
  DocumentReference? _formacionA;
  DocumentReference? get formacionA => _formacionA;
  bool hasFormacionA() => _formacionA != null;

  // "formacion_b" field.
  DocumentReference? _formacionB;
  DocumentReference? get formacionB => _formacionB;
  bool hasFormacionB() => _formacionB != null;

  // "resultado" field.
  List<ResulltadoStruct>? _resultado;
  List<ResulltadoStruct> get resultado => _resultado ?? const [];
  bool hasResultado() => _resultado != null;

  // "debilidad" field.
  bool? _debilidad;
  bool get debilidad => _debilidad ?? false;
  bool hasDebilidad() => _debilidad != null;

  // "estado" field.
  bool? _estado;
  bool get estado => _estado ?? false;
  bool hasEstado() => _estado != null;

  // "borrado" field.
  String? _borrado;
  String get borrado => _borrado ?? '';
  bool hasBorrado() => _borrado != null;

  // "create_time" field.
  DateTime? _createTime;
  DateTime? get createTime => _createTime;
  bool hasCreateTime() => _createTime != null;

  // "order" field.
  int? _order;
  int get order => _order ?? 0;
  bool hasOrder() => _order != null;

  void _initializeFields() {
    _formacionA = snapshotData['formacion_a'] as DocumentReference?;
    _formacionB = snapshotData['formacion_b'] as DocumentReference?;
    _resultado = getStructList(
      snapshotData['resultado'],
      ResulltadoStruct.fromMap,
    );
    _debilidad = snapshotData['debilidad'] as bool?;
    _estado = snapshotData['estado'] as bool?;
    _borrado = snapshotData['borrado'] as String?;
    _createTime = snapshotData['create_time'] as DateTime?;
    _order = castToType<int>(snapshotData['order']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('resultados');

  static Stream<ResultadosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ResultadosRecord.fromSnapshot(s));

  static Future<ResultadosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ResultadosRecord.fromSnapshot(s));

  static ResultadosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ResultadosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ResultadosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ResultadosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ResultadosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ResultadosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createResultadosRecordData({
  DocumentReference? formacionA,
  DocumentReference? formacionB,
  bool? debilidad,
  bool? estado,
  String? borrado,
  DateTime? createTime,
  int? order,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'formacion_a': formacionA,
      'formacion_b': formacionB,
      'debilidad': debilidad,
      'estado': estado,
      'borrado': borrado,
      'create_time': createTime,
      'order': order,
    }.withoutNulls,
  );

  return firestoreData;
}

class ResultadosRecordDocumentEquality implements Equality<ResultadosRecord> {
  const ResultadosRecordDocumentEquality();

  @override
  bool equals(ResultadosRecord? e1, ResultadosRecord? e2) {
    const listEquality = ListEquality();
    return e1?.formacionA == e2?.formacionA &&
        e1?.formacionB == e2?.formacionB &&
        listEquality.equals(e1?.resultado, e2?.resultado) &&
        e1?.debilidad == e2?.debilidad &&
        e1?.estado == e2?.estado &&
        e1?.borrado == e2?.borrado &&
        e1?.createTime == e2?.createTime &&
        e1?.order == e2?.order;
  }

  @override
  int hash(ResultadosRecord? e) => const ListEquality().hash([
        e?.formacionA,
        e?.formacionB,
        e?.resultado,
        e?.debilidad,
        e?.estado,
        e?.borrado,
        e?.createTime,
        e?.order
      ]);

  @override
  bool isValidKey(Object? o) => o is ResultadosRecord;
}
