// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class FormacionesStruct extends FFFirebaseStruct {
  FormacionesStruct({
    String? image,
    bool? equipoPropio,
    String? titulo,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _image = image,
        _equipoPropio = equipoPropio,
        _titulo = titulo,
        super(firestoreUtilData);

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  set image(String? val) => _image = val;

  bool hasImage() => _image != null;

  // "equipo_propio" field.
  bool? _equipoPropio;
  bool get equipoPropio => _equipoPropio ?? false;
  set equipoPropio(bool? val) => _equipoPropio = val;

  bool hasEquipoPropio() => _equipoPropio != null;

  // "titulo" field.
  String? _titulo;
  String get titulo => _titulo ?? '';
  set titulo(String? val) => _titulo = val;

  bool hasTitulo() => _titulo != null;

  static FormacionesStruct fromMap(Map<String, dynamic> data) =>
      FormacionesStruct(
        image: data['image'] as String?,
        equipoPropio: data['equipo_propio'] as bool?,
        titulo: data['titulo'] as String?,
      );

  static FormacionesStruct? maybeFromMap(dynamic data) => data is Map
      ? FormacionesStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'image': _image,
        'equipo_propio': _equipoPropio,
        'titulo': _titulo,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'image': serializeParam(
          _image,
          ParamType.String,
        ),
        'equipo_propio': serializeParam(
          _equipoPropio,
          ParamType.bool,
        ),
        'titulo': serializeParam(
          _titulo,
          ParamType.String,
        ),
      }.withoutNulls;

  static FormacionesStruct fromSerializableMap(Map<String, dynamic> data) =>
      FormacionesStruct(
        image: deserializeParam(
          data['image'],
          ParamType.String,
          false,
        ),
        equipoPropio: deserializeParam(
          data['equipo_propio'],
          ParamType.bool,
          false,
        ),
        titulo: deserializeParam(
          data['titulo'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'FormacionesStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is FormacionesStruct &&
        image == other.image &&
        equipoPropio == other.equipoPropio &&
        titulo == other.titulo;
  }

  @override
  int get hashCode => const ListEquality().hash([image, equipoPropio, titulo]);
}

FormacionesStruct createFormacionesStruct({
  String? image,
  bool? equipoPropio,
  String? titulo,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    FormacionesStruct(
      image: image,
      equipoPropio: equipoPropio,
      titulo: titulo,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

FormacionesStruct? updateFormacionesStruct(
  FormacionesStruct? formaciones, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    formaciones
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addFormacionesStructData(
  Map<String, dynamic> firestoreData,
  FormacionesStruct? formaciones,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (formaciones == null) {
    return;
  }
  if (formaciones.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && formaciones.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final formacionesData =
      getFormacionesFirestoreData(formaciones, forFieldValue);
  final nestedData =
      formacionesData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = formaciones.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getFormacionesFirestoreData(
  FormacionesStruct? formaciones, [
  bool forFieldValue = false,
]) {
  if (formaciones == null) {
    return {};
  }
  final firestoreData = mapToFirestore(formaciones.toMap());

  // Add any Firestore field values
  formaciones.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getFormacionesListFirestoreData(
  List<FormacionesStruct>? formacioness,
) =>
    formacioness?.map((e) => getFormacionesFirestoreData(e, true)).toList() ??
    [];
