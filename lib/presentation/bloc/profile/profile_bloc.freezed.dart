// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ProfileEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProfileEvent()';
}


}

/// @nodoc
class $ProfileEventCopyWith<$Res>  {
$ProfileEventCopyWith(ProfileEvent _, $Res Function(ProfileEvent) __);
}


/// Adds pattern-matching-related methods to [ProfileEvent].
extension ProfileEventPatterns on ProfileEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Started value)?  started,TResult Function( _Updated value)?  updated,TResult Function( _StartedWithUserID value)?  startedWithUserID,TResult Function( _FetchMorePosts value)?  fetchMorePosts,TResult Function( _EditProfileClicked value)?  editProfileClicked,TResult Function( _Unfollow value)?  unfollow,TResult Function( _Follow value)?  follow,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _Updated() when updated != null:
return updated(_that);case _StartedWithUserID() when startedWithUserID != null:
return startedWithUserID(_that);case _FetchMorePosts() when fetchMorePosts != null:
return fetchMorePosts(_that);case _EditProfileClicked() when editProfileClicked != null:
return editProfileClicked(_that);case _Unfollow() when unfollow != null:
return unfollow(_that);case _Follow() when follow != null:
return follow(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Started value)  started,required TResult Function( _Updated value)  updated,required TResult Function( _StartedWithUserID value)  startedWithUserID,required TResult Function( _FetchMorePosts value)  fetchMorePosts,required TResult Function( _EditProfileClicked value)  editProfileClicked,required TResult Function( _Unfollow value)  unfollow,required TResult Function( _Follow value)  follow,}){
final _that = this;
switch (_that) {
case _Started():
return started(_that);case _Updated():
return updated(_that);case _StartedWithUserID():
return startedWithUserID(_that);case _FetchMorePosts():
return fetchMorePosts(_that);case _EditProfileClicked():
return editProfileClicked(_that);case _Unfollow():
return unfollow(_that);case _Follow():
return follow(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Started value)?  started,TResult? Function( _Updated value)?  updated,TResult? Function( _StartedWithUserID value)?  startedWithUserID,TResult? Function( _FetchMorePosts value)?  fetchMorePosts,TResult? Function( _EditProfileClicked value)?  editProfileClicked,TResult? Function( _Unfollow value)?  unfollow,TResult? Function( _Follow value)?  follow,}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _Updated() when updated != null:
return updated(_that);case _StartedWithUserID() when startedWithUserID != null:
return startedWithUserID(_that);case _FetchMorePosts() when fetchMorePosts != null:
return fetchMorePosts(_that);case _EditProfileClicked() when editProfileClicked != null:
return editProfileClicked(_that);case _Unfollow() when unfollow != null:
return unfollow(_that);case _Follow() when follow != null:
return follow(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( UserEntity user)?  started,TResult Function( UserEntity user)?  updated,TResult Function( String userID)?  startedWithUserID,TResult Function( UserEntity user)?  fetchMorePosts,TResult Function()?  editProfileClicked,TResult Function( UserEntity following)?  unfollow,TResult Function( UserEntity following)?  follow,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that.user);case _Updated() when updated != null:
return updated(_that.user);case _StartedWithUserID() when startedWithUserID != null:
return startedWithUserID(_that.userID);case _FetchMorePosts() when fetchMorePosts != null:
return fetchMorePosts(_that.user);case _EditProfileClicked() when editProfileClicked != null:
return editProfileClicked();case _Unfollow() when unfollow != null:
return unfollow(_that.following);case _Follow() when follow != null:
return follow(_that.following);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( UserEntity user)  started,required TResult Function( UserEntity user)  updated,required TResult Function( String userID)  startedWithUserID,required TResult Function( UserEntity user)  fetchMorePosts,required TResult Function()  editProfileClicked,required TResult Function( UserEntity following)  unfollow,required TResult Function( UserEntity following)  follow,}) {final _that = this;
switch (_that) {
case _Started():
return started(_that.user);case _Updated():
return updated(_that.user);case _StartedWithUserID():
return startedWithUserID(_that.userID);case _FetchMorePosts():
return fetchMorePosts(_that.user);case _EditProfileClicked():
return editProfileClicked();case _Unfollow():
return unfollow(_that.following);case _Follow():
return follow(_that.following);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( UserEntity user)?  started,TResult? Function( UserEntity user)?  updated,TResult? Function( String userID)?  startedWithUserID,TResult? Function( UserEntity user)?  fetchMorePosts,TResult? Function()?  editProfileClicked,TResult? Function( UserEntity following)?  unfollow,TResult? Function( UserEntity following)?  follow,}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that.user);case _Updated() when updated != null:
return updated(_that.user);case _StartedWithUserID() when startedWithUserID != null:
return startedWithUserID(_that.userID);case _FetchMorePosts() when fetchMorePosts != null:
return fetchMorePosts(_that.user);case _EditProfileClicked() when editProfileClicked != null:
return editProfileClicked();case _Unfollow() when unfollow != null:
return unfollow(_that.following);case _Follow() when follow != null:
return follow(_that.following);case _:
  return null;

}
}

}

/// @nodoc


class _Started extends ProfileEvent {
  const _Started(this.user): super._();
  

 final  UserEntity user;

/// Create a copy of ProfileEvent
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
  return 'ProfileEvent.started(user: $user)';
}


}

/// @nodoc
abstract mixin class _$StartedCopyWith<$Res> implements $ProfileEventCopyWith<$Res> {
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

/// Create a copy of ProfileEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? user = null,}) {
  return _then(_Started(
null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserEntity,
  ));
}

/// Create a copy of ProfileEvent
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


class _Updated extends ProfileEvent {
  const _Updated(this.user): super._();
  

 final  UserEntity user;

/// Create a copy of ProfileEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdatedCopyWith<_Updated> get copyWith => __$UpdatedCopyWithImpl<_Updated>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Updated&&(identical(other.user, user) || other.user == user));
}


@override
int get hashCode => Object.hash(runtimeType,user);

@override
String toString() {
  return 'ProfileEvent.updated(user: $user)';
}


}

/// @nodoc
abstract mixin class _$UpdatedCopyWith<$Res> implements $ProfileEventCopyWith<$Res> {
  factory _$UpdatedCopyWith(_Updated value, $Res Function(_Updated) _then) = __$UpdatedCopyWithImpl;
@useResult
$Res call({
 UserEntity user
});


$UserEntityCopyWith<$Res> get user;

}
/// @nodoc
class __$UpdatedCopyWithImpl<$Res>
    implements _$UpdatedCopyWith<$Res> {
  __$UpdatedCopyWithImpl(this._self, this._then);

  final _Updated _self;
  final $Res Function(_Updated) _then;

/// Create a copy of ProfileEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? user = null,}) {
  return _then(_Updated(
null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserEntity,
  ));
}

/// Create a copy of ProfileEvent
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


class _StartedWithUserID extends ProfileEvent {
  const _StartedWithUserID(this.userID): super._();
  

 final  String userID;

/// Create a copy of ProfileEvent
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
  return 'ProfileEvent.startedWithUserID(userID: $userID)';
}


}

/// @nodoc
abstract mixin class _$StartedWithUserIDCopyWith<$Res> implements $ProfileEventCopyWith<$Res> {
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

/// Create a copy of ProfileEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? userID = null,}) {
  return _then(_StartedWithUserID(
null == userID ? _self.userID : userID // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _FetchMorePosts extends ProfileEvent {
  const _FetchMorePosts(this.user): super._();
  

 final  UserEntity user;

/// Create a copy of ProfileEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FetchMorePostsCopyWith<_FetchMorePosts> get copyWith => __$FetchMorePostsCopyWithImpl<_FetchMorePosts>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FetchMorePosts&&(identical(other.user, user) || other.user == user));
}


@override
int get hashCode => Object.hash(runtimeType,user);

@override
String toString() {
  return 'ProfileEvent.fetchMorePosts(user: $user)';
}


}

/// @nodoc
abstract mixin class _$FetchMorePostsCopyWith<$Res> implements $ProfileEventCopyWith<$Res> {
  factory _$FetchMorePostsCopyWith(_FetchMorePosts value, $Res Function(_FetchMorePosts) _then) = __$FetchMorePostsCopyWithImpl;
@useResult
$Res call({
 UserEntity user
});


$UserEntityCopyWith<$Res> get user;

}
/// @nodoc
class __$FetchMorePostsCopyWithImpl<$Res>
    implements _$FetchMorePostsCopyWith<$Res> {
  __$FetchMorePostsCopyWithImpl(this._self, this._then);

  final _FetchMorePosts _self;
  final $Res Function(_FetchMorePosts) _then;

/// Create a copy of ProfileEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? user = null,}) {
  return _then(_FetchMorePosts(
null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserEntity,
  ));
}

/// Create a copy of ProfileEvent
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


class _EditProfileClicked extends ProfileEvent {
  const _EditProfileClicked(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EditProfileClicked);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProfileEvent.editProfileClicked()';
}


}




/// @nodoc


class _Unfollow extends ProfileEvent {
  const _Unfollow(this.following): super._();
  

 final  UserEntity following;

/// Create a copy of ProfileEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UnfollowCopyWith<_Unfollow> get copyWith => __$UnfollowCopyWithImpl<_Unfollow>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Unfollow&&(identical(other.following, following) || other.following == following));
}


@override
int get hashCode => Object.hash(runtimeType,following);

@override
String toString() {
  return 'ProfileEvent.unfollow(following: $following)';
}


}

/// @nodoc
abstract mixin class _$UnfollowCopyWith<$Res> implements $ProfileEventCopyWith<$Res> {
  factory _$UnfollowCopyWith(_Unfollow value, $Res Function(_Unfollow) _then) = __$UnfollowCopyWithImpl;
@useResult
$Res call({
 UserEntity following
});


$UserEntityCopyWith<$Res> get following;

}
/// @nodoc
class __$UnfollowCopyWithImpl<$Res>
    implements _$UnfollowCopyWith<$Res> {
  __$UnfollowCopyWithImpl(this._self, this._then);

  final _Unfollow _self;
  final $Res Function(_Unfollow) _then;

/// Create a copy of ProfileEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? following = null,}) {
  return _then(_Unfollow(
null == following ? _self.following : following // ignore: cast_nullable_to_non_nullable
as UserEntity,
  ));
}

/// Create a copy of ProfileEvent
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


class _Follow extends ProfileEvent {
  const _Follow(this.following): super._();
  

 final  UserEntity following;

/// Create a copy of ProfileEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FollowCopyWith<_Follow> get copyWith => __$FollowCopyWithImpl<_Follow>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Follow&&(identical(other.following, following) || other.following == following));
}


@override
int get hashCode => Object.hash(runtimeType,following);

@override
String toString() {
  return 'ProfileEvent.follow(following: $following)';
}


}

/// @nodoc
abstract mixin class _$FollowCopyWith<$Res> implements $ProfileEventCopyWith<$Res> {
  factory _$FollowCopyWith(_Follow value, $Res Function(_Follow) _then) = __$FollowCopyWithImpl;
@useResult
$Res call({
 UserEntity following
});


$UserEntityCopyWith<$Res> get following;

}
/// @nodoc
class __$FollowCopyWithImpl<$Res>
    implements _$FollowCopyWith<$Res> {
  __$FollowCopyWithImpl(this._self, this._then);

  final _Follow _self;
  final $Res Function(_Follow) _then;

/// Create a copy of ProfileEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? following = null,}) {
  return _then(_Follow(
null == following ? _self.following : following // ignore: cast_nullable_to_non_nullable
as UserEntity,
  ));
}

/// Create a copy of ProfileEvent
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
mixin _$ProfileState {

 UserEntity? get user; List<PostEntity> get posts; Object? get nextPageToken; ScreenMessage? get message; bool get isLoading; bool get fetchingMore; bool get isLastPage;
/// Create a copy of ProfileState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProfileStateCopyWith<ProfileState> get copyWith => _$ProfileStateCopyWithImpl<ProfileState>(this as ProfileState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileState&&(identical(other.user, user) || other.user == user)&&const DeepCollectionEquality().equals(other.posts, posts)&&const DeepCollectionEquality().equals(other.nextPageToken, nextPageToken)&&const DeepCollectionEquality().equals(other.message, message)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.fetchingMore, fetchingMore) || other.fetchingMore == fetchingMore)&&(identical(other.isLastPage, isLastPage) || other.isLastPage == isLastPage));
}


@override
int get hashCode => Object.hash(runtimeType,user,const DeepCollectionEquality().hash(posts),const DeepCollectionEquality().hash(nextPageToken),const DeepCollectionEquality().hash(message),isLoading,fetchingMore,isLastPage);

@override
String toString() {
  return 'ProfileState(user: $user, posts: $posts, nextPageToken: $nextPageToken, message: $message, isLoading: $isLoading, fetchingMore: $fetchingMore, isLastPage: $isLastPage)';
}


}

/// @nodoc
abstract mixin class $ProfileStateCopyWith<$Res>  {
  factory $ProfileStateCopyWith(ProfileState value, $Res Function(ProfileState) _then) = _$ProfileStateCopyWithImpl;
@useResult
$Res call({
 UserEntity? user, List<PostEntity> posts, Object? nextPageToken, ScreenMessage? message, bool isLoading, bool fetchingMore, bool isLastPage
});


$UserEntityCopyWith<$Res>? get user;

}
/// @nodoc
class _$ProfileStateCopyWithImpl<$Res>
    implements $ProfileStateCopyWith<$Res> {
  _$ProfileStateCopyWithImpl(this._self, this._then);

  final ProfileState _self;
  final $Res Function(ProfileState) _then;

/// Create a copy of ProfileState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? user = freezed,Object? posts = null,Object? nextPageToken = freezed,Object? message = freezed,Object? isLoading = null,Object? fetchingMore = null,Object? isLastPage = null,}) {
  return _then(_self.copyWith(
user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserEntity?,posts: null == posts ? _self.posts : posts // ignore: cast_nullable_to_non_nullable
as List<PostEntity>,nextPageToken: freezed == nextPageToken ? _self.nextPageToken : nextPageToken ,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as ScreenMessage?,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,fetchingMore: null == fetchingMore ? _self.fetchingMore : fetchingMore // ignore: cast_nullable_to_non_nullable
as bool,isLastPage: null == isLastPage ? _self.isLastPage : isLastPage // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of ProfileState
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


/// Adds pattern-matching-related methods to [ProfileState].
extension ProfileStatePatterns on ProfileState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProfileState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProfileState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProfileState value)  $default,){
final _that = this;
switch (_that) {
case _ProfileState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProfileState value)?  $default,){
final _that = this;
switch (_that) {
case _ProfileState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( UserEntity? user,  List<PostEntity> posts,  Object? nextPageToken,  ScreenMessage? message,  bool isLoading,  bool fetchingMore,  bool isLastPage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProfileState() when $default != null:
return $default(_that.user,_that.posts,_that.nextPageToken,_that.message,_that.isLoading,_that.fetchingMore,_that.isLastPage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( UserEntity? user,  List<PostEntity> posts,  Object? nextPageToken,  ScreenMessage? message,  bool isLoading,  bool fetchingMore,  bool isLastPage)  $default,) {final _that = this;
switch (_that) {
case _ProfileState():
return $default(_that.user,_that.posts,_that.nextPageToken,_that.message,_that.isLoading,_that.fetchingMore,_that.isLastPage);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( UserEntity? user,  List<PostEntity> posts,  Object? nextPageToken,  ScreenMessage? message,  bool isLoading,  bool fetchingMore,  bool isLastPage)?  $default,) {final _that = this;
switch (_that) {
case _ProfileState() when $default != null:
return $default(_that.user,_that.posts,_that.nextPageToken,_that.message,_that.isLoading,_that.fetchingMore,_that.isLastPage);case _:
  return null;

}
}

}

/// @nodoc


class _ProfileState extends ProfileState {
  const _ProfileState({this.user, final  List<PostEntity> posts = const [], this.nextPageToken, this.message, this.isLoading = false, this.fetchingMore = false, this.isLastPage = false}): _posts = posts,super._();
  

@override final  UserEntity? user;
 final  List<PostEntity> _posts;
@override@JsonKey() List<PostEntity> get posts {
  if (_posts is EqualUnmodifiableListView) return _posts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_posts);
}

@override final  Object? nextPageToken;
@override final  ScreenMessage? message;
@override@JsonKey() final  bool isLoading;
@override@JsonKey() final  bool fetchingMore;
@override@JsonKey() final  bool isLastPage;

/// Create a copy of ProfileState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProfileStateCopyWith<_ProfileState> get copyWith => __$ProfileStateCopyWithImpl<_ProfileState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProfileState&&(identical(other.user, user) || other.user == user)&&const DeepCollectionEquality().equals(other._posts, _posts)&&const DeepCollectionEquality().equals(other.nextPageToken, nextPageToken)&&const DeepCollectionEquality().equals(other.message, message)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.fetchingMore, fetchingMore) || other.fetchingMore == fetchingMore)&&(identical(other.isLastPage, isLastPage) || other.isLastPage == isLastPage));
}


@override
int get hashCode => Object.hash(runtimeType,user,const DeepCollectionEquality().hash(_posts),const DeepCollectionEquality().hash(nextPageToken),const DeepCollectionEquality().hash(message),isLoading,fetchingMore,isLastPage);

@override
String toString() {
  return 'ProfileState(user: $user, posts: $posts, nextPageToken: $nextPageToken, message: $message, isLoading: $isLoading, fetchingMore: $fetchingMore, isLastPage: $isLastPage)';
}


}

/// @nodoc
abstract mixin class _$ProfileStateCopyWith<$Res> implements $ProfileStateCopyWith<$Res> {
  factory _$ProfileStateCopyWith(_ProfileState value, $Res Function(_ProfileState) _then) = __$ProfileStateCopyWithImpl;
@override @useResult
$Res call({
 UserEntity? user, List<PostEntity> posts, Object? nextPageToken, ScreenMessage? message, bool isLoading, bool fetchingMore, bool isLastPage
});


@override $UserEntityCopyWith<$Res>? get user;

}
/// @nodoc
class __$ProfileStateCopyWithImpl<$Res>
    implements _$ProfileStateCopyWith<$Res> {
  __$ProfileStateCopyWithImpl(this._self, this._then);

  final _ProfileState _self;
  final $Res Function(_ProfileState) _then;

/// Create a copy of ProfileState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? user = freezed,Object? posts = null,Object? nextPageToken = freezed,Object? message = freezed,Object? isLoading = null,Object? fetchingMore = null,Object? isLastPage = null,}) {
  return _then(_ProfileState(
user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserEntity?,posts: null == posts ? _self._posts : posts // ignore: cast_nullable_to_non_nullable
as List<PostEntity>,nextPageToken: freezed == nextPageToken ? _self.nextPageToken : nextPageToken ,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as ScreenMessage?,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,fetchingMore: null == fetchingMore ? _self.fetchingMore : fetchingMore // ignore: cast_nullable_to_non_nullable
as bool,isLastPage: null == isLastPage ? _self.isLastPage : isLastPage // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of ProfileState
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
