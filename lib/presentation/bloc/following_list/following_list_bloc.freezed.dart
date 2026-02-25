// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'following_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$FollowingListEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FollowingListEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FollowingListEvent()';
}


}

/// @nodoc
class $FollowingListEventCopyWith<$Res>  {
$FollowingListEventCopyWith(FollowingListEvent _, $Res Function(FollowingListEvent) __);
}


/// Adds pattern-matching-related methods to [FollowingListEvent].
extension FollowingListEventPatterns on FollowingListEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Started value)?  started,TResult Function( _StartedWithUserID value)?  startedWithUserID,TResult Function( _UnfollowButtonClicked value)?  unfollowButtonClicked,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _StartedWithUserID() when startedWithUserID != null:
return startedWithUserID(_that);case _UnfollowButtonClicked() when unfollowButtonClicked != null:
return unfollowButtonClicked(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Started value)  started,required TResult Function( _StartedWithUserID value)  startedWithUserID,required TResult Function( _UnfollowButtonClicked value)  unfollowButtonClicked,}){
final _that = this;
switch (_that) {
case _Started():
return started(_that);case _StartedWithUserID():
return startedWithUserID(_that);case _UnfollowButtonClicked():
return unfollowButtonClicked(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Started value)?  started,TResult? Function( _StartedWithUserID value)?  startedWithUserID,TResult? Function( _UnfollowButtonClicked value)?  unfollowButtonClicked,}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _StartedWithUserID() when startedWithUserID != null:
return startedWithUserID(_that);case _UnfollowButtonClicked() when unfollowButtonClicked != null:
return unfollowButtonClicked(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( UserEntity user)?  started,TResult Function( String userID)?  startedWithUserID,TResult Function( UserEntity user,  UserEntity following)?  unfollowButtonClicked,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that.user);case _StartedWithUserID() when startedWithUserID != null:
return startedWithUserID(_that.userID);case _UnfollowButtonClicked() when unfollowButtonClicked != null:
return unfollowButtonClicked(_that.user,_that.following);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( UserEntity user)  started,required TResult Function( String userID)  startedWithUserID,required TResult Function( UserEntity user,  UserEntity following)  unfollowButtonClicked,}) {final _that = this;
switch (_that) {
case _Started():
return started(_that.user);case _StartedWithUserID():
return startedWithUserID(_that.userID);case _UnfollowButtonClicked():
return unfollowButtonClicked(_that.user,_that.following);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( UserEntity user)?  started,TResult? Function( String userID)?  startedWithUserID,TResult? Function( UserEntity user,  UserEntity following)?  unfollowButtonClicked,}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that.user);case _StartedWithUserID() when startedWithUserID != null:
return startedWithUserID(_that.userID);case _UnfollowButtonClicked() when unfollowButtonClicked != null:
return unfollowButtonClicked(_that.user,_that.following);case _:
  return null;

}
}

}

/// @nodoc


class _Started extends FollowingListEvent {
  const _Started(this.user): super._();
  

 final  UserEntity user;

/// Create a copy of FollowingListEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StartedCopyWith<_Started> get copyWith => __$StartedCopyWithImpl<_Started>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Started&&(identical(other.user, user) || other.user == user));
}


@override
int get hashCode => Object.hash(runtimeType,user);

@override
String toString() {
  return 'FollowingListEvent.started(user: $user)';
}


}

/// @nodoc
abstract mixin class _$StartedCopyWith<$Res> implements $FollowingListEventCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) _then) = __$StartedCopyWithImpl;
@useResult
$Res call({
 UserEntity user
});


$UserEntityCopyWith<$Res> get user;

}
/// @nodoc
class __$StartedCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(this._self, this._then);

  final _Started _self;
  final $Res Function(_Started) _then;

/// Create a copy of FollowingListEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? user = null,}) {
  return _then(_Started(
null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserEntity,
  ));
}

/// Create a copy of FollowingListEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserEntityCopyWith<$Res> get user {
  
  return $UserEntityCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}

/// @nodoc


class _StartedWithUserID extends FollowingListEvent {
  const _StartedWithUserID(this.userID): super._();
  

 final  String userID;

/// Create a copy of FollowingListEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StartedWithUserIDCopyWith<_StartedWithUserID> get copyWith => __$StartedWithUserIDCopyWithImpl<_StartedWithUserID>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StartedWithUserID&&(identical(other.userID, userID) || other.userID == userID));
}


@override
int get hashCode => Object.hash(runtimeType,userID);

@override
String toString() {
  return 'FollowingListEvent.startedWithUserID(userID: $userID)';
}


}

/// @nodoc
abstract mixin class _$StartedWithUserIDCopyWith<$Res> implements $FollowingListEventCopyWith<$Res> {
  factory _$StartedWithUserIDCopyWith(_StartedWithUserID value, $Res Function(_StartedWithUserID) _then) = __$StartedWithUserIDCopyWithImpl;
@useResult
$Res call({
 String userID
});




}
/// @nodoc
class __$StartedWithUserIDCopyWithImpl<$Res>
    implements _$StartedWithUserIDCopyWith<$Res> {
  __$StartedWithUserIDCopyWithImpl(this._self, this._then);

  final _StartedWithUserID _self;
  final $Res Function(_StartedWithUserID) _then;

/// Create a copy of FollowingListEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? userID = null,}) {
  return _then(_StartedWithUserID(
null == userID ? _self.userID : userID // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _UnfollowButtonClicked extends FollowingListEvent {
  const _UnfollowButtonClicked(this.user, this.following): super._();
  

 final  UserEntity user;
 final  UserEntity following;

/// Create a copy of FollowingListEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UnfollowButtonClickedCopyWith<_UnfollowButtonClicked> get copyWith => __$UnfollowButtonClickedCopyWithImpl<_UnfollowButtonClicked>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UnfollowButtonClicked&&(identical(other.user, user) || other.user == user)&&(identical(other.following, following) || other.following == following));
}


@override
int get hashCode => Object.hash(runtimeType,user,following);

@override
String toString() {
  return 'FollowingListEvent.unfollowButtonClicked(user: $user, following: $following)';
}


}

/// @nodoc
abstract mixin class _$UnfollowButtonClickedCopyWith<$Res> implements $FollowingListEventCopyWith<$Res> {
  factory _$UnfollowButtonClickedCopyWith(_UnfollowButtonClicked value, $Res Function(_UnfollowButtonClicked) _then) = __$UnfollowButtonClickedCopyWithImpl;
@useResult
$Res call({
 UserEntity user, UserEntity following
});


$UserEntityCopyWith<$Res> get user;$UserEntityCopyWith<$Res> get following;

}
/// @nodoc
class __$UnfollowButtonClickedCopyWithImpl<$Res>
    implements _$UnfollowButtonClickedCopyWith<$Res> {
  __$UnfollowButtonClickedCopyWithImpl(this._self, this._then);

  final _UnfollowButtonClicked _self;
  final $Res Function(_UnfollowButtonClicked) _then;

/// Create a copy of FollowingListEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? user = null,Object? following = null,}) {
  return _then(_UnfollowButtonClicked(
null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserEntity,null == following ? _self.following : following // ignore: cast_nullable_to_non_nullable
as UserEntity,
  ));
}

/// Create a copy of FollowingListEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserEntityCopyWith<$Res> get user {
  
  return $UserEntityCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}/// Create a copy of FollowingListEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserEntityCopyWith<$Res> get following {
  
  return $UserEntityCopyWith<$Res>(_self.following, (value) {
    return _then(_self.copyWith(following: value));
  });
}
}

/// @nodoc
mixin _$FollowingListState {

 bool get isLoading; UserEntity? get user; List<UserEntity> get followings; ScreenMessage? get notification;
/// Create a copy of FollowingListState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FollowingListStateCopyWith<FollowingListState> get copyWith => _$FollowingListStateCopyWithImpl<FollowingListState>(this as FollowingListState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FollowingListState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.user, user) || other.user == user)&&const DeepCollectionEquality().equals(other.followings, followings)&&(identical(other.notification, notification) || other.notification == notification));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,user,const DeepCollectionEquality().hash(followings),notification);

@override
String toString() {
  return 'FollowingListState(isLoading: $isLoading, user: $user, followings: $followings, notification: $notification)';
}


}

/// @nodoc
abstract mixin class $FollowingListStateCopyWith<$Res>  {
  factory $FollowingListStateCopyWith(FollowingListState value, $Res Function(FollowingListState) _then) = _$FollowingListStateCopyWithImpl;
@useResult
$Res call({
 bool isLoading, UserEntity? user, List<UserEntity> followings, ScreenMessage? notification
});


$UserEntityCopyWith<$Res>? get user;$ScreenMessageCopyWith<$Res>? get notification;

}
/// @nodoc
class _$FollowingListStateCopyWithImpl<$Res>
    implements $FollowingListStateCopyWith<$Res> {
  _$FollowingListStateCopyWithImpl(this._self, this._then);

  final FollowingListState _self;
  final $Res Function(FollowingListState) _then;

/// Create a copy of FollowingListState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoading = null,Object? user = freezed,Object? followings = null,Object? notification = freezed,}) {
  return _then(_self.copyWith(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserEntity?,followings: null == followings ? _self.followings : followings // ignore: cast_nullable_to_non_nullable
as List<UserEntity>,notification: freezed == notification ? _self.notification : notification // ignore: cast_nullable_to_non_nullable
as ScreenMessage?,
  ));
}
/// Create a copy of FollowingListState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserEntityCopyWith<$Res>? get user {
    if (_self.user == null) {
    return null;
  }

  return $UserEntityCopyWith<$Res>(_self.user!, (value) {
    return _then(_self.copyWith(user: value));
  });
}/// Create a copy of FollowingListState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ScreenMessageCopyWith<$Res>? get notification {
    if (_self.notification == null) {
    return null;
  }

  return $ScreenMessageCopyWith<$Res>(_self.notification!, (value) {
    return _then(_self.copyWith(notification: value));
  });
}
}


/// Adds pattern-matching-related methods to [FollowingListState].
extension FollowingListStatePatterns on FollowingListState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FollowingListState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FollowingListState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FollowingListState value)  $default,){
final _that = this;
switch (_that) {
case _FollowingListState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FollowingListState value)?  $default,){
final _that = this;
switch (_that) {
case _FollowingListState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isLoading,  UserEntity? user,  List<UserEntity> followings,  ScreenMessage? notification)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FollowingListState() when $default != null:
return $default(_that.isLoading,_that.user,_that.followings,_that.notification);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isLoading,  UserEntity? user,  List<UserEntity> followings,  ScreenMessage? notification)  $default,) {final _that = this;
switch (_that) {
case _FollowingListState():
return $default(_that.isLoading,_that.user,_that.followings,_that.notification);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isLoading,  UserEntity? user,  List<UserEntity> followings,  ScreenMessage? notification)?  $default,) {final _that = this;
switch (_that) {
case _FollowingListState() when $default != null:
return $default(_that.isLoading,_that.user,_that.followings,_that.notification);case _:
  return null;

}
}

}

/// @nodoc


class _FollowingListState extends FollowingListState {
  const _FollowingListState({this.isLoading = false, this.user, final  List<UserEntity> followings = const [], this.notification}): _followings = followings,super._();
  

@override@JsonKey() final  bool isLoading;
@override final  UserEntity? user;
 final  List<UserEntity> _followings;
@override@JsonKey() List<UserEntity> get followings {
  if (_followings is EqualUnmodifiableListView) return _followings;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_followings);
}

@override final  ScreenMessage? notification;

/// Create a copy of FollowingListState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FollowingListStateCopyWith<_FollowingListState> get copyWith => __$FollowingListStateCopyWithImpl<_FollowingListState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FollowingListState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.user, user) || other.user == user)&&const DeepCollectionEquality().equals(other._followings, _followings)&&(identical(other.notification, notification) || other.notification == notification));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,user,const DeepCollectionEquality().hash(_followings),notification);

@override
String toString() {
  return 'FollowingListState(isLoading: $isLoading, user: $user, followings: $followings, notification: $notification)';
}


}

/// @nodoc
abstract mixin class _$FollowingListStateCopyWith<$Res> implements $FollowingListStateCopyWith<$Res> {
  factory _$FollowingListStateCopyWith(_FollowingListState value, $Res Function(_FollowingListState) _then) = __$FollowingListStateCopyWithImpl;
@override @useResult
$Res call({
 bool isLoading, UserEntity? user, List<UserEntity> followings, ScreenMessage? notification
});


@override $UserEntityCopyWith<$Res>? get user;@override $ScreenMessageCopyWith<$Res>? get notification;

}
/// @nodoc
class __$FollowingListStateCopyWithImpl<$Res>
    implements _$FollowingListStateCopyWith<$Res> {
  __$FollowingListStateCopyWithImpl(this._self, this._then);

  final _FollowingListState _self;
  final $Res Function(_FollowingListState) _then;

/// Create a copy of FollowingListState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,Object? user = freezed,Object? followings = null,Object? notification = freezed,}) {
  return _then(_FollowingListState(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserEntity?,followings: null == followings ? _self._followings : followings // ignore: cast_nullable_to_non_nullable
as List<UserEntity>,notification: freezed == notification ? _self.notification : notification // ignore: cast_nullable_to_non_nullable
as ScreenMessage?,
  ));
}

/// Create a copy of FollowingListState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserEntityCopyWith<$Res>? get user {
    if (_self.user == null) {
    return null;
  }

  return $UserEntityCopyWith<$Res>(_self.user!, (value) {
    return _then(_self.copyWith(user: value));
  });
}/// Create a copy of FollowingListState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ScreenMessageCopyWith<$Res>? get notification {
    if (_self.notification == null) {
    return null;
  }

  return $ScreenMessageCopyWith<$Res>(_self.notification!, (value) {
    return _then(_self.copyWith(notification: value));
  });
}
}

// dart format on
