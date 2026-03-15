// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_preview_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ChatPreviewEntity {

 String get id; String get lastMessage; DateTime get lastMessageTime; String get lastSenderId; UserEntity get user; int get unreadCount;
/// Create a copy of ChatPreviewEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChatPreviewEntityCopyWith<ChatPreviewEntity> get copyWith => _$ChatPreviewEntityCopyWithImpl<ChatPreviewEntity>(this as ChatPreviewEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatPreviewEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.lastMessage, lastMessage) || other.lastMessage == lastMessage)&&(identical(other.lastMessageTime, lastMessageTime) || other.lastMessageTime == lastMessageTime)&&(identical(other.lastSenderId, lastSenderId) || other.lastSenderId == lastSenderId)&&(identical(other.user, user) || other.user == user)&&(identical(other.unreadCount, unreadCount) || other.unreadCount == unreadCount));
}


@override
int get hashCode => Object.hash(runtimeType,id,lastMessage,lastMessageTime,lastSenderId,user,unreadCount);

@override
String toString() {
  return 'ChatPreviewEntity(id: $id, lastMessage: $lastMessage, lastMessageTime: $lastMessageTime, lastSenderId: $lastSenderId, user: $user, unreadCount: $unreadCount)';
}


}

/// @nodoc
abstract mixin class $ChatPreviewEntityCopyWith<$Res>  {
  factory $ChatPreviewEntityCopyWith(ChatPreviewEntity value, $Res Function(ChatPreviewEntity) _then) = _$ChatPreviewEntityCopyWithImpl;
@useResult
$Res call({
 String id, String lastMessage, DateTime lastMessageTime, String lastSenderId, UserEntity user, int unreadCount
});


$UserEntityCopyWith<$Res> get user;

}
/// @nodoc
class _$ChatPreviewEntityCopyWithImpl<$Res>
    implements $ChatPreviewEntityCopyWith<$Res> {
  _$ChatPreviewEntityCopyWithImpl(this._self, this._then);

  final ChatPreviewEntity _self;
  final $Res Function(ChatPreviewEntity) _then;

/// Create a copy of ChatPreviewEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? lastMessage = null,Object? lastMessageTime = null,Object? lastSenderId = null,Object? user = null,Object? unreadCount = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,lastMessage: null == lastMessage ? _self.lastMessage : lastMessage // ignore: cast_nullable_to_non_nullable
as String,lastMessageTime: null == lastMessageTime ? _self.lastMessageTime : lastMessageTime // ignore: cast_nullable_to_non_nullable
as DateTime,lastSenderId: null == lastSenderId ? _self.lastSenderId : lastSenderId // ignore: cast_nullable_to_non_nullable
as String,user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserEntity,unreadCount: null == unreadCount ? _self.unreadCount : unreadCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}
/// Create a copy of ChatPreviewEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserEntityCopyWith<$Res> get user {
  
  return $UserEntityCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}


/// Adds pattern-matching-related methods to [ChatPreviewEntity].
extension ChatPreviewEntityPatterns on ChatPreviewEntity {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChatPreviewEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChatPreviewEntity() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChatPreviewEntity value)  $default,){
final _that = this;
switch (_that) {
case _ChatPreviewEntity():
return $default(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChatPreviewEntity value)?  $default,){
final _that = this;
switch (_that) {
case _ChatPreviewEntity() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String lastMessage,  DateTime lastMessageTime,  String lastSenderId,  UserEntity user,  int unreadCount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChatPreviewEntity() when $default != null:
return $default(_that.id,_that.lastMessage,_that.lastMessageTime,_that.lastSenderId,_that.user,_that.unreadCount);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String lastMessage,  DateTime lastMessageTime,  String lastSenderId,  UserEntity user,  int unreadCount)  $default,) {final _that = this;
switch (_that) {
case _ChatPreviewEntity():
return $default(_that.id,_that.lastMessage,_that.lastMessageTime,_that.lastSenderId,_that.user,_that.unreadCount);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String lastMessage,  DateTime lastMessageTime,  String lastSenderId,  UserEntity user,  int unreadCount)?  $default,) {final _that = this;
switch (_that) {
case _ChatPreviewEntity() when $default != null:
return $default(_that.id,_that.lastMessage,_that.lastMessageTime,_that.lastSenderId,_that.user,_that.unreadCount);case _:
  return null;

}
}

}

/// @nodoc


class _ChatPreviewEntity extends ChatPreviewEntity {
  const _ChatPreviewEntity({required this.id, required this.lastMessage, required this.lastMessageTime, required this.lastSenderId, required this.user, required this.unreadCount}): super._();
  

@override final  String id;
@override final  String lastMessage;
@override final  DateTime lastMessageTime;
@override final  String lastSenderId;
@override final  UserEntity user;
@override final  int unreadCount;

/// Create a copy of ChatPreviewEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChatPreviewEntityCopyWith<_ChatPreviewEntity> get copyWith => __$ChatPreviewEntityCopyWithImpl<_ChatPreviewEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChatPreviewEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.lastMessage, lastMessage) || other.lastMessage == lastMessage)&&(identical(other.lastMessageTime, lastMessageTime) || other.lastMessageTime == lastMessageTime)&&(identical(other.lastSenderId, lastSenderId) || other.lastSenderId == lastSenderId)&&(identical(other.user, user) || other.user == user)&&(identical(other.unreadCount, unreadCount) || other.unreadCount == unreadCount));
}


@override
int get hashCode => Object.hash(runtimeType,id,lastMessage,lastMessageTime,lastSenderId,user,unreadCount);

@override
String toString() {
  return 'ChatPreviewEntity(id: $id, lastMessage: $lastMessage, lastMessageTime: $lastMessageTime, lastSenderId: $lastSenderId, user: $user, unreadCount: $unreadCount)';
}


}

/// @nodoc
abstract mixin class _$ChatPreviewEntityCopyWith<$Res> implements $ChatPreviewEntityCopyWith<$Res> {
  factory _$ChatPreviewEntityCopyWith(_ChatPreviewEntity value, $Res Function(_ChatPreviewEntity) _then) = __$ChatPreviewEntityCopyWithImpl;
@override @useResult
$Res call({
 String id, String lastMessage, DateTime lastMessageTime, String lastSenderId, UserEntity user, int unreadCount
});


@override $UserEntityCopyWith<$Res> get user;

}
/// @nodoc
class __$ChatPreviewEntityCopyWithImpl<$Res>
    implements _$ChatPreviewEntityCopyWith<$Res> {
  __$ChatPreviewEntityCopyWithImpl(this._self, this._then);

  final _ChatPreviewEntity _self;
  final $Res Function(_ChatPreviewEntity) _then;

/// Create a copy of ChatPreviewEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? lastMessage = null,Object? lastMessageTime = null,Object? lastSenderId = null,Object? user = null,Object? unreadCount = null,}) {
  return _then(_ChatPreviewEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,lastMessage: null == lastMessage ? _self.lastMessage : lastMessage // ignore: cast_nullable_to_non_nullable
as String,lastMessageTime: null == lastMessageTime ? _self.lastMessageTime : lastMessageTime // ignore: cast_nullable_to_non_nullable
as DateTime,lastSenderId: null == lastSenderId ? _self.lastSenderId : lastSenderId // ignore: cast_nullable_to_non_nullable
as String,user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserEntity,unreadCount: null == unreadCount ? _self.unreadCount : unreadCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

/// Create a copy of ChatPreviewEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserEntityCopyWith<$Res> get user {
  
  return $UserEntityCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}

// dart format on
