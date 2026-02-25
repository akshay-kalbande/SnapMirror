// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'following_feed_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$FollowingFeedEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FollowingFeedEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FollowingFeedEvent()';
}


}

/// @nodoc
class $FollowingFeedEventCopyWith<$Res>  {
$FollowingFeedEventCopyWith(FollowingFeedEvent _, $Res Function(FollowingFeedEvent) __);
}


/// Adds pattern-matching-related methods to [FollowingFeedEvent].
extension FollowingFeedEventPatterns on FollowingFeedEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Started value)?  started,TResult Function( _Refreshed value)?  refreshed,TResult Function( _FetchMore value)?  fetchMore,TResult Function( _PostLiked value)?  postLiked,TResult Function( _NewPostAdded value)?  newPostAdded,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _Refreshed() when refreshed != null:
return refreshed(_that);case _FetchMore() when fetchMore != null:
return fetchMore(_that);case _PostLiked() when postLiked != null:
return postLiked(_that);case _NewPostAdded() when newPostAdded != null:
return newPostAdded(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Started value)  started,required TResult Function( _Refreshed value)  refreshed,required TResult Function( _FetchMore value)  fetchMore,required TResult Function( _PostLiked value)  postLiked,required TResult Function( _NewPostAdded value)  newPostAdded,}){
final _that = this;
switch (_that) {
case _Started():
return started(_that);case _Refreshed():
return refreshed(_that);case _FetchMore():
return fetchMore(_that);case _PostLiked():
return postLiked(_that);case _NewPostAdded():
return newPostAdded(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Started value)?  started,TResult? Function( _Refreshed value)?  refreshed,TResult? Function( _FetchMore value)?  fetchMore,TResult? Function( _PostLiked value)?  postLiked,TResult? Function( _NewPostAdded value)?  newPostAdded,}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _Refreshed() when refreshed != null:
return refreshed(_that);case _FetchMore() when fetchMore != null:
return fetchMore(_that);case _PostLiked() when postLiked != null:
return postLiked(_that);case _NewPostAdded() when newPostAdded != null:
return newPostAdded(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  started,TResult Function()?  refreshed,TResult Function()?  fetchMore,TResult Function( String userID,  String postID)?  postLiked,TResult Function( PostEntity post)?  newPostAdded,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _Refreshed() when refreshed != null:
return refreshed();case _FetchMore() when fetchMore != null:
return fetchMore();case _PostLiked() when postLiked != null:
return postLiked(_that.userID,_that.postID);case _NewPostAdded() when newPostAdded != null:
return newPostAdded(_that.post);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  started,required TResult Function()  refreshed,required TResult Function()  fetchMore,required TResult Function( String userID,  String postID)  postLiked,required TResult Function( PostEntity post)  newPostAdded,}) {final _that = this;
switch (_that) {
case _Started():
return started();case _Refreshed():
return refreshed();case _FetchMore():
return fetchMore();case _PostLiked():
return postLiked(_that.userID,_that.postID);case _NewPostAdded():
return newPostAdded(_that.post);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  started,TResult? Function()?  refreshed,TResult? Function()?  fetchMore,TResult? Function( String userID,  String postID)?  postLiked,TResult? Function( PostEntity post)?  newPostAdded,}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _Refreshed() when refreshed != null:
return refreshed();case _FetchMore() when fetchMore != null:
return fetchMore();case _PostLiked() when postLiked != null:
return postLiked(_that.userID,_that.postID);case _NewPostAdded() when newPostAdded != null:
return newPostAdded(_that.post);case _:
  return null;

}
}

}

/// @nodoc


class _Started implements FollowingFeedEvent {
  const _Started();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Started);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FollowingFeedEvent.started()';
}


}




/// @nodoc


class _Refreshed implements FollowingFeedEvent {
  const _Refreshed();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Refreshed);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FollowingFeedEvent.refreshed()';
}


}




/// @nodoc


class _FetchMore implements FollowingFeedEvent {
  const _FetchMore();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FetchMore);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FollowingFeedEvent.fetchMore()';
}


}




/// @nodoc


class _PostLiked implements FollowingFeedEvent {
  const _PostLiked({required this.userID, required this.postID});
  

 final  String userID;
 final  String postID;

/// Create a copy of FollowingFeedEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PostLikedCopyWith<_PostLiked> get copyWith => __$PostLikedCopyWithImpl<_PostLiked>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PostLiked&&(identical(other.userID, userID) || other.userID == userID)&&(identical(other.postID, postID) || other.postID == postID));
}


@override
int get hashCode => Object.hash(runtimeType,userID,postID);

@override
String toString() {
  return 'FollowingFeedEvent.postLiked(userID: $userID, postID: $postID)';
}


}

/// @nodoc
abstract mixin class _$PostLikedCopyWith<$Res> implements $FollowingFeedEventCopyWith<$Res> {
  factory _$PostLikedCopyWith(_PostLiked value, $Res Function(_PostLiked) _then) = __$PostLikedCopyWithImpl;
@useResult
$Res call({
 String userID, String postID
});




}
/// @nodoc
class __$PostLikedCopyWithImpl<$Res>
    implements _$PostLikedCopyWith<$Res> {
  __$PostLikedCopyWithImpl(this._self, this._then);

  final _PostLiked _self;
  final $Res Function(_PostLiked) _then;

/// Create a copy of FollowingFeedEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? userID = null,Object? postID = null,}) {
  return _then(_PostLiked(
userID: null == userID ? _self.userID : userID // ignore: cast_nullable_to_non_nullable
as String,postID: null == postID ? _self.postID : postID // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _NewPostAdded implements FollowingFeedEvent {
  const _NewPostAdded(this.post);
  

 final  PostEntity post;

/// Create a copy of FollowingFeedEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NewPostAddedCopyWith<_NewPostAdded> get copyWith => __$NewPostAddedCopyWithImpl<_NewPostAdded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NewPostAdded&&(identical(other.post, post) || other.post == post));
}


@override
int get hashCode => Object.hash(runtimeType,post);

@override
String toString() {
  return 'FollowingFeedEvent.newPostAdded(post: $post)';
}


}

/// @nodoc
abstract mixin class _$NewPostAddedCopyWith<$Res> implements $FollowingFeedEventCopyWith<$Res> {
  factory _$NewPostAddedCopyWith(_NewPostAdded value, $Res Function(_NewPostAdded) _then) = __$NewPostAddedCopyWithImpl;
@useResult
$Res call({
 PostEntity post
});


$PostEntityCopyWith<$Res> get post;

}
/// @nodoc
class __$NewPostAddedCopyWithImpl<$Res>
    implements _$NewPostAddedCopyWith<$Res> {
  __$NewPostAddedCopyWithImpl(this._self, this._then);

  final _NewPostAdded _self;
  final $Res Function(_NewPostAdded) _then;

/// Create a copy of FollowingFeedEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? post = null,}) {
  return _then(_NewPostAdded(
null == post ? _self.post : post // ignore: cast_nullable_to_non_nullable
as PostEntity,
  ));
}

/// Create a copy of FollowingFeedEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PostEntityCopyWith<$Res> get post {
  
  return $PostEntityCopyWith<$Res>(_self.post, (value) {
    return _then(_self.copyWith(post: value));
  });
}
}


/// @nodoc
mixin _$FollowingFeedState {

 bool get isLoading;@PageResultStringConverter() PageResult<String>? get posts;@JsonKey(includeFromJson: false, includeToJson: false) ScreenMessage? get message;
/// Create a copy of FollowingFeedState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FollowingFeedStateCopyWith<FollowingFeedState> get copyWith => _$FollowingFeedStateCopyWithImpl<FollowingFeedState>(this as FollowingFeedState, _$identity);

  /// Serializes this FollowingFeedState to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FollowingFeedState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.posts, posts) || other.posts == posts)&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,isLoading,posts,message);

@override
String toString() {
  return 'FollowingFeedState(isLoading: $isLoading, posts: $posts, message: $message)';
}


}

/// @nodoc
abstract mixin class $FollowingFeedStateCopyWith<$Res>  {
  factory $FollowingFeedStateCopyWith(FollowingFeedState value, $Res Function(FollowingFeedState) _then) = _$FollowingFeedStateCopyWithImpl;
@useResult
$Res call({
 bool isLoading,@PageResultStringConverter() PageResult<String>? posts,@JsonKey(includeFromJson: false, includeToJson: false) ScreenMessage? message
});


$PageResultCopyWith<String, $Res>? get posts;$ScreenMessageCopyWith<$Res>? get message;

}
/// @nodoc
class _$FollowingFeedStateCopyWithImpl<$Res>
    implements $FollowingFeedStateCopyWith<$Res> {
  _$FollowingFeedStateCopyWithImpl(this._self, this._then);

  final FollowingFeedState _self;
  final $Res Function(FollowingFeedState) _then;

/// Create a copy of FollowingFeedState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoading = null,Object? posts = freezed,Object? message = freezed,}) {
  return _then(_self.copyWith(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,posts: freezed == posts ? _self.posts : posts // ignore: cast_nullable_to_non_nullable
as PageResult<String>?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as ScreenMessage?,
  ));
}
/// Create a copy of FollowingFeedState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PageResultCopyWith<String, $Res>? get posts {
    if (_self.posts == null) {
    return null;
  }

  return $PageResultCopyWith<String, $Res>(_self.posts!, (value) {
    return _then(_self.copyWith(posts: value));
  });
}/// Create a copy of FollowingFeedState
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


/// Adds pattern-matching-related methods to [FollowingFeedState].
extension FollowingFeedStatePatterns on FollowingFeedState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FollowingFeedState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FollowingFeedState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FollowingFeedState value)  $default,){
final _that = this;
switch (_that) {
case _FollowingFeedState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FollowingFeedState value)?  $default,){
final _that = this;
switch (_that) {
case _FollowingFeedState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isLoading, @PageResultStringConverter()  PageResult<String>? posts, @JsonKey(includeFromJson: false, includeToJson: false)  ScreenMessage? message)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FollowingFeedState() when $default != null:
return $default(_that.isLoading,_that.posts,_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isLoading, @PageResultStringConverter()  PageResult<String>? posts, @JsonKey(includeFromJson: false, includeToJson: false)  ScreenMessage? message)  $default,) {final _that = this;
switch (_that) {
case _FollowingFeedState():
return $default(_that.isLoading,_that.posts,_that.message);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isLoading, @PageResultStringConverter()  PageResult<String>? posts, @JsonKey(includeFromJson: false, includeToJson: false)  ScreenMessage? message)?  $default,) {final _that = this;
switch (_that) {
case _FollowingFeedState() when $default != null:
return $default(_that.isLoading,_that.posts,_that.message);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FollowingFeedState implements FollowingFeedState {
  const _FollowingFeedState({this.isLoading = false, @PageResultStringConverter() this.posts, @JsonKey(includeFromJson: false, includeToJson: false) this.message});
  factory _FollowingFeedState.fromJson(Map<String, dynamic> json,) => _$FollowingFeedStateFromJson(json,);

@override@JsonKey() final  bool isLoading;
@override@PageResultStringConverter() final  PageResult<String>? posts;
@override@JsonKey(includeFromJson: false, includeToJson: false) final  ScreenMessage? message;

/// Create a copy of FollowingFeedState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FollowingFeedStateCopyWith<_FollowingFeedState> get copyWith => __$FollowingFeedStateCopyWithImpl<_FollowingFeedState>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FollowingFeedStateToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FollowingFeedState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.posts, posts) || other.posts == posts)&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,isLoading,posts,message);

@override
String toString() {
  return 'FollowingFeedState(isLoading: $isLoading, posts: $posts, message: $message)';
}


}

/// @nodoc
abstract mixin class _$FollowingFeedStateCopyWith<$Res> implements $FollowingFeedStateCopyWith<$Res> {
  factory _$FollowingFeedStateCopyWith(_FollowingFeedState value, $Res Function(_FollowingFeedState) _then) = __$FollowingFeedStateCopyWithImpl;
@override @useResult
$Res call({
 bool isLoading,@PageResultStringConverter() PageResult<String>? posts,@JsonKey(includeFromJson: false, includeToJson: false) ScreenMessage? message
});


@override $PageResultCopyWith<String, $Res>? get posts;@override $ScreenMessageCopyWith<$Res>? get message;

}
/// @nodoc
class __$FollowingFeedStateCopyWithImpl<$Res>
    implements _$FollowingFeedStateCopyWith<$Res> {
  __$FollowingFeedStateCopyWithImpl(this._self, this._then);

  final _FollowingFeedState _self;
  final $Res Function(_FollowingFeedState) _then;

/// Create a copy of FollowingFeedState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,Object? posts = freezed,Object? message = freezed,}) {
  return _then(_FollowingFeedState(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,posts: freezed == posts ? _self.posts : posts // ignore: cast_nullable_to_non_nullable
as PageResult<String>?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as ScreenMessage?,
  ));
}

/// Create a copy of FollowingFeedState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PageResultCopyWith<String, $Res>? get posts {
    if (_self.posts == null) {
    return null;
  }

  return $PageResultCopyWith<String, $Res>(_self.posts!, (value) {
    return _then(_self.copyWith(posts: value));
  });
}/// Create a copy of FollowingFeedState
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
