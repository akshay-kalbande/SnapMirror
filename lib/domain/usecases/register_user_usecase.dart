import 'dart:async';
import 'dart:typed_data';
import 'package:equatable/equatable.dart';

import '../../core/failures/failure.dart';
import '../../core/usecases/usecase.dart';
import '../entities/file_upload_result_entity.dart';
import '../entities/registration_status_entity.dart';
import '../entities/user_entity.dart';
import '../repositories/auth_repository.dart';
import '../repositories/user_repository.dart';
import '../value_objects/bio.dart';
import '../value_objects/email.dart';
import '../value_objects/password.dart';
import '../value_objects/username.dart';

class RegisterUserUsecase
    implements StreamUsecase<RegistrationStatusEntity, RegisterParams> {
  final UserRepository userRepository;
  final AuthRepository authRepository;

  RegisterUserUsecase({
    required this.userRepository,
    required this.authRepository,
  });

  @override
  Stream<RegistrationStatusEntity> call(RegisterParams params) async* {
    yield RegistrationStatusEntity.creatingProfile();
    await Future.delayed(const Duration(milliseconds: 500));
    // return;
    Failure? failure;
    late final String uid;
    (await authRepository.createUser(
      params.email.value,
      params.password.value,
    )).fold((l) => failure = l, (r) => uid = r);
    if (failure != null) {
      yield RegistrationStatusEntity.error(failure!);
      return;
    }
    yield RegistrationStatusEntity.profileCreated();

    // final photoRes = userRepository.uploadProfilePhoto(params.image, uid);

    await for (final res in userRepository.uploadProfilePhoto(
      params.image,
      uid,
    )) {
      final RegistrationStatusEntity result = await res.fold(
        (failure) async => RegistrationStatusEntity.error(failure),
        (fileResult) async {
          return await fileResult.when(
            started: () => const RegistrationStatusEntity.fileUpload(
              FileUploadResultEntity.progress(0),
            ),
            progress: (p) => RegistrationStatusEntity.fileUpload(
              FileUploadResultEntity.progress(p),
            ),
            success: (path) async {
              final updateRes = await userRepository.registerUser(
                params.user(uid).copyWith(profileImageUrl: path),
              );
              return updateRes.fold(
                (l) => RegistrationStatusEntity.error(l),
                (r) => RegistrationStatusEntity.savedProfile(r),
              );
            },
          );
        },
      );

      yield result;
    }
  }
}

class RegisterParams extends Equatable {
  final Username username;
  final Email email;
  final Password password;
  final Bio bio;
  final Uint8List image;

  const RegisterParams({
    required this.username,
    required this.email,
    required this.password,
    required this.bio,
    required this.image,
  });
  @override
  List<Object?> get props => [username, email, password, bio, image];

  UserEntity user(final String uid) => UserEntity(
    username: username.value,
    email: email.value,
    bio: bio.value,
    uid: uid,
    profileImageUrl: '',
    totalPosts: 0,
    followers: [],
    following: [],
  );
}
