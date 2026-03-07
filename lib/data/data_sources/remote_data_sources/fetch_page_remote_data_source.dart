import 'package:cloud_firestore/cloud_firestore.dart';
import '../../../core/app_exceptions/exception.dart';
import '../../../domain/entities/page_request_entity.dart';
import '../../models/page_request_model.dart';
import '../../models/page_result_model.dart';

abstract class FetchPageRemoteDataSource {
  FirebaseFirestore get firestore;
  Future<PageResultModel<T>> fetchNextPage<T>(
    CollectionReference collectionRef,
    PageRequestModel pageRequest,
    T Function(Map<String, dynamic> json) fromJson,
  );
}

class FetchPageRemoteDataSourceImpl implements FetchPageRemoteDataSource {
  final FirebaseFirestore _firestore;

  @override
  FirebaseFirestore get firestore => _firestore;

  FetchPageRemoteDataSourceImpl(this._firestore);

  @override
  Future<PageResultModel<T>> fetchNextPage<T>(
    CollectionReference collectionRef,
    PageRequestModel pageRequest,
    T Function(Map<String, dynamic> json) fromJson,
  ) async {
    try {
      Query query = collectionRef
          .orderBy(
            pageRequest.sortBy,
            descending: pageRequest.sortType == PageSortType.desc,
          )
          .limit(pageRequest.pageSize);
      pageRequest.isEqualToFieldMap.forEach(
        (key, value) => query = query.where(key, isEqualTo: value),
      );

      if (pageRequest.nextPageToken is DocumentSnapshot) {
        query = query.startAfterDocument(
          pageRequest.nextPageToken as DocumentSnapshot,
        );
      }

      final querySnapshot = await query.get();
      final items = querySnapshot.docs
          .map(
            (docSnapshot) => fromJson(
              (docSnapshot.data() as Map<String, dynamic>)
                ..addAll({'id': docSnapshot.id}),
            ),
          )
          .toList();

      final bool hasMorePages =
          querySnapshot.docs.length == pageRequest.pageSize;

      final DocumentSnapshot? nextCursor = hasMorePages
          ? querySnapshot.docs.last
          : null;

      return PageResultModel<T>(
        items: items,
        nextPageToken: nextCursor,
        isLastPage: !hasMorePages,
        totalItemCount: querySnapshot
            .size, // Note: This is size of current batch, not total collection
      );
    } catch (e) {
      throw ServerException(message: e.toString());
    }
  }
}
