import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';

import '../../../core/failures/failure.dart';
import '../../../core/utils/app_file.dart';
import '../../../domain/entities/registration_status_entity.dart';
import '../../../domain/usecases/register_user_usecase.dart';
import '../../../domain/value_objects/bio.dart';
import '../../../domain/value_objects/email.dart';
import '../../../domain/value_objects/password.dart';
import '../../../domain/value_objects/username.dart';
import '../../formz/bio_input.dart';
import '../../formz/email_input.dart';
import '../../formz/password_input.dart';
import '../../formz/profile_photo.dart';
import '../../formz/username_input.dart';

part 'register_event.dart';
part 'register_state.dart';
part 'register_bloc.freezed.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  final RegisterUserUsecase registerUserUsecase;
  RegisterBloc(this.registerUserUsecase)
    : super(RegisterState(formKey: GlobalKey<FormState>())) {
    on<_Started>(_onStarted);
    on<_UsernameChanged>(_onUsernameChanged);
    on<_EmailChanged>(_onEmailChanged);
    on<_BioChanged>(_onBioChanged);
    on<_ImageChanged>(_onImageChanged);
    on<_PasswordChanged>(_onPasswordChanged);
    on<_Submitted>(_onSubmitted);
  }

  FutureOr<void> _onStarted(_Started event, Emitter<RegisterState> emit) {}

  FutureOr<void> _onUsernameChanged(
    _UsernameChanged event,
    Emitter<RegisterState> emit,
  ) {
    emit(
      state.copyWith(
        username: UsernameInput.dirty(event.value),
        regStatus: null,
      ),
    );
  }

  FutureOr<void> _onEmailChanged(
    _EmailChanged event,
    Emitter<RegisterState> emit,
  ) {
    emit(state.copyWith(email: EmailInput.dirty(event.value), regStatus: null));
  }

  FutureOr<void> _onBioChanged(_BioChanged event, Emitter<RegisterState> emit) {
    emit(state.copyWith(bio: BioInput.dirty(event.value), regStatus: null));
  }

  FutureOr<void> _onImageChanged(
    _ImageChanged event,
    Emitter<RegisterState> emit,
  ) async {
    if (event.image == null) {
      emit(state.copyWith(photo: ProfilePhoto.dirty(null), regStatus: null));
    } else {
      emit(
        state.copyWith(
          photo: ProfilePhoto.dirty(
            AppFile(
              bytes: await event.image!.readAsBytes(),
              path: event.image!.name,
              size: await event.image!.length(),
            ),
          ),
        ),
      );
    }
  }

  FutureOr<void> _onPasswordChanged(
    _PasswordChanged event,
    Emitter<RegisterState> emit,
  ) {
    emit(
      state.copyWith(
        password: PasswordInput.dirty(event.value),
        regStatus: null,
      ),
    );
  }

  FutureOr<void> _onSubmitted(
    _Submitted event,
    Emitter<RegisterState> emit,
  ) async {
    emit(
      state.copyWith(
        username: UsernameInput.dirty(event.username),
        email: EmailInput.dirty(event.email),
        bio: BioInput.dirty(event.bio),
        password: PasswordInput.dirty(event.password),
        regStatus: null,
      ),
    );
    if (!state.formKey.currentState!.validate()) return;
    if (!state.photo.isValid) return;

    emit(state.copyWith(status: FormzSubmissionStatus.inProgress));

    // final res = registerUserUsecase(
    //   RegisterParams(
    //     username: Username(state.username.value),
    //     email: Email(state.email.value),
    //     password: Password(state.password.value),
    //     bio: Bio(state.bio.value),
    //     image: state.photo.value!.bytes,
    //   ),
    // );
    //
    // await for (final result in res) {
    //   print(
    //     '------------------------------------ Registration Status Got ------------------------------------',
    //   );
    //   emit(
    //     state.copyWith(
    //       regStatus: result,
    //       status: FormzSubmissionStatus.success,
    //     ),
    //   );
    // }
    // emit(state.copyWith(status: FormzSubmissionStatus.success));

    bool error = false;

    await emit.forEach(
      registerUserUsecase(
        RegisterParams(
          username: Username(state.username.value),
          email: Email(state.email.value),
          password: Password(state.password.value),
          bio: Bio(state.bio.value),
          image: state.photo.value!.bytes,
        ),
      ),
      onData: (data) {
        return state.copyWith(regStatus: data);
      },
      onError: (error, stackTrace) {
        error = true;
        return state.copyWith(
          status: FormzSubmissionStatus.failure,
          regStatus: RegistrationStatusEntity.error(
            ServerFailure(error.toString()),
          ),
        );
      },
    );
    if (!error) {
      emit(state.copyWith(status: FormzSubmissionStatus.success));
    }
  }
}
