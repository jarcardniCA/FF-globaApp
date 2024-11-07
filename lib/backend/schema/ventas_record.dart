import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class VentasRecord extends FirestoreRecord {
  VentasRecord._(
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

  // "product_ref" field.
  DocumentReference? _productRef;
  DocumentReference? get productRef => _productRef;
  bool hasProductRef() => _productRef != null;

  // "nombre_usuario" field.
  String? _nombreUsuario;
  String get nombreUsuario => _nombreUsuario ?? '';
  bool hasNombreUsuario() => _nombreUsuario != null;

  // "price" field.
  double? _price;
  double get price => _price ?? 0.0;
  bool hasPrice() => _price != null;

  void _initializeFields() {
    _userRef = snapshotData['user_ref'] as DocumentReference?;
    _createTime = snapshotData['create_time'] as DateTime?;
    _productRef = snapshotData['product_ref'] as DocumentReference?;
    _nombreUsuario = snapshotData['nombre_usuario'] as String?;
    _price = castToType<double>(snapshotData['price']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('ventas');

  static Stream<VentasRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => VentasRecord.fromSnapshot(s));

  static Future<VentasRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => VentasRecord.fromSnapshot(s));

  static VentasRecord fromSnapshot(DocumentSnapshot snapshot) => VentasRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static VentasRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      VentasRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'VentasRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is VentasRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createVentasRecordData({
  DocumentReference? userRef,
  DateTime? createTime,
  DocumentReference? productRef,
  String? nombreUsuario,
  double? price,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'user_ref': userRef,
      'create_time': createTime,
      'product_ref': productRef,
      'nombre_usuario': nombreUsuario,
      'price': price,
    }.withoutNulls,
  );

  return firestoreData;
}

class VentasRecordDocumentEquality implements Equality<VentasRecord> {
  const VentasRecordDocumentEquality();

  @override
  bool equals(VentasRecord? e1, VentasRecord? e2) {
    return e1?.userRef == e2?.userRef &&
        e1?.createTime == e2?.createTime &&
        e1?.productRef == e2?.productRef &&
        e1?.nombreUsuario == e2?.nombreUsuario &&
        e1?.price == e2?.price;
  }

  @override
  int hash(VentasRecord? e) => const ListEquality().hash(
      [e?.userRef, e?.createTime, e?.productRef, e?.nombreUsuario, e?.price]);

  @override
  bool isValidKey(Object? o) => o is VentasRecord;
}
