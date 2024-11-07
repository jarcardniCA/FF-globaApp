// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class ResulltadoStruct extends FFFirebaseStruct {
  ResulltadoStruct({
    String? titulo,
    String? descripcion,
    bool? debilidad,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _titulo = titulo,
        _descripcion = descripcion,
        _debilidad = debilidad,
        super(firestoreUtilData);

  // "titulo" field.
  String? _titulo;
  String get titulo => _titulo ?? '';
  set titulo(String? val) => _titulo = val;

  bool hasTitulo() => _titulo != null;

  // "descripcion" field.
  String? _descripcion;
  String get descripcion => _descripcion ?? '';
  set descripcion(String? val) => _descripcion = val;

  bool hasDescripcion() => _descripcion != null;

  // "debilidad" field.
  bool? _debilidad;
  bool get debilidad => _debilidad ?? false;
  set debilidad(bool? val) => _debilidad = val;

  bool hasDebilidad() => _debilidad != null;

  static ResulltadoStruct fromMap(Map<String, dynamic> data) =>
      ResulltadoStruct(
        titulo: data['titulo'] as String?,
        descripcion: data['descripcion'] as String?,
        debilidad: data['debilidad'] as bool?,
      );

  static ResulltadoStruct? maybeFromMap(dynamic data) => data is Map
      ? ResulltadoStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'titulo': _titulo,
        'descripcion': _descripcion,
        'debilidad': _debilidad,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'titulo': serializeParam(
          _titulo,
          ParamType.String,
        ),
        'descripcion': serializeParam(
          _descripcion,
          ParamType.String,
        ),
        'debilidad': serializeParam(
          _debilidad,
          ParamType.bool,
        ),
      }.withoutNulls;

  static ResulltadoStruct fromSerializableMap(Map<String, dynamic> data) =>
      ResulltadoStruct(
        titulo: deserializeParam(
          data['titulo'],
          ParamType.String,
          false,
        ),
        descripcion: deserializeParam(
          data['descripcion'],
          ParamType.String,
          false,
        ),
        debilidad: deserializeParam(
          data['debilidad'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'ResulltadoStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ResulltadoStruct &&
        titulo == other.titulo &&
        descripcion == other.descripcion &&
        debilidad == other.debilidad;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([titulo, descripcion, debilidad]);
}

ResulltadoStruct createResulltadoStruct({
  String? titulo,
  String? descripcion,
  bool? debilidad,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ResulltadoStruct(
      titulo: titulo,
      descripcion: descripcion,
      debilidad: debilidad,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ResulltadoStruct? updateResulltadoStruct(
  ResulltadoStruct? resulltado, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    resulltado
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addResulltadoStructData(
  Map<String, dynamic> firestoreData,
  ResulltadoStruct? resulltado,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (resulltado == null) {
    return;
  }
  if (resulltado.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && resulltado.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final resulltadoData = getResulltadoFirestoreData(resulltado, forFieldValue);
  final nestedData = resulltadoData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = resulltado.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getResulltadoFirestoreData(
  ResulltadoStruct? resulltado, [
  bool forFieldValue = false,
]) {
  if (resulltado == null) {
    return {};
  }
  final firestoreData = mapToFirestore(resulltado.toMap());

  // Add any Firestore field values
  resulltado.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getResulltadoListFirestoreData(
  List<ResulltadoStruct>? resulltados,
) =>
    resulltados?.map((e) => getResulltadoFirestoreData(e, true)).toList() ?? [];
