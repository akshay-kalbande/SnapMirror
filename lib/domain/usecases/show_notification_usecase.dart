import 'package:dartz/dartz.dart';

import '../../core/failures/failure.dart';
import '../../core/usecases/usecase.dart';
import '../entities/notification_creation_entity.dart';

class ShowNotificationUsecase
    implements Usecase<void, NotificationCreationEntity> {
  @override
  Future<Either<Failure, void>> call(NotificationCreationEntity? params) {
    // TODO: implement call
    throw UnimplementedError();
  }
}
