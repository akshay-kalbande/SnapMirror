import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../common/messages/screen_message.dart';
import '../../../core/app_service.dart';
import '../../../domain/entities/user_entity.dart';
import '../../../domain/usecases/update_profile_usecase.dart';

part 'edit_profile_event.dart';
part 'edit_profile_state.dart';
part 'edit_profile_bloc.freezed.dart';

class EditProfileBloc extends Bloc<EditProfileEvent, EditProfileState> {
  final UpdateProfileUsecase updateProfileUsecase;
  late final UserEntity user;
  EditProfileBloc(this.updateProfileUsecase)
    : super(EditProfileState._(user: AppService.instance.user)) {
    user = AppService.instance.user;
    on<_Saved>(_onSaved);
  }

  FutureOr<void> _onSaved(_Saved event, Emitter<EditProfileState> emit) async {
    emit(state.copyWith(isLoading: true, message: null));
    if (event.name.isEmpty || event.bio.isEmpty) {
      emit(
        state.copyWith(
          isLoading: false,
          message: ScreenMessage(
            content: 'Name or/and bio cannot be empty!',
            timestamp: DateTime.now(),
            isError: true,
          ),
        ),
      );
      return;
    }
    final updatedUser = user.copyWith(username: event.name, bio: event.bio);
    if (user == updatedUser) {
      emit(state.copyWith(isLoading: true, message: null));
      return;
    }
    final res = await updateProfileUsecase(updatedUser);
    res.fold(
      (failure) => emit(
        state.copyWith(
          isLoading: false,
          message: ScreenMessage(
            content: failure.message,
            timestamp: DateTime.now(),
            isError: true,
          ),
        ),
      ),
      (success) {
        AppService.instance.user = success;
        emit(
          state.copyWith(
            user: success,
            isLoading: false,
            message: ScreenMessage(
              content: 'User updated successfully!',
              timestamp: DateTime.now(),
              isError: false,
            ),
          ),
        );
      },
    );
  }
}
