import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class KuisRecord extends FirestoreRecord {
  KuisRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "kelasRef" field.
  DocumentReference? _kelasRef;
  DocumentReference? get kelasRef => _kelasRef;
  bool hasKelasRef() => _kelasRef != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "subject" field.
  String? _subject;
  String get subject => _subject ?? '';
  bool hasSubject() => _subject != null;

  // "createdBy" field.
  String? _createdBy;
  String get createdBy => _createdBy ?? '';
  bool hasCreatedBy() => _createdBy != null;

  // "createdAt" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "isPublished" field.
  bool? _isPublished;
  bool get isPublished => _isPublished ?? false;
  bool hasIsPublished() => _isPublished != null;

  // "questionCount" field.
  int? _questionCount;
  int get questionCount => _questionCount ?? 0;
  bool hasQuestionCount() => _questionCount != null;

  void _initializeFields() {
    _kelasRef = snapshotData['kelasRef'] as DocumentReference?;
    _title = snapshotData['title'] as String?;
    _subject = snapshotData['subject'] as String?;
    _createdBy = snapshotData['createdBy'] as String?;
    _createdAt = snapshotData['createdAt'] as DateTime?;
    _isPublished = snapshotData['isPublished'] as bool?;
    _questionCount = castToType<int>(snapshotData['questionCount']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('kuis');

  static Stream<KuisRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => KuisRecord.fromSnapshot(s));

  static Future<KuisRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => KuisRecord.fromSnapshot(s));

  static KuisRecord fromSnapshot(DocumentSnapshot snapshot) => KuisRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static KuisRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      KuisRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'KuisRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is KuisRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createKuisRecordData({
  DocumentReference? kelasRef,
  String? title,
  String? subject,
  String? createdBy,
  DateTime? createdAt,
  bool? isPublished,
  int? questionCount,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'kelasRef': kelasRef,
      'title': title,
      'subject': subject,
      'createdBy': createdBy,
      'createdAt': createdAt,
      'isPublished': isPublished,
      'questionCount': questionCount,
    }.withoutNulls,
  );

  return firestoreData;
}

class KuisRecordDocumentEquality implements Equality<KuisRecord> {
  const KuisRecordDocumentEquality();

  @override
  bool equals(KuisRecord? e1, KuisRecord? e2) {
    return e1?.kelasRef == e2?.kelasRef &&
        e1?.title == e2?.title &&
        e1?.subject == e2?.subject &&
        e1?.createdBy == e2?.createdBy &&
        e1?.createdAt == e2?.createdAt &&
        e1?.isPublished == e2?.isPublished &&
        e1?.questionCount == e2?.questionCount;
  }

  @override
  int hash(KuisRecord? e) => const ListEquality().hash([
        e?.kelasRef,
        e?.title,
        e?.subject,
        e?.createdBy,
        e?.createdAt,
        e?.isPublished,
        e?.questionCount
      ]);

  @override
  bool isValidKey(Object? o) => o is KuisRecord;
}
