// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_card_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PostCardEvent implements DiagnosticableTreeMixin {

 PostEntity get post;
/// Create a copy of PostCardEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PostCardEventCopyWith<PostCardEvent> get copyWith => _$PostCardEventCopyWithImpl<PostCardEvent>(this as PostCardEvent, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'PostCardEvent'))
    ..add(DiagnosticsProperty('post', post));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PostCardEvent&&(identical(other.post, post) || other.post == post));
}


@override
int get hashCode => Object.hash(runtimeType,post);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'PostCardEvent(post: $post)';
}


}

/// @nodoc
abstract mixin class $PostCardEventCopyWith<$Res>  {
  factory $PostCardEventCopyWith(PostCardEvent value, $Res Function(PostCardEvent) _then) = _$PostCardEventCopyWithImpl;
@useResult
$Res call({
 PostEntity post
});


$PostEntityCopyWith<$Res> get post;

}
/// @nodoc
class _$PostCardEventCopyWithImpl<$Res>
    implements $PostCardEventCopyWith<$Res> {
  _$PostCardEventCopyWithImpl(this._self, this._then);

  final PostCardEvent _self;
  final $Res Function(PostCardEvent) _then;

/// Create a copy of PostCardEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? post = null,}) {
  return _then(_self.copyWith(
post: null == post ? _self.post : post // ignore: cast_nullable_to_non_nullable
as PostEntity,
  ));
}
/// Create a copy of PostCardEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PostEntityCopyWith<$Res> get post {
  
  return $PostEntityCopyWith<$Res>(_self.post, (value) {
    return _then(_self.copyWith(post: value));
  });
}
}


/// Adds pattern-matching-related methods to [PostCardEvent].
extension PostCardEventPatterns on PostCardEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Toggled value)?  toggled,TResult Function( _BookmarkCLicked value)?  bookmarkClicked,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Toggled() when toggled != null:
return toggled(_that);case _BookmarkCLicked() when bookmarkClicked != null:
return bookmarkClicked(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Toggled value)  toggled,required TResult Function( _BookmarkCLicked value)  bookmarkClicked,}){
final _that = this;
switch (_that) {
case _Toggled():
return toggled(_that);case _BookmarkCLicked():
return bookmarkClicked(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Toggled value)?  toggled,TResult? Function( _BookmarkCLicked value)?  bookmarkClicked,}){
final _that = this;
switch (_that) {
case _Toggled() when toggled != null:
return toggled(_that);case _BookmarkCLicked() when bookmarkClicked != null:
return bookmarkClicked(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( PostEntity post)?  toggled,TResult Function( PostEntity post)?  bookmarkClicked,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Toggled() when toggled != null:
return toggled(_that.post);case _BookmarkCLicked() when bookmarkClicked != null:
return bookmarkClicked(_that.post);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( PostEntity post)  toggled,required TResult Function( PostEntity post)  bookmarkClicked,}) {final _that = this;
switch (_that) {
case _Toggled():
return toggled(_that.post);case _BookmarkCLicked():
return bookmarkClicked(_that.post);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( PostEntity post)?  toggled,TResult? Function( PostEntity post)?  bookmarkClicked,}) {final _that = this;
switch (_that) {
case _Toggled() when toggled != null:
return toggled(_that.post);case _BookmarkCLicked() when bookmarkClicked != null:
return bookmarkClicked(_that.post);case _:
  return null;

}
}

}

/// @nodoc


class _Toggled with DiagnosticableTreeMixin implements PostCardEvent {
  const _Toggled(this.post);
  

@override final  PostEntity post;

/// Create a copy of PostCardEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ToggledCopyWith<_Toggled> get copyWith => __$ToggledCopyWithImpl<_Toggled>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'PostCardEvent.toggled'))
    ..add(DiagnosticsProperty('post', post));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Toggled&&(identical(other.post, post) || other.post == post));
}


@override
int get hashCode => Object.hash(runtimeType,post);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'PostCardEvent.toggled(post: $post)';
}


}

/// @nodoc
abstract mixin class _$ToggledCopyWith<$Res> implements $PostCardEventCopyWith<$Res> {
  factory _$ToggledCopyWith(_Toggled value, $Res Function(_Toggled) _then) = __$ToggledCopyWithImpl;
@override @useResult
$Res call({
 PostEntity post
});


@override $PostEntityCopyWith<$Res> get post;

}
/// @nodoc
class __$ToggledCopyWithImpl<$Res>
    implements _$ToggledCopyWith<$Res> {
  __$ToggledCopyWithImpl(this._self, this._then);

  final _Toggled _self;
  final $Res Function(_Toggled) _then;

/// Create a copy of PostCardEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? post = null,}) {
  return _then(_Toggled(
null == post ? _self.post : post // ignore: cast_nullable_to_non_nullable
as PostEntity,
  ));
}

/// Create a copy of PostCardEvent
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


class _BookmarkCLicked with DiagnosticableTreeMixin implements PostCardEvent {
  const _BookmarkCLicked(this.post);
  

@override final  PostEntity post;

/// Create a copy of PostCardEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BookmarkCLickedCopyWith<_BookmarkCLicked> get copyWith => __$BookmarkCLickedCopyWithImpl<_BookmarkCLicked>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'PostCardEvent.bookmarkClicked'))
    ..add(DiagnosticsProperty('post', post));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BookmarkCLicked&&(identical(other.post, post) || other.post == post));
}


@override
int get hashCode => Object.hash(runtimeType,post);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'PostCardEvent.bookmarkClicked(post: $post)';
}


}

/// @nodoc
abstract mixin class _$BookmarkCLickedCopyWith<$Res> implements $PostCardEventCopyWith<$Res> {
  factory _$BookmarkCLickedCopyWith(_BookmarkCLicked value, $Res Function(_BookmarkCLicked) _then) = __$BookmarkCLickedCopyWithImpl;
@override @useResult
$Res call({
 PostEntity post
});


@override $PostEntityCopyWith<$Res> get post;

}
/// @nodoc
class __$BookmarkCLickedCopyWithImpl<$Res>
    implements _$BookmarkCLickedCopyWith<$Res> {
  __$BookmarkCLickedCopyWithImpl(this._self, this._then);

  final _BookmarkCLicked _self;
  final $Res Function(_BookmarkCLicked) _then;

/// Create a copy of PostCardEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? post = null,}) {
  return _then(_BookmarkCLicked(
null == post ? _self.post : post // ignore: cast_nullable_to_non_nullable
as PostEntity,
  ));
}

/// Create a copy of PostCardEvent
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
mixin _$PostCardState implements DiagnosticableTreeMixin {




@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'PostCardState'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PostCardState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'PostCardState()';
}


}

/// @nodoc
class $PostCardStateCopyWith<$Res>  {
$PostCardStateCopyWith(PostCardState _, $Res Function(PostCardState) __);
}


/// Adds pattern-matching-related methods to [PostCardState].
extension PostCardStatePatterns on PostCardState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Loading value)?  loading,TResult Function( _Loaded value)?  loaded,TResult Function( _Error value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Loading() when loading != null:
return loading(_that);case _Loaded() when loaded != null:
return loaded(_that);case _Error() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Loading value)  loading,required TResult Function( _Loaded value)  loaded,required TResult Function( _Error value)  error,}){
final _that = this;
switch (_that) {
case _Loading():
return loading(_that);case _Loaded():
return loaded(_that);case _Error():
return error(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Loading value)?  loading,TResult? Function( _Loaded value)?  loaded,TResult? Function( _Error value)?  error,}){
final _that = this;
switch (_that) {
case _Loading() when loading != null:
return loading(_that);case _Loaded() when loaded != null:
return loaded(_that);case _Error() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  loading,TResult Function( PostEntity post)?  loaded,TResult Function( String error)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Loading() when loading != null:
return loading();case _Loaded() when loaded != null:
return loaded(_that.post);case _Error() when error != null:
return error(_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  loading,required TResult Function( PostEntity post)  loaded,required TResult Function( String error)  error,}) {final _that = this;
switch (_that) {
case _Loading():
return loading();case _Loaded():
return loaded(_that.post);case _Error():
return error(_that.error);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  loading,TResult? Function( PostEntity post)?  loaded,TResult? Function( String error)?  error,}) {final _that = this;
switch (_that) {
case _Loading() when loading != null:
return loading();case _Loaded() when loaded != null:
return loaded(_that.post);case _Error() when error != null:
return error(_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _Loading with DiagnosticableTreeMixin implements PostCardState {
  const _Loading();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'PostCardState.loading'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'PostCardState.loading()';
}


}




/// @nodoc


class _Loaded with DiagnosticableTreeMixin implements PostCardState {
  const _Loaded(this.post);
  

 final  PostEntity post;

/// Create a copy of PostCardState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoadedCopyWith<_Loaded> get copyWith => __$LoadedCopyWithImpl<_Loaded>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'PostCardState.loaded'))
    ..add(DiagnosticsProperty('post', post));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loaded&&(identical(other.post, post) || other.post == post));
}


@override
int get hashCode => Object.hash(runtimeType,post);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'PostCardState.loaded(post: $post)';
}


}

/// @nodoc
abstract mixin class _$LoadedCopyWith<$Res> implements $PostCardStateCopyWith<$Res> {
  factory _$LoadedCopyWith(_Loaded value, $Res Function(_Loaded) _then) = __$LoadedCopyWithImpl;
@useResult
$Res call({
 PostEntity post
});


$PostEntityCopyWith<$Res> get post;

}
/// @nodoc
class __$LoadedCopyWithImpl<$Res>
    implements _$LoadedCopyWith<$Res> {
  __$LoadedCopyWithImpl(this._self, this._then);

  final _Loaded _self;
  final $Res Function(_Loaded) _then;

/// Create a copy of PostCardState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? post = null,}) {
  return _then(_Loaded(
null == post ? _self.post : post // ignore: cast_nullable_to_non_nullable
as PostEntity,
  ));
}

/// Create a copy of PostCardState
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


class _Error with DiagnosticableTreeMixin implements PostCardState {
  const _Error(this.error);
  

 final  String error;

/// Create a copy of PostCardState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ErrorCopyWith<_Error> get copyWith => __$ErrorCopyWithImpl<_Error>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'PostCardState.error'))
    ..add(DiagnosticsProperty('error', error));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Error&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'PostCardState.error(error: $error)';
}


}

/// @nodoc
abstract mixin class _$ErrorCopyWith<$Res> implements $PostCardStateCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) _then) = __$ErrorCopyWithImpl;
@useResult
$Res call({
 String error
});




}
/// @nodoc
class __$ErrorCopyWithImpl<$Res>
    implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(this._self, this._then);

  final _Error _self;
  final $Res Function(_Error) _then;

/// Create a copy of PostCardState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(_Error(
null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
