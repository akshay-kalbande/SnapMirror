// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'following_feed_bloc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FollowingFeedState _$FollowingFeedStateFromJson(Map<String, dynamic> json) =>
    _FollowingFeedState(
      isLoading: json['isLoading'] as bool? ?? false,
      posts: _$JsonConverterFromJson<Map<String, dynamic>, PageResult<String>>(
        json['posts'],
        const PageResultStringConverter().fromJson,
      ),
    );

Map<String, dynamic> _$FollowingFeedStateToJson(_FollowingFeedState instance) =>
    <String, dynamic>{
      'isLoading': instance.isLoading,
      'posts': _$JsonConverterToJson<Map<String, dynamic>, PageResult<String>>(
        instance.posts,
        const PageResultStringConverter().toJson,
      ),
    };

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) => json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) => value == null ? null : toJson(value);
