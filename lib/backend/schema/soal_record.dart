import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SoalRecord extends FirestoreRecord {
  SoalRecord._(
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

  // "story" field.
  String? _story;
  String get story => _story ?? '';
  bool hasStory() => _story != null;

  // "question" field.
  String? _question;
  String get question => _question ?? '';
  bool hasQuestion() => _question != null;

  // "option1" field.
  String? _option1;
  String get option1 => _option1 ?? '';
  bool hasOption1() => _option1 != null;

  // "option2" field.
  String? _option2;
  String get option2 => _option2 ?? '';
  bool hasOption2() => _option2 != null;

  // "option3" field.
  String? _option3;
  String get option3 => _option3 ?? '';
  bool hasOption3() => _option3 != null;

  // "option4" field.
  String? _option4;
  String get option4 => _option4 ?? '';
  bool hasOption4() => _option4 != null;

  // "correctIndex" field.
  int? _correctIndex;
  int get correctIndex => _correctIndex ?? 0;
  bool hasCorrectIndex() => _correctIndex != null;

  // "score" field.
  int? _score;
  int get score => _score ?? 0;
  bool hasScore() => _score != null;

  // "order" field.
  int? _order;
  int get order => _order ?? 0;
  bool hasOrder() => _order != null;

  // "createdAt" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  void _initializeFields() {
    _kuisRef = snapshotData['kuisRef'] as DocumentReference?;
    _kelasRef = snapshotData['kelasRef'] as DocumentReference?;
    _story = snapshotData['story'] as String?;
    _question = snapshotData['question'] as String?;
    _option1 = snapshotData['option1'] as String?;
    _option2 = snapshotData['option2'] as String?;
    _option3 = snapshotData['option3'] as String?;
    _option4 = snapshotData['option4'] as String?;
    _correctIndex = castToType<int>(snapshotData['correctIndex']);
    _score = castToType<int>(snapshotData['score']);
    _order = castToType<int>(snapshotData['order']);
    _createdAt = snapshotData['createdAt'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('soal');

  static Stream<SoalRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SoalRecord.fromSnapshot(s));

  static Future<SoalRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SoalRecord.fromSnapshot(s));

  static SoalRecord fromSnapshot(DocumentSnapshot snapshot) => SoalRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SoalRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SoalRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SoalRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SoalRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSoalRecordData({
  DocumentReference? kuisRef,
  DocumentReference? kelasRef,
  String? story,
  String? question,
  String? option1,
  String? option2,
  String? option3,
  String? option4,
  int? correctIndex,
  int? score,
  int? order,
  DateTime? createdAt,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'kuisRef': kuisRef,
      'kelasRef': kelasRef,
      'story': story,
      'question': question,
      'option1': option1,
      'option2': option2,
      'option3': option3,
      'option4': option4,
      'correctIndex': correctIndex,
      'score': score,
      'order': order,
      'createdAt': createdAt,
    }.withoutNulls,
  );

  return firestoreData;
}

class SoalRecordDocumentEquality implements Equality<SoalRecord> {
  const SoalRecordDocumentEquality();

  @override
  bool equals(SoalRecord? e1, SoalRecord? e2) {
    return e1?.kuisRef == e2?.kuisRef &&
        e1?.kelasRef == e2?.kelasRef &&
        e1?.story == e2?.story &&
        e1?.question == e2?.question &&
        e1?.option1 == e2?.option1 &&
        e1?.option2 == e2?.option2 &&
        e1?.option3 == e2?.option3 &&
        e1?.option4 == e2?.option4 &&
        e1?.correctIndex == e2?.correctIndex &&
        e1?.score == e2?.score &&
        e1?.order == e2?.order &&
        e1?.createdAt == e2?.createdAt;
  }

  @override
  int hash(SoalRecord? e) => const ListEquality().hash([
        e?.kuisRef,
        e?.kelasRef,
        e?.story,
        e?.question,
        e?.option1,
        e?.option2,
        e?.option3,
        e?.option4,
        e?.correctIndex,
        e?.score,
        e?.order,
        e?.createdAt
      ]);

  @override
  bool isValidKey(Object? o) => o is SoalRecord;
}
