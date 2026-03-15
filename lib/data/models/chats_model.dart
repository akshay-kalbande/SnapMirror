import 'package:freezed_annotation/freezed_annotation.dart';

import 'chat_model.dart';

part 'chats_model.freezed.dart';
part 'chats_model.g.dart';

@Freezed()
sealed class ChatsModel with _$ChatsModel {
  const ChatsModel._();
  const factory ChatsModel({required final List<ChatModel> chats}) =
      _ChatsModel;

  factory ChatsModel.fromJson(Map<String, dynamic> json) =>
      _$ChatsModelFromJson(json);
}
