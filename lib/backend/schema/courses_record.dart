import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CoursesRecord extends FirestoreRecord {
  CoursesRecord._(
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

  // "fecha_creacion" field.
  DateTime? _fechaCreacion;
  DateTime? get fechaCreacion => _fechaCreacion;
  bool hasFechaCreacion() => _fechaCreacion != null;

  // "estado" field.
  String? _estado;
  String get estado => _estado ?? '';
  bool hasEstado() => _estado != null;

  // "descripcion" field.
  String? _descripcion;
  String get descripcion => _descripcion ?? '';
  bool hasDescripcion() => _descripcion != null;

  // "eliminado" field.
  bool? _eliminado;
  bool get eliminado => _eliminado ?? false;
  bool hasEliminado() => _eliminado != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _order = castToType<int>(snapshotData['order']);
    _imageIcon = snapshotData['image_icon'] as String?;
    _fechaCreacion = snapshotData['fecha_creacion'] as DateTime?;
    _estado = snapshotData['estado'] as String?;
    _descripcion = snapshotData['descripcion'] as String?;
    _eliminado = snapshotData['eliminado'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('courses');

  static Stream<CoursesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CoursesRecord.fromSnapshot(s));

  static Future<CoursesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CoursesRecord.fromSnapshot(s));

  static CoursesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CoursesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CoursesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CoursesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CoursesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CoursesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCoursesRecordData({
  String? name,
  int? order,
  String? imageIcon,
  DateTime? fechaCreacion,
  String? estado,
  String? descripcion,
  bool? eliminado,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'order': order,
      'image_icon': imageIcon,
      'fecha_creacion': fechaCreacion,
      'estado': estado,
      'descripcion': descripcion,
      'eliminado': eliminado,
    }.withoutNulls,
  );

  return firestoreData;
}

class CoursesRecordDocumentEquality implements Equality<CoursesRecord> {
  const CoursesRecordDocumentEquality();

  @override
  bool equals(CoursesRecord? e1, CoursesRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.order == e2?.order &&
        e1?.imageIcon == e2?.imageIcon &&
        e1?.fechaCreacion == e2?.fechaCreacion &&
        e1?.estado == e2?.estado &&
        e1?.descripcion == e2?.descripcion &&
        e1?.eliminado == e2?.eliminado;
  }

  @override
  int hash(CoursesRecord? e) => const ListEquality().hash([
        e?.name,
        e?.order,
        e?.imageIcon,
        e?.fechaCreacion,
        e?.estado,
        e?.descripcion,
        e?.eliminado
      ]);

  @override
  bool isValidKey(Object? o) => o is CoursesRecord;
}
