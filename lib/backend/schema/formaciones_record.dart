import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FormacionesRecord extends FirestoreRecord {
  FormacionesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "nombre" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  bool hasNombre() => _nombre != null;

  // "equipo_lila" field.
  bool? _equipoLila;
  bool get equipoLila => _equipoLila ?? false;
  bool hasEquipoLila() => _equipoLila != null;

  // "order" field.
  int? _order;
  int get order => _order ?? 0;
  bool hasOrder() => _order != null;

  // "equipo_propio" field.
  FormacionesStruct? _equipoPropio;
  FormacionesStruct get equipoPropio => _equipoPropio ?? FormacionesStruct();
  bool hasEquipoPropio() => _equipoPropio != null;

  // "equipo_rival" field.
  FormacionesRivalesStruct? _equipoRival;
  FormacionesRivalesStruct get equipoRival =>
      _equipoRival ?? FormacionesRivalesStruct();
  bool hasEquipoRival() => _equipoRival != null;

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

  // "imagen_propio" field.
  String? _imagenPropio;
  String get imagenPropio => _imagenPropio ?? '';
  bool hasImagenPropio() => _imagenPropio != null;

  // "imagen_rival" field.
  String? _imagenRival;
  String get imagenRival => _imagenRival ?? '';
  bool hasImagenRival() => _imagenRival != null;

  void _initializeFields() {
    _nombre = snapshotData['nombre'] as String?;
    _equipoLila = snapshotData['equipo_lila'] as bool?;
    _order = castToType<int>(snapshotData['order']);
    _equipoPropio =
        FormacionesStruct.maybeFromMap(snapshotData['equipo_propio']);
    _equipoRival =
        FormacionesRivalesStruct.maybeFromMap(snapshotData['equipo_rival']);
    _estado = snapshotData['estado'] as bool?;
    _borrado = snapshotData['borrado'] as String?;
    _createTime = snapshotData['create_time'] as DateTime?;
    _imagenPropio = snapshotData['imagen_propio'] as String?;
    _imagenRival = snapshotData['imagen_rival'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('formaciones');

  static Stream<FormacionesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => FormacionesRecord.fromSnapshot(s));

  static Future<FormacionesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => FormacionesRecord.fromSnapshot(s));

  static FormacionesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      FormacionesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static FormacionesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      FormacionesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'FormacionesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is FormacionesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createFormacionesRecordData({
  String? nombre,
  bool? equipoLila,
  int? order,
  FormacionesStruct? equipoPropio,
  FormacionesRivalesStruct? equipoRival,
  bool? estado,
  String? borrado,
  DateTime? createTime,
  String? imagenPropio,
  String? imagenRival,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nombre': nombre,
      'equipo_lila': equipoLila,
      'order': order,
      'equipo_propio': FormacionesStruct().toMap(),
      'equipo_rival': FormacionesRivalesStruct().toMap(),
      'estado': estado,
      'borrado': borrado,
      'create_time': createTime,
      'imagen_propio': imagenPropio,
      'imagen_rival': imagenRival,
    }.withoutNulls,
  );

  // Handle nested data for "equipo_propio" field.
  addFormacionesStructData(firestoreData, equipoPropio, 'equipo_propio');

  // Handle nested data for "equipo_rival" field.
  addFormacionesRivalesStructData(firestoreData, equipoRival, 'equipo_rival');

  return firestoreData;
}

class FormacionesRecordDocumentEquality implements Equality<FormacionesRecord> {
  const FormacionesRecordDocumentEquality();

  @override
  bool equals(FormacionesRecord? e1, FormacionesRecord? e2) {
    return e1?.nombre == e2?.nombre &&
        e1?.equipoLila == e2?.equipoLila &&
        e1?.order == e2?.order &&
        e1?.equipoPropio == e2?.equipoPropio &&
        e1?.equipoRival == e2?.equipoRival &&
        e1?.estado == e2?.estado &&
        e1?.borrado == e2?.borrado &&
        e1?.createTime == e2?.createTime &&
        e1?.imagenPropio == e2?.imagenPropio &&
        e1?.imagenRival == e2?.imagenRival;
  }

  @override
  int hash(FormacionesRecord? e) => const ListEquality().hash([
        e?.nombre,
        e?.equipoLila,
        e?.order,
        e?.equipoPropio,
        e?.equipoRival,
        e?.estado,
        e?.borrado,
        e?.createTime,
        e?.imagenPropio,
        e?.imagenRival
      ]);

  @override
  bool isValidKey(Object? o) => o is FormacionesRecord;
}
