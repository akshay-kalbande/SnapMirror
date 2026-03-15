import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_model.freezed.dart';
part 'chat_model.g.dart';

@Freezed()
sealed class ChatModel with _$ChatModel {
  const ChatModel._();
  const factory ChatModel({@JsonKey(name: 'text') required final String text}) =
      _ChatModel;

  factory ChatModel.fromJson(Map<String, dynamic> json) =>
      _$ChatModelFromJson(json);
}
