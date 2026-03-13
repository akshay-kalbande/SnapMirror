import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '../../core/failures/failure.dart';
import '../../core/usecases/usecase.dart';
import '../repositories/user_repository.dart';

class RemovePostFromBookmarkUsecase
    implements Usecase<void, BookmarkPostParams> {
  final UserRepository repository;

  RemovePostFromBookmarkUsecase(this.repository);
  @override
  Future<Either<Failure, void>> call(BookmarkPostParams params) async {
    return await repository.removeFromBookmark(params.postID, params.userID);
  }
}

class BookmarkPostParams extends Equatable {
  final String postID;
  final String userID;

  const BookmarkPostParams({required this.postID, required this.userID});
  @override
  List<Object?> get props => [postID, userID];
}
