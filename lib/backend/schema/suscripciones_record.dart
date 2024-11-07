import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SuscripcionesRecord extends FirestoreRecord {
  SuscripcionesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "user_ref" field.
  DocumentReference? _userRef;
  DocumentReference? get userRef => _userRef;
  bool hasUserRef() => _userRef != null;

  // "create_time" field.
  DateTime? _createTime;
  DateTime? get createTime => _createTime;
  bool hasCreateTime() => _createTime != null;

  // "expiration_date" field.
  DateTime? _expirationDate;
  DateTime? get expirationDate => _expirationDate;
  bool hasExpirationDate() => _expirationDate != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "descripcion" field.
  String? _descripcion;
  String get descripcion => _descripcion ?? '';
  bool hasDescripcion() => _descripcion != null;

  // "price" field.
  double? _price;
  double get price => _price ?? 0.0;
  bool hasPrice() => _price != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "nombre_usuario" field.
  String? _nombreUsuario;
  String get nombreUsuario => _nombreUsuario ?? '';
  bool hasNombreUsuario() => _nombreUsuario != null;

  void _initializeFields() {
    _userRef = snapshotData['user_ref'] as DocumentReference?;
    _createTime = snapshotData['create_time'] as DateTime?;
    _expirationDate = snapshotData['expiration_date'] as DateTime?;
    _name = snapshotData['name'] as String?;
    _descripcion = snapshotData['descripcion'] as String?;
    _price = castToType<double>(snapshotData['price']);
    _status = snapshotData['status'] as String?;
    _nombreUsuario = snapshotData['nombre_usuario'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Suscripciones');

  static Stream<SuscripcionesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SuscripcionesRecord.fromSnapshot(s));

  static Future<SuscripcionesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SuscripcionesRecord.fromSnapshot(s));

  static SuscripcionesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      SuscripcionesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SuscripcionesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SuscripcionesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SuscripcionesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SuscripcionesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSuscripcionesRecordData({
  DocumentReference? userRef,
  DateTime? createTime,
  DateTime? expirationDate,
  String? name,
  String? descripcion,
  double? price,
  String? status,
  String? nombreUsuario,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'user_ref': userRef,
      'create_time': createTime,
      'expiration_date': expirationDate,
      'name': name,
      'descripcion': descripcion,
      'price': price,
      'status': status,
      'nombre_usuario': nombreUsuario,
    }.withoutNulls,
  );

  return firestoreData;
}

class SuscripcionesRecordDocumentEquality
    implements Equality<SuscripcionesRecord> {
  const SuscripcionesRecordDocumentEquality();

  @override
  bool equals(SuscripcionesRecord? e1, SuscripcionesRecord? e2) {
    return e1?.userRef == e2?.userRef &&
        e1?.createTime == e2?.createTime &&
        e1?.expirationDate == e2?.expirationDate &&
        e1?.name == e2?.name &&
        e1?.descripcion == e2?.descripcion &&
        e1?.price == e2?.price &&
        e1?.status == e2?.status &&
        e1?.nombreUsuario == e2?.nombreUsuario;
  }

  @override
  int hash(SuscripcionesRecord? e) => const ListEquality().hash([
        e?.userRef,
        e?.createTime,
        e?.expirationDate,
        e?.name,
        e?.descripcion,
        e?.price,
        e?.status,
        e?.nombreUsuario
      ]);

  @override
  bool isValidKey(Object? o) => o is SuscripcionesRecord;
}
