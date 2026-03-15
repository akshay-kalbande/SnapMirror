import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../common/messages/screen_message.dart';
import '../../../core/app_service.dart';
import '../../../domain/entities/chat_preview_entity.dart';
import '../../../domain/entities/user_entity.dart';
import '../../../domain/usecases/get_chat_preview_list_usecase.dart';

part 'chat_preview_list_event.dart';
part 'chat_preview_list_state.dart';
part 'chat_preview_list_bloc.freezed.dart';

class ChatPreviewListBloc
    extends Bloc<ChatPreviewListEvent, ChatPreviewListState> {
  final GetChatPreviewListUsecase getChatPreviewListUsecase;
  ChatPreviewListBloc(this.getChatPreviewListUsecase)
    : super(
        ChatPreviewListState(
          user: AppService.instance.user,
          chatPreviewList: [],
        ),
      ) {
    on<_Started>(_onStarted);
  }

  FutureOr<void> _onStarted(
    _Started event,
    Emitter<ChatPreviewListState> emit,
  ) async {
    print('Started Chat Preview');
    final res = await getChatPreviewListUsecase(AppService.instance.user);
    res.fold(
      (l) {
        print('Chat List Preview Error: ${l.message}');
        emit(
          state.copyWith(
            message: ScreenMessage(
              content: l.message,
              timestamp: DateTime.now(),
              isError: true,
            ),
          ),
        );
      },
      (r) {
        print('Chat List Preview Success: ${r.length}');
        emit(state.copyWith(chatPreviewList: r));
      },
    );
  }
}
