import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsersRecord extends FirestoreRecord {
  UsersRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "lives" field.
  int? _lives;
  int get lives => _lives ?? 0;
  bool hasLives() => _lives != null;

  // "score" field.
  int? _score;
  int get score => _score ?? 0;
  bool hasScore() => _score != null;

  // "usuario_premium" field.
  bool? _usuarioPremium;
  bool get usuarioPremium => _usuarioPremium ?? false;
  bool hasUsuarioPremium() => _usuarioPremium != null;

  // "usuario_admin" field.
  bool? _usuarioAdmin;
  bool get usuarioAdmin => _usuarioAdmin ?? false;
  bool hasUsuarioAdmin() => _usuarioAdmin != null;

  // "pais" field.
  String? _pais;
  String get pais => _pais ?? '';
  bool hasPais() => _pais != null;

  // "tipo_usuario" field.
  String? _tipoUsuario;
  String get tipoUsuario => _tipoUsuario ?? '';
  bool hasTipoUsuario() => _tipoUsuario != null;

  // "espera" field.
  bool? _espera;
  bool get espera => _espera ?? false;
  bool hasEspera() => _espera != null;

  // "suscripcion" field.
  String? _suscripcion;
  String get suscripcion => _suscripcion ?? '';
  bool hasSuscripcion() => _suscripcion != null;

  // "last_quizz_answered_date" field.
  DateTime? _lastQuizzAnsweredDate;
  DateTime? get lastQuizzAnsweredDate => _lastQuizzAnsweredDate;
  bool hasLastQuizzAnsweredDate() => _lastQuizzAnsweredDate != null;

  // "course" field.
  bool? _course;
  bool get course => _course ?? false;
  bool hasCourse() => _course != null;

  // "logintime" field.
  DateTime? _logintime;
  DateTime? get logintime => _logintime;
  bool hasLogintime() => _logintime != null;

  // "logouttime" field.
  DateTime? _logouttime;
  DateTime? get logouttime => _logouttime;
  bool hasLogouttime() => _logouttime != null;

  // "usertime" field.
  String? _usertime;
  String get usertime => _usertime ?? '';
  bool hasUsertime() => _usertime != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _lives = castToType<int>(snapshotData['lives']);
    _score = castToType<int>(snapshotData['score']);
    _usuarioPremium = snapshotData['usuario_premium'] as bool?;
    _usuarioAdmin = snapshotData['usuario_admin'] as bool?;
    _pais = snapshotData['pais'] as String?;
    _tipoUsuario = snapshotData['tipo_usuario'] as String?;
    _espera = snapshotData['espera'] as bool?;
    _suscripcion = snapshotData['suscripcion'] as String?;
    _lastQuizzAnsweredDate =
        snapshotData['last_quizz_answered_date'] as DateTime?;
    _course = snapshotData['course'] as bool?;
    _logintime = snapshotData['logintime'] as DateTime?;
    _logouttime = snapshotData['logouttime'] as DateTime?;
    _usertime = snapshotData['usertime'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsersRecord.fromSnapshot(s));

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsersRecord.fromSnapshot(s));

  static UsersRecord fromSnapshot(DocumentSnapshot snapshot) => UsersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsersRecordData({
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  int? lives,
  int? score,
  bool? usuarioPremium,
  bool? usuarioAdmin,
  String? pais,
  String? tipoUsuario,
  bool? espera,
  String? suscripcion,
  DateTime? lastQuizzAnsweredDate,
  bool? course,
  DateTime? logintime,
  DateTime? logouttime,
  String? usertime,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'lives': lives,
      'score': score,
      'usuario_premium': usuarioPremium,
      'usuario_admin': usuarioAdmin,
      'pais': pais,
      'tipo_usuario': tipoUsuario,
      'espera': espera,
      'suscripcion': suscripcion,
      'last_quizz_answered_date': lastQuizzAnsweredDate,
      'course': course,
      'logintime': logintime,
      'logouttime': logouttime,
      'usertime': usertime,
    }.withoutNulls,
  );

  return firestoreData;
}

class UsersRecordDocumentEquality implements Equality<UsersRecord> {
  const UsersRecordDocumentEquality();

  @override
  bool equals(UsersRecord? e1, UsersRecord? e2) {
    return e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.lives == e2?.lives &&
        e1?.score == e2?.score &&
        e1?.usuarioPremium == e2?.usuarioPremium &&
        e1?.usuarioAdmin == e2?.usuarioAdmin &&
        e1?.pais == e2?.pais &&
        e1?.tipoUsuario == e2?.tipoUsuario &&
        e1?.espera == e2?.espera &&
        e1?.suscripcion == e2?.suscripcion &&
        e1?.lastQuizzAnsweredDate == e2?.lastQuizzAnsweredDate &&
        e1?.course == e2?.course &&
        e1?.logintime == e2?.logintime &&
        e1?.logouttime == e2?.logouttime &&
        e1?.usertime == e2?.usertime;
  }

  @override
  int hash(UsersRecord? e) => const ListEquality().hash([
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber,
        e?.lives,
        e?.score,
        e?.usuarioPremium,
        e?.usuarioAdmin,
        e?.pais,
        e?.tipoUsuario,
        e?.espera,
        e?.suscripcion,
        e?.lastQuizzAnsweredDate,
        e?.course,
        e?.logintime,
        e?.logouttime,
        e?.usertime
      ]);

  @override
  bool isValidKey(Object? o) => o is UsersRecord;
}
