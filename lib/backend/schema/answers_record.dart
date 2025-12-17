import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AnswersRecord extends FirestoreRecord {
  AnswersRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "attemptRef" field.
  DocumentReference? _attemptRef;
  DocumentReference? get attemptRef => _attemptRef;
  bool hasAttemptRef() => _attemptRef != null;

  // "soalref" field.
  DocumentReference? _soalref;
  DocumentReference? get soalref => _soalref;
  bool hasSoalref() => _soalref != null;

  // "isCorrect" field.
  bool? _isCorrect;
  bool get isCorrect => _isCorrect ?? false;
  bool hasIsCorrect() => _isCorrect != null;

  // "selectedIndex" field.
  int? _selectedIndex;
  int get selectedIndex => _selectedIndex ?? 0;
  bool hasSelectedIndex() => _selectedIndex != null;

  // "scoreEarned" field.
  int? _scoreEarned;
  int get scoreEarned => _scoreEarned ?? 0;
  bool hasScoreEarned() => _scoreEarned != null;

  // "answeredat" field.
  DateTime? _answeredat;
  DateTime? get answeredat => _answeredat;
  bool hasAnsweredat() => _answeredat != null;

  void _initializeFields() {
    _attemptRef = snapshotData['attemptRef'] as DocumentReference?;
    _soalref = snapshotData['soalref'] as DocumentReference?;
    _isCorrect = snapshotData['isCorrect'] as bool?;
    _selectedIndex = castToType<int>(snapshotData['selectedIndex']);
    _scoreEarned = castToType<int>(snapshotData['scoreEarned']);
    _answeredat = snapshotData['answeredat'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('answers');

  static Stream<AnswersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AnswersRecord.fromSnapshot(s));

  static Future<AnswersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AnswersRecord.fromSnapshot(s));

  static AnswersRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AnswersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AnswersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AnswersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AnswersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AnswersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAnswersRecordData({
  DocumentReference? attemptRef,
  DocumentReference? soalref,
  bool? isCorrect,
  int? selectedIndex,
  int? scoreEarned,
  DateTime? answeredat,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'attemptRef': attemptRef,
      'soalref': soalref,
      'isCorrect': isCorrect,
      'selectedIndex': selectedIndex,
      'scoreEarned': scoreEarned,
      'answeredat': answeredat,
    }.withoutNulls,
  );

  return firestoreData;
}

class AnswersRecordDocumentEquality implements Equality<AnswersRecord> {
  const AnswersRecordDocumentEquality();

  @override
  bool equals(AnswersRecord? e1, AnswersRecord? e2) {
    return e1?.attemptRef == e2?.attemptRef &&
        e1?.soalref == e2?.soalref &&
        e1?.isCorrect == e2?.isCorrect &&
        e1?.selectedIndex == e2?.selectedIndex &&
        e1?.scoreEarned == e2?.scoreEarned &&
        e1?.answeredat == e2?.answeredat;
  }

  @override
  int hash(AnswersRecord? e) => const ListEquality().hash([
        e?.attemptRef,
        e?.soalref,
        e?.isCorrect,
        e?.selectedIndex,
        e?.scoreEarned,
        e?.answeredat
      ]);

  @override
  bool isValidKey(Object? o) => o is AnswersRecord;
}
