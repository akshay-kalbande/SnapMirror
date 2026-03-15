// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chats_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ChatsModel _$ChatsModelFromJson(Map<String, dynamic> json) => _ChatsModel(
  chats: (json['chats'] as List<dynamic>)
      .map((e) => ChatModel.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$ChatsModelToJson(_ChatsModel instance) =>
    <String, dynamic>{'chats': instance.chats};
