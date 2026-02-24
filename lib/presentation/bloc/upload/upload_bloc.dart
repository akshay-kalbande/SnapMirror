import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/post_upload_result_entity.dart';
import '../../../domain/usecases/upload_post_usecase.dart';

part 'upload_event.dart';
part 'upload_state.dart';

part 'upload_bloc.freezed.dart';

class UploadBloc extends Bloc<UploadEvent, UploadState> {
  final UploadPostUsecase uploadPostUsecase;
  UploadBloc(this.uploadPostUsecase) : super(const UploadState()) {
    on<_Started>(_onStarted);
    on<_Upload>(_onUpload);
  }

  FutureOr<void> _onStarted(_Started event, Emitter<UploadState> emit) async {
    // emit(state.copyWith(isUploading: true, progress: 0));
    // for (int i = 1; i <= 10; i++) {
    //   await Future.delayed(const Duration(milliseconds: 500));
    //   emit(state.copyWith(progress: i / 10));
    // }
    // await Future.delayed(const Duration(milliseconds: 200));
    // emit(state.copyWith(isUploading: false, progress: 0));
  }

  FutureOr<void> _onUpload(_Upload event, Emitter<UploadState> emit) async {
    if (!state.canUpload) return;
    final uploadResult = uploadPostUsecase(event.post);
    await for (final result in uploadResult) {
      emit(UploadState(postUploadResult: result, canUpload: false));
    }
    await Future.delayed(const Duration(seconds: 1));
    emit(state.copyWith(canUpload: true, postUploadResult: null));
  }
}
