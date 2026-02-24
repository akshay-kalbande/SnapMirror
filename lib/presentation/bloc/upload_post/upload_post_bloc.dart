import 'dart:async';
import 'dart:typed_data';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/app_service.dart';
import '../../../domain/usecases/upload_post_usecase.dart';
import '../../../common/messages/screen_message.dart';

part 'upload_post_event.dart';
part 'upload_post_state.dart';
part 'upload_post_bloc.freezed.dart';

class UploadPostBloc extends Bloc<UploadPostEvent, UploadPostState> {
  final UploadPostUsecase uploadPostUsecase;
  UploadPostBloc(this.uploadPostUsecase) : super(const UploadPostState()) {
    on<_PostFileSelected>(_onPostFileSelected);
    on<_PostFileSelectionCancelled>(_onPostFileSelectionCancelled);
    on<_ChangePostFile>(_onChangePostFile);
    on<_PostSubmitted>(_onPostSubmitted);
  }

  FutureOr<void> _onPostFileSelected(
    _PostFileSelected event,
    Emitter<UploadPostState> emit,
  ) {
    emit(
      state.copyWith(
        file: event.file,
        notification: null,
        post: null,
        pickImage: false,
      ),
    );
  }

  FutureOr<void> _onChangePostFile(
    _ChangePostFile event,
    Emitter<UploadPostState> emit,
  ) {
    emit(state.copyWith(pickImage: true, notification: null, post: null));
  }

  FutureOr<void> _onPostSubmitted(
    _PostSubmitted event,
    Emitter<UploadPostState> emit,
  ) async {
    emit(
      state.copyWith(
        post: UploadPostParams(
          caption: event.caption,
          uid: AppService.instance.user.uid,
          username: AppService.instance.user.username,
          profImageUrl: AppService.instance.user.profileImageUrl,
          file: state.file!,
        ),
      ),
    );
    // emit(state.copyWith(isLoading: true, notification: null));
    // (uploadPostUsecase(
    //   UploadPostParams(
    //     caption: event.caption,
    //     uid: AppService.instance.user.uid,
    //     username: AppService.instance.user.username,
    //     profImageUrl: AppService.instance.user.profileImageUrl,
    //     file: state.file!,
    //   ),
    // )).listen((result) {
    //   result.fold(
    //     (l) => emit(
    //       state.copyWith(
    //         isLoading: false,
    //         notification: ScreenMessage(
    //           content: l.message,
    //           timestamp: DateTime.now(),
    //           isError: true,
    //         ),
    //       ),
    //     ),
    //     (r) {
    //       // r.fold((l) {
    //       //   l.map(started: (value) => , progress: progress, success: success);
    //       // }, (r) {});
    //     },
    //   );
    // });
    // .fold(
    //   (l) => emit(
    //     state.copyWith(
    //       isLoading: false,
    //       notification: ScreenMessage(
    //         content: l.message,
    //         timestamp: DateTime.now(),
    //         isError: true,
    //       ),
    //     ),
    //   ),
    //   (r) => emit(
    //     state.copyWith(
    //       isLoading: false,
    //       notification: ScreenMessage(
    //         content: 'post uploaded successfully!',
    //         timestamp: DateTime.now(),
    //         isError: false,
    //       ),
    //     ),
    //   ),
    // );
    // print('done');
  }

  FutureOr<void> _onPostFileSelectionCancelled(
    _PostFileSelectionCancelled event,
    Emitter<UploadPostState> emit,
  ) {
    emit(state.copyWith(pickImage: false));
  }
}
