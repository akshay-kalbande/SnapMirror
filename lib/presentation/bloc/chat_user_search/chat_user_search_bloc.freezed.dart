// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_user_search_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ChatUserSearchEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatUserSearchEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ChatUserSearchEvent()';
}


}

/// @nodoc
class $ChatUserSearchEventCopyWith<$Res>  {
$ChatUserSearchEventCopyWith(ChatUserSearchEvent _, $Res Function(ChatUserSearchEvent) __);
}


/// Adds pattern-matching-related methods to [ChatUserSearchEvent].
extension ChatUserSearchEventPatterns on ChatUserSearchEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _QueryChanged value)?  queryChanged,TResult Function( _Cleared value)?  cleared,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _QueryChanged() when queryChanged != null:
return queryChanged(_that);case _Cleared() when cleared != null:
return cleared(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _QueryChanged value)  queryChanged,required TResult Function( _Cleared value)  cleared,}){
final _that = this;
switch (_that) {
case _QueryChanged():
return queryChanged(_that);case _Cleared():
return cleared(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _QueryChanged value)?  queryChanged,TResult? Function( _Cleared value)?  cleared,}){
final _that = this;
switch (_that) {
case _QueryChanged() when queryChanged != null:
return queryChanged(_that);case _Cleared() when cleared != null:
return cleared(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String text)?  queryChanged,TResult Function()?  cleared,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _QueryChanged() when queryChanged != null:
return queryChanged(_that.text);case _Cleared() when cleared != null:
return cleared();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String text)  queryChanged,required TResult Function()  cleared,}) {final _that = this;
switch (_that) {
case _QueryChanged():
return queryChanged(_that.text);case _Cleared():
return cleared();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String text)?  queryChanged,TResult? Function()?  cleared,}) {final _that = this;
switch (_that) {
case _QueryChanged() when queryChanged != null:
return queryChanged(_that.text);case _Cleared() when cleared != null:
return cleared();case _:
  return null;

}
}

}

/// @nodoc


class _QueryChanged implements ChatUserSearchEvent {
  const _QueryChanged(this.text);
  

 final  String text;

/// Create a copy of ChatUserSearchEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$QueryChangedCopyWith<_QueryChanged> get copyWith => __$QueryChangedCopyWithImpl<_QueryChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _QueryChanged&&(identical(other.text, text) || other.text == text));
}


@override
int get hashCode => Object.hash(runtimeType,text);

@override
String toString() {
  return 'ChatUserSearchEvent.queryChanged(text: $text)';
}


}

/// @nodoc
abstract mixin class _$QueryChangedCopyWith<$Res> implements $ChatUserSearchEventCopyWith<$Res> {
  factory _$QueryChangedCopyWith(_QueryChanged value, $Res Function(_QueryChanged) _then) = __$QueryChangedCopyWithImpl;
@useResult
$Res call({
 String text
});




}
/// @nodoc
class __$QueryChangedCopyWithImpl<$Res>
    implements _$QueryChangedCopyWith<$Res> {
  __$QueryChangedCopyWithImpl(this._self, this._then);

  final _QueryChanged _self;
  final $Res Function(_QueryChanged) _then;

/// Create a copy of ChatUserSearchEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? text = null,}) {
  return _then(_QueryChanged(
null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _Cleared implements ChatUserSearchEvent {
  const _Cleared();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Cleared);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ChatUserSearchEvent.cleared()';
}


}




/// @nodoc
mixin _$ChatUserSearchState {

 List<UserEntity> get users; bool get isLoading; ScreenMessage? get message;
/// Create a copy of ChatUserSearchState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChatUserSearchStateCopyWith<ChatUserSearchState> get copyWith => _$ChatUserSearchStateCopyWithImpl<ChatUserSearchState>(this as ChatUserSearchState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatUserSearchState&&const DeepCollectionEquality().equals(other.users, users)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(users),isLoading,message);

@override
String toString() {
  return 'ChatUserSearchState(users: $users, isLoading: $isLoading, message: $message)';
}


}

/// @nodoc
abstract mixin class $ChatUserSearchStateCopyWith<$Res>  {
  factory $ChatUserSearchStateCopyWith(ChatUserSearchState value, $Res Function(ChatUserSearchState) _then) = _$ChatUserSearchStateCopyWithImpl;
@useResult
$Res call({
 List<UserEntity> users, bool isLoading, ScreenMessage? message
});


$ScreenMessageCopyWith<$Res>? get message;

}
/// @nodoc
class _$ChatUserSearchStateCopyWithImpl<$Res>
    implements $ChatUserSearchStateCopyWith<$Res> {
  _$ChatUserSearchStateCopyWithImpl(this._self, this._then);

  final ChatUserSearchState _self;
  final $Res Function(ChatUserSearchState) _then;

/// Create a copy of ChatUserSearchState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? users = null,Object? isLoading = null,Object? message = freezed,}) {
  return _then(_self.copyWith(
users: null == users ? _self.users : users // ignore: cast_nullable_to_non_nullable
as List<UserEntity>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as ScreenMessage?,
  ));
}
/// Create a copy of ChatUserSearchState
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


/// Adds pattern-matching-related methods to [ChatUserSearchState].
extension ChatUserSearchStatePatterns on ChatUserSearchState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChatUserSearchState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChatUserSearchState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChatUserSearchState value)  $default,){
final _that = this;
switch (_that) {
case _ChatUserSearchState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChatUserSearchState value)?  $default,){
final _that = this;
switch (_that) {
case _ChatUserSearchState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<UserEntity> users,  bool isLoading,  ScreenMessage? message)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChatUserSearchState() when $default != null:
return $default(_that.users,_that.isLoading,_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<UserEntity> users,  bool isLoading,  ScreenMessage? message)  $default,) {final _that = this;
switch (_that) {
case _ChatUserSearchState():
return $default(_that.users,_that.isLoading,_that.message);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<UserEntity> users,  bool isLoading,  ScreenMessage? message)?  $default,) {final _that = this;
switch (_that) {
case _ChatUserSearchState() when $default != null:
return $default(_that.users,_that.isLoading,_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _ChatUserSearchState implements ChatUserSearchState {
  const _ChatUserSearchState({required final  List<UserEntity> users, this.isLoading = false, this.message}): _users = users;
  

 final  List<UserEntity> _users;
@override List<UserEntity> get users {
  if (_users is EqualUnmodifiableListView) return _users;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_users);
}

@override@JsonKey() final  bool isLoading;
@override final  ScreenMessage? message;

/// Create a copy of ChatUserSearchState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChatUserSearchStateCopyWith<_ChatUserSearchState> get copyWith => __$ChatUserSearchStateCopyWithImpl<_ChatUserSearchState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChatUserSearchState&&const DeepCollectionEquality().equals(other._users, _users)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_users),isLoading,message);

@override
String toString() {
  return 'ChatUserSearchState(users: $users, isLoading: $isLoading, message: $message)';
}


}

/// @nodoc
abstract mixin class _$ChatUserSearchStateCopyWith<$Res> implements $ChatUserSearchStateCopyWith<$Res> {
  factory _$ChatUserSearchStateCopyWith(_ChatUserSearchState value, $Res Function(_ChatUserSearchState) _then) = __$ChatUserSearchStateCopyWithImpl;
@override @useResult
$Res call({
 List<UserEntity> users, bool isLoading, ScreenMessage? message
});


@override $ScreenMessageCopyWith<$Res>? get message;

}
/// @nodoc
class __$ChatUserSearchStateCopyWithImpl<$Res>
    implements _$ChatUserSearchStateCopyWith<$Res> {
  __$ChatUserSearchStateCopyWithImpl(this._self, this._then);

  final _ChatUserSearchState _self;
  final $Res Function(_ChatUserSearchState) _then;

/// Create a copy of ChatUserSearchState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? users = null,Object? isLoading = null,Object? message = freezed,}) {
  return _then(_ChatUserSearchState(
users: null == users ? _self._users : users // ignore: cast_nullable_to_non_nullable
as List<UserEntity>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as ScreenMessage?,
  ));
}

/// Create a copy of ChatUserSearchState
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
