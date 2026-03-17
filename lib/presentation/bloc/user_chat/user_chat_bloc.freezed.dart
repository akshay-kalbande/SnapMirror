// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_chat_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UserChatEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserChatEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UserChatEvent()';
}


}

/// @nodoc
class $UserChatEventCopyWith<$Res>  {
$UserChatEventCopyWith(UserChatEvent _, $Res Function(UserChatEvent) __);
}


/// Adds pattern-matching-related methods to [UserChatEvent].
extension UserChatEventPatterns on UserChatEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Started value)?  started,TResult Function( _MessageReceived value)?  messageReceived,TResult Function( _SendMessage value)?  sendMessage,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _MessageReceived() when messageReceived != null:
return messageReceived(_that);case _SendMessage() when sendMessage != null:
return sendMessage(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Started value)  started,required TResult Function( _MessageReceived value)  messageReceived,required TResult Function( _SendMessage value)  sendMessage,}){
final _that = this;
switch (_that) {
case _Started():
return started(_that);case _MessageReceived():
return messageReceived(_that);case _SendMessage():
return sendMessage(_that);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Started value)?  started,TResult? Function( _MessageReceived value)?  messageReceived,TResult? Function( _SendMessage value)?  sendMessage,}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _MessageReceived() when messageReceived != null:
return messageReceived(_that);case _SendMessage() when sendMessage != null:
return sendMessage(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  started,TResult Function( List<ChatEntity> chats)?  messageReceived,TResult Function( String text)?  sendMessage,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _MessageReceived() when messageReceived != null:
return messageReceived(_that.chats);case _SendMessage() when sendMessage != null:
return sendMessage(_that.text);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  started,required TResult Function( List<ChatEntity> chats)  messageReceived,required TResult Function( String text)  sendMessage,}) {final _that = this;
switch (_that) {
case _Started():
return started();case _MessageReceived():
return messageReceived(_that.chats);case _SendMessage():
return sendMessage(_that.text);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  started,TResult? Function( List<ChatEntity> chats)?  messageReceived,TResult? Function( String text)?  sendMessage,}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _MessageReceived() when messageReceived != null:
return messageReceived(_that.chats);case _SendMessage() when sendMessage != null:
return sendMessage(_that.text);case _:
  return null;

}
}

}

/// @nodoc


class _Started implements UserChatEvent {
  const _Started();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Started);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UserChatEvent.started()';
}


}




/// @nodoc


class _MessageReceived implements UserChatEvent {
  const _MessageReceived(final  List<ChatEntity> chats): _chats = chats;
  

 final  List<ChatEntity> _chats;
 List<ChatEntity> get chats {
  if (_chats is EqualUnmodifiableListView) return _chats;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_chats);
}


/// Create a copy of UserChatEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MessageReceivedCopyWith<_MessageReceived> get copyWith => __$MessageReceivedCopyWithImpl<_MessageReceived>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MessageReceived&&const DeepCollectionEquality().equals(other._chats, _chats));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_chats));

@override
String toString() {
  return 'UserChatEvent.messageReceived(chats: $chats)';
}


}

/// @nodoc
abstract mixin class _$MessageReceivedCopyWith<$Res> implements $UserChatEventCopyWith<$Res> {
  factory _$MessageReceivedCopyWith(_MessageReceived value, $Res Function(_MessageReceived) _then) = __$MessageReceivedCopyWithImpl;
@useResult
$Res call({
 List<ChatEntity> chats
});




}
/// @nodoc
class __$MessageReceivedCopyWithImpl<$Res>
    implements _$MessageReceivedCopyWith<$Res> {
  __$MessageReceivedCopyWithImpl(this._self, this._then);

  final _MessageReceived _self;
  final $Res Function(_MessageReceived) _then;

/// Create a copy of UserChatEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? chats = null,}) {
  return _then(_MessageReceived(
null == chats ? _self._chats : chats // ignore: cast_nullable_to_non_nullable
as List<ChatEntity>,
  ));
}


}

/// @nodoc


class _SendMessage implements UserChatEvent {
  const _SendMessage(this.text);
  

 final  String text;

/// Create a copy of UserChatEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SendMessageCopyWith<_SendMessage> get copyWith => __$SendMessageCopyWithImpl<_SendMessage>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SendMessage&&(identical(other.text, text) || other.text == text));
}


@override
int get hashCode => Object.hash(runtimeType,text);

@override
String toString() {
  return 'UserChatEvent.sendMessage(text: $text)';
}


}

/// @nodoc
abstract mixin class _$SendMessageCopyWith<$Res> implements $UserChatEventCopyWith<$Res> {
  factory _$SendMessageCopyWith(_SendMessage value, $Res Function(_SendMessage) _then) = __$SendMessageCopyWithImpl;
@useResult
$Res call({
 String text
});




}
/// @nodoc
class __$SendMessageCopyWithImpl<$Res>
    implements _$SendMessageCopyWith<$Res> {
  __$SendMessageCopyWithImpl(this._self, this._then);

  final _SendMessage _self;
  final $Res Function(_SendMessage) _then;

/// Create a copy of UserChatEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? text = null,}) {
  return _then(_SendMessage(
null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$UserChatState {

 UserEntity get self; UserEntity get user; List<ChatEntity> get chats; bool get isLoading; ScreenMessage? get message;
/// Create a copy of UserChatState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserChatStateCopyWith<UserChatState> get copyWith => _$UserChatStateCopyWithImpl<UserChatState>(this as UserChatState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserChatState&&(identical(other.self, self) || other.self == self)&&(identical(other.user, user) || other.user == user)&&const DeepCollectionEquality().equals(other.chats, chats)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,self,user,const DeepCollectionEquality().hash(chats),isLoading,message);

@override
String toString() {
  return 'UserChatState(self: $self, user: $user, chats: $chats, isLoading: $isLoading, message: $message)';
}


}

/// @nodoc
abstract mixin class $UserChatStateCopyWith<$Res>  {
  factory $UserChatStateCopyWith(UserChatState value, $Res Function(UserChatState) _then) = _$UserChatStateCopyWithImpl;
@useResult
$Res call({
 UserEntity self, UserEntity user, List<ChatEntity> chats, bool isLoading, ScreenMessage? message
});


$UserEntityCopyWith<$Res> get self;$UserEntityCopyWith<$Res> get user;$ScreenMessageCopyWith<$Res>? get message;

}
/// @nodoc
class _$UserChatStateCopyWithImpl<$Res>
    implements $UserChatStateCopyWith<$Res> {
  _$UserChatStateCopyWithImpl(this._self, this._then);

  final UserChatState _self;
  final $Res Function(UserChatState) _then;

/// Create a copy of UserChatState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? self = null,Object? user = null,Object? chats = null,Object? isLoading = null,Object? message = freezed,}) {
  return _then(_self.copyWith(
self: null == self ? _self.self : self // ignore: cast_nullable_to_non_nullable
as UserEntity,user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserEntity,chats: null == chats ? _self.chats : chats // ignore: cast_nullable_to_non_nullable
as List<ChatEntity>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as ScreenMessage?,
  ));
}
/// Create a copy of UserChatState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserEntityCopyWith<$Res> get self {
  
  return $UserEntityCopyWith<$Res>(_self.self, (value) {
    return _then(_self.copyWith(self: value));
  });
}/// Create a copy of UserChatState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserEntityCopyWith<$Res> get user {
  
  return $UserEntityCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}/// Create a copy of UserChatState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ScreenMessageCopyWith<$Res>? get message {
    if (_self.message == null) {
    return null;
  }

  return $ScreenMessageCopyWith<$Res>(_self.message!, (value) {
    return _then(_self.copyWith(message: value));
  });
}
}


/// Adds pattern-matching-related methods to [UserChatState].
extension UserChatStatePatterns on UserChatState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserChatState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserChatState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserChatState value)  $default,){
final _that = this;
switch (_that) {
case _UserChatState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserChatState value)?  $default,){
final _that = this;
switch (_that) {
case _UserChatState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( UserEntity self,  UserEntity user,  List<ChatEntity> chats,  bool isLoading,  ScreenMessage? message)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserChatState() when $default != null:
return $default(_that.self,_that.user,_that.chats,_that.isLoading,_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( UserEntity self,  UserEntity user,  List<ChatEntity> chats,  bool isLoading,  ScreenMessage? message)  $default,) {final _that = this;
switch (_that) {
case _UserChatState():
return $default(_that.self,_that.user,_that.chats,_that.isLoading,_that.message);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( UserEntity self,  UserEntity user,  List<ChatEntity> chats,  bool isLoading,  ScreenMessage? message)?  $default,) {final _that = this;
switch (_that) {
case _UserChatState() when $default != null:
return $default(_that.self,_that.user,_that.chats,_that.isLoading,_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _UserChatState implements UserChatState {
  const _UserChatState({required this.self, required this.user, required final  List<ChatEntity> chats, this.isLoading = false, this.message}): _chats = chats;
  

@override final  UserEntity self;
@override final  UserEntity user;
 final  List<ChatEntity> _chats;
@override List<ChatEntity> get chats {
  if (_chats is EqualUnmodifiableListView) return _chats;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_chats);
}

@override@JsonKey() final  bool isLoading;
@override final  ScreenMessage? message;

/// Create a copy of UserChatState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserChatStateCopyWith<_UserChatState> get copyWith => __$UserChatStateCopyWithImpl<_UserChatState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserChatState&&(identical(other.self, self) || other.self == self)&&(identical(other.user, user) || other.user == user)&&const DeepCollectionEquality().equals(other._chats, _chats)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,self,user,const DeepCollectionEquality().hash(_chats),isLoading,message);

@override
String toString() {
  return 'UserChatState(self: $self, user: $user, chats: $chats, isLoading: $isLoading, message: $message)';
}


}

/// @nodoc
abstract mixin class _$UserChatStateCopyWith<$Res> implements $UserChatStateCopyWith<$Res> {
  factory _$UserChatStateCopyWith(_UserChatState value, $Res Function(_UserChatState) _then) = __$UserChatStateCopyWithImpl;
@override @useResult
$Res call({
 UserEntity self, UserEntity user, List<ChatEntity> chats, bool isLoading, ScreenMessage? message
});


@override $UserEntityCopyWith<$Res> get self;@override $UserEntityCopyWith<$Res> get user;@override $ScreenMessageCopyWith<$Res>? get message;

}
/// @nodoc
class __$UserChatStateCopyWithImpl<$Res>
    implements _$UserChatStateCopyWith<$Res> {
  __$UserChatStateCopyWithImpl(this._self, this._then);

  final _UserChatState _self;
  final $Res Function(_UserChatState) _then;

/// Create a copy of UserChatState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? self = null,Object? user = null,Object? chats = null,Object? isLoading = null,Object? message = freezed,}) {
  return _then(_UserChatState(
self: null == self ? _self.self : self // ignore: cast_nullable_to_non_nullable
as UserEntity,user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserEntity,chats: null == chats ? _self._chats : chats // ignore: cast_nullable_to_non_nullable
as List<ChatEntity>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as ScreenMessage?,
  ));
}

/// Create a copy of UserChatState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserEntityCopyWith<$Res> get self {
  
  return $UserEntityCopyWith<$Res>(_self.self, (value) {
    return _then(_self.copyWith(self: value));
  });
}/// Create a copy of UserChatState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserEntityCopyWith<$Res> get user {
  
  return $UserEntityCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}/// Create a copy of UserChatState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ScreenMessageCopyWith<$Res>? get message {
    if (_self.message == null) {
    return null;
  }

  return $ScreenMessageCopyWith<$Res>(_self.message!, (value) {
    return _then(_self.copyWith(message: value));
  });
}
}

// dart format on
