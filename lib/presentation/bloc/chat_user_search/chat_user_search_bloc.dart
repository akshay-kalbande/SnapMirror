import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stream_transform/stream_transform.dart';

import '../../../common/messages/screen_message.dart';
import '../../../core/app_service.dart';
import '../../../domain/entities/user_entity.dart';
import '../../../domain/usecases/search_following_user_usecase.dart';

part 'chat_user_search_event.dart';
part 'chat_user_search_state.dart';
part 'chat_user_search_bloc.freezed.dart';

class ChatUserSearchBloc
    extends Bloc<ChatUserSearchEvent, ChatUserSearchState> {
  final SearchFollowingUserUsecase searchFollowingUserUsecase;
  ChatUserSearchBloc(this.searchFollowingUserUsecase)
    : super(ChatUserSearchState(users: [])) {
    on<_QueryChanged>(
      _onQueryChanged,
      transformer: (events, mapper) =>
          events.debounce(const Duration(milliseconds: 300)).switchMap(mapper),
    );

    on<_Cleared>(_onCleared);
  }

  FutureOr<void> _onQueryChanged(
    _QueryChanged event,
    Emitter<ChatUserSearchState> emit,
  ) async {
    print('query changed. search following user');
    if (event.text.length < 3) return;
    emit(state.copyWith(isLoading: true));
    (await searchFollowingUserUsecase(
      SearchFollowingUserParams(
        text: event.text,
        user: AppService.instance.user,
      ),
    )).fold(
      (l) {
        return emit(
          state.copyWith(
            isLoading: false,
            message: ScreenMessage(
              content: l.message,
              timestamp: DateTime.now(),
              isError: true,
            ),
          ),
        );
      },
      (r) {
        return emit(state.copyWith(isLoading: false, message: null, users: r));
      },
    );
  }

  FutureOr<void> _onCleared(
    _Cleared event,
    Emitter<ChatUserSearchState> emit,
  ) async {
    if (state.users.isNotEmpty) {
      emit(state.copyWith(users: []));
    }
  }
}
