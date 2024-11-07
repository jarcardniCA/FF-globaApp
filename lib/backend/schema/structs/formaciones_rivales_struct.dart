// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class FormacionesRivalesStruct extends FFFirebaseStruct {
  FormacionesRivalesStruct({
    String? image,
    bool? equipoRival,
    String? titulo,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _image = image,
        _equipoRival = equipoRival,
        _titulo = titulo,
        super(firestoreUtilData);

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  set image(String? val) => _image = val;

  bool hasImage() => _image != null;

  // "equipo_rival" field.
  bool? _equipoRival;
  bool get equipoRival => _equipoRival ?? false;
  set equipoRival(bool? val) => _equipoRival = val;

  bool hasEquipoRival() => _equipoRival != null;

  // "titulo" field.
  String? _titulo;
  String get titulo => _titulo ?? '';
  set titulo(String? val) => _titulo = val;

  bool hasTitulo() => _titulo != null;

  static FormacionesRivalesStruct fromMap(Map<String, dynamic> data) =>
      FormacionesRivalesStruct(
        image: data['image'] as String?,
        equipoRival: data['equipo_rival'] as bool?,
        titulo: data['titulo'] as String?,
      );

  static FormacionesRivalesStruct? maybeFromMap(dynamic data) => data is Map
      ? FormacionesRivalesStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'image': _image,
        'equipo_rival': _equipoRival,
        'titulo': _titulo,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'image': serializeParam(
          _image,
          ParamType.String,
        ),
        'equipo_rival': serializeParam(
          _equipoRival,
          ParamType.bool,
        ),
        'titulo': serializeParam(
          _titulo,
          ParamType.String,
        ),
      }.withoutNulls;

  static FormacionesRivalesStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      FormacionesRivalesStruct(
        image: deserializeParam(
          data['image'],
          ParamType.String,
          false,
        ),
        equipoRival: deserializeParam(
          data['equipo_rival'],
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
  String toString() => 'FormacionesRivalesStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is FormacionesRivalesStruct &&
        image == other.image &&
        equipoRival == other.equipoRival &&
        titulo == other.titulo;
  }

  @override
  int get hashCode => const ListEquality().hash([image, equipoRival, titulo]);
}

FormacionesRivalesStruct createFormacionesRivalesStruct({
  String? image,
  bool? equipoRival,
  String? titulo,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    FormacionesRivalesStruct(
      image: image,
      equipoRival: equipoRival,
      titulo: titulo,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

FormacionesRivalesStruct? updateFormacionesRivalesStruct(
  FormacionesRivalesStruct? formacionesRivales, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    formacionesRivales
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addFormacionesRivalesStructData(
  Map<String, dynamic> firestoreData,
  FormacionesRivalesStruct? formacionesRivales,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (formacionesRivales == null) {
    return;
  }
  if (formacionesRivales.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && formacionesRivales.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final formacionesRivalesData =
      getFormacionesRivalesFirestoreData(formacionesRivales, forFieldValue);
  final nestedData =
      formacionesRivalesData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields =
      formacionesRivales.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getFormacionesRivalesFirestoreData(
  FormacionesRivalesStruct? formacionesRivales, [
  bool forFieldValue = false,
]) {
  if (formacionesRivales == null) {
    return {};
  }
  final firestoreData = mapToFirestore(formacionesRivales.toMap());

  // Add any Firestore field values
  formacionesRivales.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getFormacionesRivalesListFirestoreData(
  List<FormacionesRivalesStruct>? formacionesRivaless,
) =>
    formacionesRivaless
        ?.map((e) => getFormacionesRivalesFirestoreData(e, true))
        .toList() ??
    [];
