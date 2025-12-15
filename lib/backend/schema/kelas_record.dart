import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class KelasRecord extends FirestoreRecord {
  KelasRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "namakelas" field.
  String? _namakelas;
  String get namakelas => _namakelas ?? '';
  bool hasNamakelas() => _namakelas != null;

  // "teacherID" field.
  String? _teacherID;
  String get teacherID => _teacherID ?? '';
  bool hasTeacherID() => _teacherID != null;

  // "teacherName" field.
  String? _teacherName;
  String get teacherName => _teacherName ?? '';
  bool hasTeacherName() => _teacherName != null;

  // "participantIds" field.
  List<String>? _participantIds;
  List<String> get participantIds => _participantIds ?? const [];
  bool hasParticipantIds() => _participantIds != null;

  // "kodeKelas" field.
  String? _kodeKelas;
  String get kodeKelas => _kodeKelas ?? '';
  bool hasKodeKelas() => _kodeKelas != null;

  // "createdAt" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "studentsID" field.
  List<String>? _studentsID;
  List<String> get studentsID => _studentsID ?? const [];
  bool hasStudentsID() => _studentsID != null;

  void _initializeFields() {
    _namakelas = snapshotData['namakelas'] as String?;
    _teacherID = snapshotData['teacherID'] as String?;
    _teacherName = snapshotData['teacherName'] as String?;
    _participantIds = getDataList(snapshotData['participantIds']);
    _kodeKelas = snapshotData['kodeKelas'] as String?;
    _createdAt = snapshotData['createdAt'] as DateTime?;
    _studentsID = getDataList(snapshotData['studentsID']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('kelas');

  static Stream<KelasRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => KelasRecord.fromSnapshot(s));

  static Future<KelasRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => KelasRecord.fromSnapshot(s));

  static KelasRecord fromSnapshot(DocumentSnapshot snapshot) => KelasRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static KelasRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      KelasRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'KelasRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is KelasRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createKelasRecordData({
  String? namakelas,
  String? teacherID,
  String? teacherName,
  String? kodeKelas,
  DateTime? createdAt,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'namakelas': namakelas,
      'teacherID': teacherID,
      'teacherName': teacherName,
      'kodeKelas': kodeKelas,
      'createdAt': createdAt,
    }.withoutNulls,
  );

  return firestoreData;
}

class KelasRecordDocumentEquality implements Equality<KelasRecord> {
  const KelasRecordDocumentEquality();

  @override
  bool equals(KelasRecord? e1, KelasRecord? e2) {
    const listEquality = ListEquality();
    return e1?.namakelas == e2?.namakelas &&
        e1?.teacherID == e2?.teacherID &&
        e1?.teacherName == e2?.teacherName &&
        listEquality.equals(e1?.participantIds, e2?.participantIds) &&
        e1?.kodeKelas == e2?.kodeKelas &&
        e1?.createdAt == e2?.createdAt &&
        listEquality.equals(e1?.studentsID, e2?.studentsID);
  }

  @override
  int hash(KelasRecord? e) => const ListEquality().hash([
        e?.namakelas,
        e?.teacherID,
        e?.teacherName,
        e?.participantIds,
        e?.kodeKelas,
        e?.createdAt,
        e?.studentsID
      ]);

  @override
  bool isValidKey(Object? o) => o is KelasRecord;
}
