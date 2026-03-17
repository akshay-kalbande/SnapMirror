import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../common/messages/screen_message.dart';
import '../../../core/app_service.dart';
import '../../../domain/entities/chat_entity.dart';
import '../../../domain/entities/user_entity.dart';
import '../../../domain/usecases/clear_unread_count_usecase.dart';
import '../../../domain/usecases/get_chat_stream_usecase.dart';
import '../../../domain/usecases/get_user_chats_usecase.dart';
import '../../../domain/usecases/mark_all_messages_as_read_usecase.dart';
import '../../../domain/usecases/send_message_usecase.dart';

part 'user_chat_event.dart';
part 'user_chat_state.dart';
part 'user_chat_bloc.freezed.dart';

class UserChatBloc extends Bloc<UserChatEvent, UserChatState> {
  final GetUserChatsUsecase getUserChatsUsecase;
  final SendMessageUsecase sendMessageUsecase;
  final GetChatStreamUsecase getChatStreamUsecase;
  final ClearUnreadCountUsecase clearUnreadCountUsecase;
  final MarkAllMessagesAsReadUsecase markAllMessagesAsReadUsecase;
  final UserEntity user;
  late final StreamSubscription<List<ChatEntity>> chatStreamSubscription;
  UserChatBloc({
    required this.getUserChatsUsecase,
    required this.user,
    required this.sendMessageUsecase,
    required this.getChatStreamUsecase,
    required this.clearUnreadCountUsecase,
    required this.markAllMessagesAsReadUsecase,
  }) : super(
         UserChatState(self: AppService.instance.user, user: user, chats: []),
       ) {
    on<_Started>(_onStarted);
    on<_SendMessage>(_onSendMessage);
    on<_MessageReceived>(_onMessageReceived);
    subscribeToChatStream();
    _clearUnreadCountAndMarkAllMessagesAsRead();
  }

  FutureOr<void> _onStarted(_Started event, Emitter<UserChatState> emit) async {
    emit(state.copyWith(isLoading: true));
    final res = await getUserChatsUsecase(
      UserChatParams(self: state.self, userId: state.user.uid),
    );
    res.fold(
      (l) => emit(
        state.copyWith(
          isLoading: false,
          message: ScreenMessage(
            content: l.message,
            timestamp: DateTime.now(),
            isError: true,
          ),
        ),
      ),
      (r) => emit(state.copyWith(isLoading: false, message: null, chats: r)),
    );
  }

  FutureOr<void> _onSendMessage(
    _SendMessage event,
    Emitter<UserChatState> emit,
  ) async {
    final res = await sendMessageUsecase(
      SendMessageParams(
        self: state.self,
        user: state.user,
        message: ChatEntity(
          text: event.text,
          seen: false,
          senderId: state.self.uid,
          timestamp: DateTime.now(),
        ),
      ),
    );
    res.fold(
      (l) => emit(
        state.copyWith(
          message: ScreenMessage(
            content: l.message,
            timestamp: DateTime.now(),
            isError: true,
          ),
        ),
      ),
      (r) => null, //emit(state.copyWith(chats: [r, ...state.chats]))
    );
  }

  void subscribeToChatStream() {
    chatStreamSubscription = getChatStreamUsecase(
      UserChatParams(self: state.self, userId: state.user.uid),
    ).listen((event) => add(UserChatEvent.messageReceived(event)));
  }

  @override
  Future<void> close() {
    chatStreamSubscription.cancel();
    return super.close();
  }

  FutureOr<void> _onMessageReceived(
    _MessageReceived event,
    Emitter<UserChatState> emit,
  ) {
    emit(state.copyWith(chats: [...event.chats, ...state.chats]));
    _clearUnreadCountAndMarkAllMessagesAsRead();
  }

  Future<void> _clearUnreadCountAndMarkAllMessagesAsRead() async {
    // await clearUnreadCountUsecase(
    //   UserChatParams(self: state.self, userId: state.user.uid),
    // );
    // await markAllMessagesAsReadUsecase(
    //   UserChatParams(self: state.self, userId: state.user.uid),
    // );
    final res = await Future.wait([
      clearUnreadCountUsecase(
        UserChatParams(self: state.self, userId: state.user.uid),
      ),
      markAllMessagesAsReadUsecase(
        UserChatParams(self: state.self, userId: state.user.uid),
      ),
    ]);
    // res.map(
    //   (e) => e.fold(
    //     (l) => print('Clear failed: ${l.message}'),
    //     (r) => print('Cleared unread count'),
    //   ),
    // );
  }
}
