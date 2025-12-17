import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AttemptsRecord extends FirestoreRecord {
  AttemptsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "kuisRef" field.
  DocumentReference? _kuisRef;
  DocumentReference? get kuisRef => _kuisRef;
  bool hasKuisRef() => _kuisRef != null;

  // "kelasRef" field.
  DocumentReference? _kelasRef;
  DocumentReference? get kelasRef => _kelasRef;
  bool hasKelasRef() => _kelasRef != null;

  // "userID" field.
  String? _userID;
  String get userID => _userID ?? '';
  bool hasUserID() => _userID != null;

  // "startedAt" field.
  DateTime? _startedAt;
  DateTime? get startedAt => _startedAt;
  bool hasStartedAt() => _startedAt != null;

  // "submittedAt" field.
  DateTime? _submittedAt;
  DateTime? get submittedAt => _submittedAt;
  bool hasSubmittedAt() => _submittedAt != null;

  // "totalScore" field.
  int? _totalScore;
  int get totalScore => _totalScore ?? 0;
  bool hasTotalScore() => _totalScore != null;

  // "maxScore" field.
  int? _maxScore;
  int get maxScore => _maxScore ?? 0;
  bool hasMaxScore() => _maxScore != null;

  // "currentIndex" field.
  int? _currentIndex;
  int get currentIndex => _currentIndex ?? 0;
  bool hasCurrentIndex() => _currentIndex != null;

  // "isSubmitted" field.
  bool? _isSubmitted;
  bool get isSubmitted => _isSubmitted ?? false;
  bool hasIsSubmitted() => _isSubmitted != null;

  // "answeredAt" field.
  DateTime? _answeredAt;
  DateTime? get answeredAt => _answeredAt;
  bool hasAnsweredAt() => _answeredAt != null;

  void _initializeFields() {
    _kuisRef = snapshotData['kuisRef'] as DocumentReference?;
    _kelasRef = snapshotData['kelasRef'] as DocumentReference?;
    _userID = snapshotData['userID'] as String?;
    _startedAt = snapshotData['startedAt'] as DateTime?;
    _submittedAt = snapshotData['submittedAt'] as DateTime?;
    _totalScore = castToType<int>(snapshotData['totalScore']);
    _maxScore = castToType<int>(snapshotData['maxScore']);
    _currentIndex = castToType<int>(snapshotData['currentIndex']);
    _isSubmitted = snapshotData['isSubmitted'] as bool?;
    _answeredAt = snapshotData['answeredAt'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('attempts');

  static Stream<AttemptsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AttemptsRecord.fromSnapshot(s));

  static Future<AttemptsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AttemptsRecord.fromSnapshot(s));

  static AttemptsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AttemptsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AttemptsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AttemptsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AttemptsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AttemptsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAttemptsRecordData({
  DocumentReference? kuisRef,
  DocumentReference? kelasRef,
  String? userID,
  DateTime? startedAt,
  DateTime? submittedAt,
  int? totalScore,
  int? maxScore,
  int? currentIndex,
  bool? isSubmitted,
  DateTime? answeredAt,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'kuisRef': kuisRef,
      'kelasRef': kelasRef,
      'userID': userID,
      'startedAt': startedAt,
      'submittedAt': submittedAt,
      'totalScore': totalScore,
      'maxScore': maxScore,
      'currentIndex': currentIndex,
      'isSubmitted': isSubmitted,
      'answeredAt': answeredAt,
    }.withoutNulls,
  );

  return firestoreData;
}

class AttemptsRecordDocumentEquality implements Equality<AttemptsRecord> {
  const AttemptsRecordDocumentEquality();

  @override
  bool equals(AttemptsRecord? e1, AttemptsRecord? e2) {
    return e1?.kuisRef == e2?.kuisRef &&
        e1?.kelasRef == e2?.kelasRef &&
        e1?.userID == e2?.userID &&
        e1?.startedAt == e2?.startedAt &&
        e1?.submittedAt == e2?.submittedAt &&
        e1?.totalScore == e2?.totalScore &&
        e1?.maxScore == e2?.maxScore &&
        e1?.currentIndex == e2?.currentIndex &&
        e1?.isSubmitted == e2?.isSubmitted &&
        e1?.answeredAt == e2?.answeredAt;
  }

  @override
  int hash(AttemptsRecord? e) => const ListEquality().hash([
        e?.kuisRef,
        e?.kelasRef,
        e?.userID,
        e?.startedAt,
        e?.submittedAt,
        e?.totalScore,
        e?.maxScore,
        e?.currentIndex,
        e?.isSubmitted,
        e?.answeredAt
      ]);

  @override
  bool isValidKey(Object? o) => o is AttemptsRecord;
}
