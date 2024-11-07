// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class CategoriaStruct extends FFFirebaseStruct {
  CategoriaStruct({
    String? nombre,
    String? image,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _nombre = nombre,
        _image = image,
        super(firestoreUtilData);

  // "nombre" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  set nombre(String? val) => _nombre = val;

  bool hasNombre() => _nombre != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  set image(String? val) => _image = val;

  bool hasImage() => _image != null;

  static CategoriaStruct fromMap(Map<String, dynamic> data) => CategoriaStruct(
        nombre: data['nombre'] as String?,
        image: data['image'] as String?,
      );

  static CategoriaStruct? maybeFromMap(dynamic data) => data is Map
      ? CategoriaStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'nombre': _nombre,
        'image': _image,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'nombre': serializeParam(
          _nombre,
          ParamType.String,
        ),
        'image': serializeParam(
          _image,
          ParamType.String,
        ),
      }.withoutNulls;

  static CategoriaStruct fromSerializableMap(Map<String, dynamic> data) =>
      CategoriaStruct(
        nombre: deserializeParam(
          data['nombre'],
          ParamType.String,
          false,
        ),
        image: deserializeParam(
          data['image'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'CategoriaStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CategoriaStruct &&
        nombre == other.nombre &&
        image == other.image;
  }

  @override
  int get hashCode => const ListEquality().hash([nombre, image]);
}

CategoriaStruct createCategoriaStruct({
  String? nombre,
  String? image,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    CategoriaStruct(
      nombre: nombre,
      image: image,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

CategoriaStruct? updateCategoriaStruct(
  CategoriaStruct? categoria, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    categoria
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addCategoriaStructData(
  Map<String, dynamic> firestoreData,
  CategoriaStruct? categoria,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (categoria == null) {
    return;
  }
  if (categoria.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && categoria.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final categoriaData = getCategoriaFirestoreData(categoria, forFieldValue);
  final nestedData = categoriaData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = categoria.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getCategoriaFirestoreData(
  CategoriaStruct? categoria, [
  bool forFieldValue = false,
]) {
  if (categoria == null) {
    return {};
  }
  final firestoreData = mapToFirestore(categoria.toMap());

  // Add any Firestore field values
  categoria.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getCategoriaListFirestoreData(
  List<CategoriaStruct>? categorias,
) =>
    categorias?.map((e) => getCategoriaFirestoreData(e, true)).toList() ?? [];
