import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PostRecord extends FirestoreRecord {
  PostRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "body" field.
  String? _body;
  String get body => _body ?? '';
  bool hasBody() => _body != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "user_id" field.
  DocumentReference? _userId;
  DocumentReference? get userId => _userId;
  bool hasUserId() => _userId != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "likes" field.
  List<DocumentReference>? _likes;
  List<DocumentReference> get likes => _likes ?? const [];
  bool hasLikes() => _likes != null;

  // "index_community" field.
  DocumentReference? _indexCommunity;
  DocumentReference? get indexCommunity => _indexCommunity;
  bool hasIndexCommunity() => _indexCommunity != null;

  void _initializeFields() {
    _body = snapshotData['body'] as String?;
    _createdAt = snapshotData['created_at'] as DateTime?;
    _userId = snapshotData['user_id'] as DocumentReference?;
    _status = snapshotData['status'] as String?;
    _likes = getDataList(snapshotData['likes']);
    _indexCommunity = snapshotData['index_community'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('post');

  static Stream<PostRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PostRecord.fromSnapshot(s));

  static Future<PostRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PostRecord.fromSnapshot(s));

  static PostRecord fromSnapshot(DocumentSnapshot snapshot) => PostRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PostRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PostRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PostRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PostRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPostRecordData({
  String? body,
  DateTime? createdAt,
  DocumentReference? userId,
  String? status,
  DocumentReference? indexCommunity,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'body': body,
      'created_at': createdAt,
      'user_id': userId,
      'status': status,
      'index_community': indexCommunity,
    }.withoutNulls,
  );

  return firestoreData;
}

class PostRecordDocumentEquality implements Equality<PostRecord> {
  const PostRecordDocumentEquality();

  @override
  bool equals(PostRecord? e1, PostRecord? e2) {
    const listEquality = ListEquality();
    return e1?.body == e2?.body &&
        e1?.createdAt == e2?.createdAt &&
        e1?.userId == e2?.userId &&
        e1?.status == e2?.status &&
        listEquality.equals(e1?.likes, e2?.likes) &&
        e1?.indexCommunity == e2?.indexCommunity;
  }

  @override
  int hash(PostRecord? e) => const ListEquality().hash([
        e?.body,
        e?.createdAt,
        e?.userId,
        e?.status,
        e?.likes,
        e?.indexCommunity
      ]);

  @override
  bool isValidKey(Object? o) => o is PostRecord;
}
