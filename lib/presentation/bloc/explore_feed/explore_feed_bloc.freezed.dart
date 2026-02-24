// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'explore_feed_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ExploreFeedEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ExploreFeedEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ExploreFeedEvent()';
}


}

/// @nodoc
class $ExploreFeedEventCopyWith<$Res>  {
$ExploreFeedEventCopyWith(ExploreFeedEvent _, $Res Function(ExploreFeedEvent) __);
}


/// Adds pattern-matching-related methods to [ExploreFeedEvent].
extension ExploreFeedEventPatterns on ExploreFeedEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Started value)?  started,TResult Function( _Refreshed value)?  refreshed,TResult Function( _FetchMore value)?  fetchMore,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _Refreshed() when refreshed != null:
return refreshed(_that);case _FetchMore() when fetchMore != null:
return fetchMore(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Started value)  started,required TResult Function( _Refreshed value)  refreshed,required TResult Function( _FetchMore value)  fetchMore,}){
final _that = this;
switch (_that) {
case _Started():
return started(_that);case _Refreshed():
return refreshed(_that);case _FetchMore():
return fetchMore(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Started value)?  started,TResult? Function( _Refreshed value)?  refreshed,TResult? Function( _FetchMore value)?  fetchMore,}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _Refreshed() when refreshed != null:
return refreshed(_that);case _FetchMore() when fetchMore != null:
return fetchMore(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  started,TResult Function()?  refreshed,TResult Function()?  fetchMore,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _Refreshed() when refreshed != null:
return refreshed();case _FetchMore() when fetchMore != null:
return fetchMore();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  started,required TResult Function()  refreshed,required TResult Function()  fetchMore,}) {final _that = this;
switch (_that) {
case _Started():
return started();case _Refreshed():
return refreshed();case _FetchMore():
return fetchMore();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  started,TResult? Function()?  refreshed,TResult? Function()?  fetchMore,}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _Refreshed() when refreshed != null:
return refreshed();case _FetchMore() when fetchMore != null:
return fetchMore();case _:
  return null;

}
}

}

/// @nodoc


class _Started implements ExploreFeedEvent {
  const _Started();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Started);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ExploreFeedEvent.started()';
}


}




/// @nodoc


class _Refreshed implements ExploreFeedEvent {
  const _Refreshed();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Refreshed);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ExploreFeedEvent.refreshed()';
}


}




/// @nodoc


class _FetchMore implements ExploreFeedEvent {
  const _FetchMore();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FetchMore);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ExploreFeedEvent.fetchMore()';
}


}




/// @nodoc
mixin _$ExploreFeedState {

 bool get isLoading;@PageResultStringConverter() PageResult<PostEntity>? get posts; ScreenMessage? get message;
/// Create a copy of ExploreFeedState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ExploreFeedStateCopyWith<ExploreFeedState> get copyWith => _$ExploreFeedStateCopyWithImpl<ExploreFeedState>(this as ExploreFeedState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ExploreFeedState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.posts, posts) || other.posts == posts)&&const DeepCollectionEquality().equals(other.message, message));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,posts,const DeepCollectionEquality().hash(message));

@override
String toString() {
  return 'ExploreFeedState(isLoading: $isLoading, posts: $posts, message: $message)';
}


}

/// @nodoc
abstract mixin class $ExploreFeedStateCopyWith<$Res>  {
  factory $ExploreFeedStateCopyWith(ExploreFeedState value, $Res Function(ExploreFeedState) _then) = _$ExploreFeedStateCopyWithImpl;
@useResult
$Res call({
 bool isLoading,@PageResultStringConverter() PageResult<PostEntity>? posts, ScreenMessage? message
});


$PageResultCopyWith<PostEntity, $Res>? get posts;

}
/// @nodoc
class _$ExploreFeedStateCopyWithImpl<$Res>
    implements $ExploreFeedStateCopyWith<$Res> {
  _$ExploreFeedStateCopyWithImpl(this._self, this._then);

  final ExploreFeedState _self;
  final $Res Function(ExploreFeedState) _then;

/// Create a copy of ExploreFeedState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoading = null,Object? posts = freezed,Object? message = freezed,}) {
  return _then(_self.copyWith(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,posts: freezed == posts ? _self.posts : posts // ignore: cast_nullable_to_non_nullable
as PageResult<PostEntity>?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as ScreenMessage?,
  ));
}
/// Create a copy of ExploreFeedState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PageResultCopyWith<PostEntity, $Res>? get posts {
    if (_self.posts == null) {
    return null;
  }

  return $PageResultCopyWith<PostEntity, $Res>(_self.posts!, (value) {
    return _then(_self.copyWith(posts: value));
  });
}
}


/// Adds pattern-matching-related methods to [ExploreFeedState].
extension ExploreFeedStatePatterns on ExploreFeedState {
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isLoading, @PageResultStringConverter()  PageResult<PostEntity>? posts,  ScreenMessage? message)?  $default,{required TResult orElse(),}) {final _that = this;
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isLoading, @PageResultStringConverter()  PageResult<PostEntity>? posts,  ScreenMessage? message)  $default,) {final _that = this;
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isLoading, @PageResultStringConverter()  PageResult<PostEntity>? posts,  ScreenMessage? message)?  $default,) {final _that = this;
switch (_that) {
case _FollowingFeedState() when $default != null:
return $default(_that.isLoading,_that.posts,_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _FollowingFeedState implements ExploreFeedState {
  const _FollowingFeedState({this.isLoading = false, @PageResultStringConverter() this.posts, this.message});
  

@override@JsonKey() final  bool isLoading;
@override@PageResultStringConverter() final  PageResult<PostEntity>? posts;
@override final  ScreenMessage? message;

/// Create a copy of ExploreFeedState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FollowingFeedStateCopyWith<_FollowingFeedState> get copyWith => __$FollowingFeedStateCopyWithImpl<_FollowingFeedState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FollowingFeedState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.posts, posts) || other.posts == posts)&&const DeepCollectionEquality().equals(other.message, message));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,posts,const DeepCollectionEquality().hash(message));

@override
String toString() {
  return 'ExploreFeedState(isLoading: $isLoading, posts: $posts, message: $message)';
}


}

/// @nodoc
abstract mixin class _$FollowingFeedStateCopyWith<$Res> implements $ExploreFeedStateCopyWith<$Res> {
  factory _$FollowingFeedStateCopyWith(_FollowingFeedState value, $Res Function(_FollowingFeedState) _then) = __$FollowingFeedStateCopyWithImpl;
@override @useResult
$Res call({
 bool isLoading,@PageResultStringConverter() PageResult<PostEntity>? posts, ScreenMessage? message
});


@override $PageResultCopyWith<PostEntity, $Res>? get posts;

}
/// @nodoc
class __$FollowingFeedStateCopyWithImpl<$Res>
    implements _$FollowingFeedStateCopyWith<$Res> {
  __$FollowingFeedStateCopyWithImpl(this._self, this._then);

  final _FollowingFeedState _self;
  final $Res Function(_FollowingFeedState) _then;

/// Create a copy of ExploreFeedState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,Object? posts = freezed,Object? message = freezed,}) {
  return _then(_FollowingFeedState(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,posts: freezed == posts ? _self.posts : posts // ignore: cast_nullable_to_non_nullable
as PageResult<PostEntity>?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as ScreenMessage?,
  ));
}

/// Create a copy of ExploreFeedState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PageResultCopyWith<PostEntity, $Res>? get posts {
    if (_self.posts == null) {
    return null;
  }

  return $PageResultCopyWith<PostEntity, $Res>(_self.posts!, (value) {
    return _then(_self.copyWith(posts: value));
  });
}
}

// dart format on
