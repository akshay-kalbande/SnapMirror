// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_preview_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ChatPreviewListEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatPreviewListEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ChatPreviewListEvent()';
}


}

/// @nodoc
class $ChatPreviewListEventCopyWith<$Res>  {
$ChatPreviewListEventCopyWith(ChatPreviewListEvent _, $Res Function(ChatPreviewListEvent) __);
}


/// Adds pattern-matching-related methods to [ChatPreviewListEvent].
extension ChatPreviewListEventPatterns on ChatPreviewListEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Started value)?  started,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Started value)  started,}){
final _that = this;
switch (_that) {
case _Started():
return started(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Started value)?  started,}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  started,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  started,}) {final _that = this;
switch (_that) {
case _Started():
return started();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  started,}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _:
  return null;

}
}

}

/// @nodoc


class _Started implements ChatPreviewListEvent {
  const _Started();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Started);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ChatPreviewListEvent.started()';
}


}




/// @nodoc
mixin _$ChatPreviewListState {

 UserEntity get user; List<ChatPreviewEntity> get chatPreviewList; ScreenMessage? get message;
/// Create a copy of ChatPreviewListState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChatPreviewListStateCopyWith<ChatPreviewListState> get copyWith => _$ChatPreviewListStateCopyWithImpl<ChatPreviewListState>(this as ChatPreviewListState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatPreviewListState&&(identical(other.user, user) || other.user == user)&&const DeepCollectionEquality().equals(other.chatPreviewList, chatPreviewList)&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,user,const DeepCollectionEquality().hash(chatPreviewList),message);

@override
String toString() {
  return 'ChatPreviewListState(user: $user, chatPreviewList: $chatPreviewList, message: $message)';
}


}

/// @nodoc
abstract mixin class $ChatPreviewListStateCopyWith<$Res>  {
  factory $ChatPreviewListStateCopyWith(ChatPreviewListState value, $Res Function(ChatPreviewListState) _then) = _$ChatPreviewListStateCopyWithImpl;
@useResult
$Res call({
 UserEntity user, List<ChatPreviewEntity> chatPreviewList, ScreenMessage? message
});


$UserEntityCopyWith<$Res> get user;$ScreenMessageCopyWith<$Res>? get message;

}
/// @nodoc
class _$ChatPreviewListStateCopyWithImpl<$Res>
    implements $ChatPreviewListStateCopyWith<$Res> {
  _$ChatPreviewListStateCopyWithImpl(this._self, this._then);

  final ChatPreviewListState _self;
  final $Res Function(ChatPreviewListState) _then;

/// Create a copy of ChatPreviewListState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? user = null,Object? chatPreviewList = null,Object? message = freezed,}) {
  return _then(_self.copyWith(
user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserEntity,chatPreviewList: null == chatPreviewList ? _self.chatPreviewList : chatPreviewList // ignore: cast_nullable_to_non_nullable
as List<ChatPreviewEntity>,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as ScreenMessage?,
  ));
}
/// Create a copy of ChatPreviewListState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserEntityCopyWith<$Res> get user {
  
  return $UserEntityCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}/// Create a copy of ChatPreviewListState
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


/// Adds pattern-matching-related methods to [ChatPreviewListState].
extension ChatPreviewListStatePatterns on ChatPreviewListState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChatPreviewListState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChatPreviewListState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChatPreviewListState value)  $default,){
final _that = this;
switch (_that) {
case _ChatPreviewListState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChatPreviewListState value)?  $default,){
final _that = this;
switch (_that) {
case _ChatPreviewListState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( UserEntity user,  List<ChatPreviewEntity> chatPreviewList,  ScreenMessage? message)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChatPreviewListState() when $default != null:
return $default(_that.user,_that.chatPreviewList,_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( UserEntity user,  List<ChatPreviewEntity> chatPreviewList,  ScreenMessage? message)  $default,) {final _that = this;
switch (_that) {
case _ChatPreviewListState():
return $default(_that.user,_that.chatPreviewList,_that.message);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( UserEntity user,  List<ChatPreviewEntity> chatPreviewList,  ScreenMessage? message)?  $default,) {final _that = this;
switch (_that) {
case _ChatPreviewListState() when $default != null:
return $default(_that.user,_that.chatPreviewList,_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _ChatPreviewListState implements ChatPreviewListState {
  const _ChatPreviewListState({required this.user, required final  List<ChatPreviewEntity> chatPreviewList, this.message}): _chatPreviewList = chatPreviewList;
  

@override final  UserEntity user;
 final  List<ChatPreviewEntity> _chatPreviewList;
@override List<ChatPreviewEntity> get chatPreviewList {
  if (_chatPreviewList is EqualUnmodifiableListView) return _chatPreviewList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_chatPreviewList);
}

@override final  ScreenMessage? message;

/// Create a copy of ChatPreviewListState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChatPreviewListStateCopyWith<_ChatPreviewListState> get copyWith => __$ChatPreviewListStateCopyWithImpl<_ChatPreviewListState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChatPreviewListState&&(identical(other.user, user) || other.user == user)&&const DeepCollectionEquality().equals(other._chatPreviewList, _chatPreviewList)&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,user,const DeepCollectionEquality().hash(_chatPreviewList),message);

@override
String toString() {
  return 'ChatPreviewListState(user: $user, chatPreviewList: $chatPreviewList, message: $message)';
}


}

/// @nodoc
abstract mixin class _$ChatPreviewListStateCopyWith<$Res> implements $ChatPreviewListStateCopyWith<$Res> {
  factory _$ChatPreviewListStateCopyWith(_ChatPreviewListState value, $Res Function(_ChatPreviewListState) _then) = __$ChatPreviewListStateCopyWithImpl;
@override @useResult
$Res call({
 UserEntity user, List<ChatPreviewEntity> chatPreviewList, ScreenMessage? message
});


@override $UserEntityCopyWith<$Res> get user;@override $ScreenMessageCopyWith<$Res>? get message;

}
/// @nodoc
class __$ChatPreviewListStateCopyWithImpl<$Res>
    implements _$ChatPreviewListStateCopyWith<$Res> {
  __$ChatPreviewListStateCopyWithImpl(this._self, this._then);

  final _ChatPreviewListState _self;
  final $Res Function(_ChatPreviewListState) _then;

/// Create a copy of ChatPreviewListState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? user = null,Object? chatPreviewList = null,Object? message = freezed,}) {
  return _then(_ChatPreviewListState(
user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserEntity,chatPreviewList: null == chatPreviewList ? _self._chatPreviewList : chatPreviewList // ignore: cast_nullable_to_non_nullable
as List<ChatPreviewEntity>,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as ScreenMessage?,
  ));
}

/// Create a copy of ChatPreviewListState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserEntityCopyWith<$Res> get user {
  
  return $UserEntityCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}/// Create a copy of ChatPreviewListState
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
