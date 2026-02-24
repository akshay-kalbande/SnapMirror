// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'followers_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$FollowersListEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FollowersListEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FollowersListEvent()';
}


}

/// @nodoc
class $FollowersListEventCopyWith<$Res>  {
$FollowersListEventCopyWith(FollowersListEvent _, $Res Function(FollowersListEvent) __);
}


/// Adds pattern-matching-related methods to [FollowersListEvent].
extension FollowersListEventPatterns on FollowersListEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Started value)?  started,TResult Function( _StartedWithUserID value)?  startedWithUserID,TResult Function( _RemoveFollowerClicked value)?  removeFollowerClicked,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _StartedWithUserID() when startedWithUserID != null:
return startedWithUserID(_that);case _RemoveFollowerClicked() when removeFollowerClicked != null:
return removeFollowerClicked(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Started value)  started,required TResult Function( _StartedWithUserID value)  startedWithUserID,required TResult Function( _RemoveFollowerClicked value)  removeFollowerClicked,}){
final _that = this;
switch (_that) {
case _Started():
return started(_that);case _StartedWithUserID():
return startedWithUserID(_that);case _RemoveFollowerClicked():
return removeFollowerClicked(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Started value)?  started,TResult? Function( _StartedWithUserID value)?  startedWithUserID,TResult? Function( _RemoveFollowerClicked value)?  removeFollowerClicked,}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _StartedWithUserID() when startedWithUserID != null:
return startedWithUserID(_that);case _RemoveFollowerClicked() when removeFollowerClicked != null:
return removeFollowerClicked(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( UserEntity user)?  started,TResult Function( String userID)?  startedWithUserID,TResult Function( UserEntity user,  UserEntity follower)?  removeFollowerClicked,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that.user);case _StartedWithUserID() when startedWithUserID != null:
return startedWithUserID(_that.userID);case _RemoveFollowerClicked() when removeFollowerClicked != null:
return removeFollowerClicked(_that.user,_that.follower);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( UserEntity user)  started,required TResult Function( String userID)  startedWithUserID,required TResult Function( UserEntity user,  UserEntity follower)  removeFollowerClicked,}) {final _that = this;
switch (_that) {
case _Started():
return started(_that.user);case _StartedWithUserID():
return startedWithUserID(_that.userID);case _RemoveFollowerClicked():
return removeFollowerClicked(_that.user,_that.follower);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( UserEntity user)?  started,TResult? Function( String userID)?  startedWithUserID,TResult? Function( UserEntity user,  UserEntity follower)?  removeFollowerClicked,}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that.user);case _StartedWithUserID() when startedWithUserID != null:
return startedWithUserID(_that.userID);case _RemoveFollowerClicked() when removeFollowerClicked != null:
return removeFollowerClicked(_that.user,_that.follower);case _:
  return null;

}
}

}

/// @nodoc


class _Started extends FollowersListEvent {
  const _Started(this.user): super._();
  

 final  UserEntity user;

/// Create a copy of FollowersListEvent
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
  return 'FollowersListEvent.started(user: $user)';
}


}

/// @nodoc
abstract mixin class _$StartedCopyWith<$Res> implements $FollowersListEventCopyWith<$Res> {
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

/// Create a copy of FollowersListEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? user = null,}) {
  return _then(_Started(
null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserEntity,
  ));
}

/// Create a copy of FollowersListEvent
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


class _StartedWithUserID extends FollowersListEvent {
  const _StartedWithUserID(this.userID): super._();
  

 final  String userID;

/// Create a copy of FollowersListEvent
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
  return 'FollowersListEvent.startedWithUserID(userID: $userID)';
}


}

/// @nodoc
abstract mixin class _$StartedWithUserIDCopyWith<$Res> implements $FollowersListEventCopyWith<$Res> {
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

/// Create a copy of FollowersListEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? userID = null,}) {
  return _then(_StartedWithUserID(
null == userID ? _self.userID : userID // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _RemoveFollowerClicked extends FollowersListEvent {
  const _RemoveFollowerClicked(this.user, this.follower): super._();
  

 final  UserEntity user;
 final  UserEntity follower;

/// Create a copy of FollowersListEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RemoveFollowerClickedCopyWith<_RemoveFollowerClicked> get copyWith => __$RemoveFollowerClickedCopyWithImpl<_RemoveFollowerClicked>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RemoveFollowerClicked&&(identical(other.user, user) || other.user == user)&&(identical(other.follower, follower) || other.follower == follower));
}


@override
int get hashCode => Object.hash(runtimeType,user,follower);

@override
String toString() {
  return 'FollowersListEvent.removeFollowerClicked(user: $user, follower: $follower)';
}


}

/// @nodoc
abstract mixin class _$RemoveFollowerClickedCopyWith<$Res> implements $FollowersListEventCopyWith<$Res> {
  factory _$RemoveFollowerClickedCopyWith(_RemoveFollowerClicked value, $Res Function(_RemoveFollowerClicked) _then) = __$RemoveFollowerClickedCopyWithImpl;
@useResult
$Res call({
 UserEntity user, UserEntity follower
});


$UserEntityCopyWith<$Res> get user;$UserEntityCopyWith<$Res> get follower;

}
/// @nodoc
class __$RemoveFollowerClickedCopyWithImpl<$Res>
    implements _$RemoveFollowerClickedCopyWith<$Res> {
  __$RemoveFollowerClickedCopyWithImpl(this._self, this._then);

  final _RemoveFollowerClicked _self;
  final $Res Function(_RemoveFollowerClicked) _then;

/// Create a copy of FollowersListEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? user = null,Object? follower = null,}) {
  return _then(_RemoveFollowerClicked(
null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserEntity,null == follower ? _self.follower : follower // ignore: cast_nullable_to_non_nullable
as UserEntity,
  ));
}

/// Create a copy of FollowersListEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserEntityCopyWith<$Res> get user {
  
  return $UserEntityCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}/// Create a copy of FollowersListEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserEntityCopyWith<$Res> get follower {
  
  return $UserEntityCopyWith<$Res>(_self.follower, (value) {
    return _then(_self.copyWith(follower: value));
  });
}
}

/// @nodoc
mixin _$FollowersListState {

 bool get isLoading; UserEntity? get user; List<UserEntity> get followers; ScreenMessage? get notification;
/// Create a copy of FollowersListState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FollowersListStateCopyWith<FollowersListState> get copyWith => _$FollowersListStateCopyWithImpl<FollowersListState>(this as FollowersListState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FollowersListState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.user, user) || other.user == user)&&const DeepCollectionEquality().equals(other.followers, followers)&&const DeepCollectionEquality().equals(other.notification, notification));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,user,const DeepCollectionEquality().hash(followers),const DeepCollectionEquality().hash(notification));

@override
String toString() {
  return 'FollowersListState(isLoading: $isLoading, user: $user, followers: $followers, notification: $notification)';
}


}

/// @nodoc
abstract mixin class $FollowersListStateCopyWith<$Res>  {
  factory $FollowersListStateCopyWith(FollowersListState value, $Res Function(FollowersListState) _then) = _$FollowersListStateCopyWithImpl;
@useResult
$Res call({
 bool isLoading, UserEntity? user, List<UserEntity> followers, ScreenMessage? notification
});


$UserEntityCopyWith<$Res>? get user;

}
/// @nodoc
class _$FollowersListStateCopyWithImpl<$Res>
    implements $FollowersListStateCopyWith<$Res> {
  _$FollowersListStateCopyWithImpl(this._self, this._then);

  final FollowersListState _self;
  final $Res Function(FollowersListState) _then;

/// Create a copy of FollowersListState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoading = null,Object? user = freezed,Object? followers = null,Object? notification = freezed,}) {
  return _then(_self.copyWith(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserEntity?,followers: null == followers ? _self.followers : followers // ignore: cast_nullable_to_non_nullable
as List<UserEntity>,notification: freezed == notification ? _self.notification : notification // ignore: cast_nullable_to_non_nullable
as ScreenMessage?,
  ));
}
/// Create a copy of FollowersListState
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
}
}


/// Adds pattern-matching-related methods to [FollowersListState].
extension FollowersListStatePatterns on FollowersListState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FollowersListState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FollowersListState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FollowersListState value)  $default,){
final _that = this;
switch (_that) {
case _FollowersListState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FollowersListState value)?  $default,){
final _that = this;
switch (_that) {
case _FollowersListState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isLoading,  UserEntity? user,  List<UserEntity> followers,  ScreenMessage? notification)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FollowersListState() when $default != null:
return $default(_that.isLoading,_that.user,_that.followers,_that.notification);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isLoading,  UserEntity? user,  List<UserEntity> followers,  ScreenMessage? notification)  $default,) {final _that = this;
switch (_that) {
case _FollowersListState():
return $default(_that.isLoading,_that.user,_that.followers,_that.notification);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isLoading,  UserEntity? user,  List<UserEntity> followers,  ScreenMessage? notification)?  $default,) {final _that = this;
switch (_that) {
case _FollowersListState() when $default != null:
return $default(_that.isLoading,_that.user,_that.followers,_that.notification);case _:
  return null;

}
}

}

/// @nodoc


class _FollowersListState extends FollowersListState {
  const _FollowersListState({this.isLoading = false, this.user, final  List<UserEntity> followers = const [], this.notification}): _followers = followers,super._();
  

@override@JsonKey() final  bool isLoading;
@override final  UserEntity? user;
 final  List<UserEntity> _followers;
@override@JsonKey() List<UserEntity> get followers {
  if (_followers is EqualUnmodifiableListView) return _followers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_followers);
}

@override final  ScreenMessage? notification;

/// Create a copy of FollowersListState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FollowersListStateCopyWith<_FollowersListState> get copyWith => __$FollowersListStateCopyWithImpl<_FollowersListState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FollowersListState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.user, user) || other.user == user)&&const DeepCollectionEquality().equals(other._followers, _followers)&&const DeepCollectionEquality().equals(other.notification, notification));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,user,const DeepCollectionEquality().hash(_followers),const DeepCollectionEquality().hash(notification));

@override
String toString() {
  return 'FollowersListState(isLoading: $isLoading, user: $user, followers: $followers, notification: $notification)';
}


}

/// @nodoc
abstract mixin class _$FollowersListStateCopyWith<$Res> implements $FollowersListStateCopyWith<$Res> {
  factory _$FollowersListStateCopyWith(_FollowersListState value, $Res Function(_FollowersListState) _then) = __$FollowersListStateCopyWithImpl;
@override @useResult
$Res call({
 bool isLoading, UserEntity? user, List<UserEntity> followers, ScreenMessage? notification
});


@override $UserEntityCopyWith<$Res>? get user;

}
/// @nodoc
class __$FollowersListStateCopyWithImpl<$Res>
    implements _$FollowersListStateCopyWith<$Res> {
  __$FollowersListStateCopyWithImpl(this._self, this._then);

  final _FollowersListState _self;
  final $Res Function(_FollowersListState) _then;

/// Create a copy of FollowersListState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,Object? user = freezed,Object? followers = null,Object? notification = freezed,}) {
  return _then(_FollowersListState(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserEntity?,followers: null == followers ? _self._followers : followers // ignore: cast_nullable_to_non_nullable
as List<UserEntity>,notification: freezed == notification ? _self.notification : notification // ignore: cast_nullable_to_non_nullable
as ScreenMessage?,
  ));
}

/// Create a copy of FollowersListState
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
}
}

// dart format on
