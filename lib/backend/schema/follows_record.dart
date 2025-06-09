import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FollowsRecord extends FirestoreRecord {
  FollowsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "following_user_id" field.
  DocumentReference? _followingUserId;
  DocumentReference? get followingUserId => _followingUserId;
  bool hasFollowingUserId() => _followingUserId != null;

  // "followed_user_id" field.
  DocumentReference? _followedUserId;
  DocumentReference? get followedUserId => _followedUserId;
  bool hasFollowedUserId() => _followedUserId != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  void _initializeFields() {
    _followingUserId = snapshotData['following_user_id'] as DocumentReference?;
    _followedUserId = snapshotData['followed_user_id'] as DocumentReference?;
    _createdAt = snapshotData['created_at'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('follows');

  static Stream<FollowsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => FollowsRecord.fromSnapshot(s));

  static Future<FollowsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => FollowsRecord.fromSnapshot(s));

  static FollowsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      FollowsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static FollowsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      FollowsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'FollowsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is FollowsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createFollowsRecordData({
  DocumentReference? followingUserId,
  DocumentReference? followedUserId,
  DateTime? createdAt,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'following_user_id': followingUserId,
      'followed_user_id': followedUserId,
      'created_at': createdAt,
    }.withoutNulls,
  );

  return firestoreData;
}

class FollowsRecordDocumentEquality implements Equality<FollowsRecord> {
  const FollowsRecordDocumentEquality();

  @override
  bool equals(FollowsRecord? e1, FollowsRecord? e2) {
    return e1?.followingUserId == e2?.followingUserId &&
        e1?.followedUserId == e2?.followedUserId &&
        e1?.createdAt == e2?.createdAt;
  }

  @override
  int hash(FollowsRecord? e) => const ListEquality()
      .hash([e?.followingUserId, e?.followedUserId, e?.createdAt]);

  @override
  bool isValidKey(Object? o) => o is FollowsRecord;
}
