// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'upload_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UploadEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UploadEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UploadEvent()';
}


}

/// @nodoc
class $UploadEventCopyWith<$Res>  {
$UploadEventCopyWith(UploadEvent _, $Res Function(UploadEvent) __);
}


/// Adds pattern-matching-related methods to [UploadEvent].
extension UploadEventPatterns on UploadEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Started value)?  started,TResult Function( _Upload value)?  upload,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _Upload() when upload != null:
return upload(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Started value)  started,required TResult Function( _Upload value)  upload,}){
final _that = this;
switch (_that) {
case _Started():
return started(_that);case _Upload():
return upload(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Started value)?  started,TResult? Function( _Upload value)?  upload,}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _Upload() when upload != null:
return upload(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  started,TResult Function( UploadPostParams post)?  upload,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _Upload() when upload != null:
return upload(_that.post);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  started,required TResult Function( UploadPostParams post)  upload,}) {final _that = this;
switch (_that) {
case _Started():
return started();case _Upload():
return upload(_that.post);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  started,TResult? Function( UploadPostParams post)?  upload,}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _Upload() when upload != null:
return upload(_that.post);case _:
  return null;

}
}

}

/// @nodoc


class _Started implements UploadEvent {
  const _Started();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Started);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UploadEvent.started()';
}


}




/// @nodoc


class _Upload implements UploadEvent {
  const _Upload(this.post);
  

 final  UploadPostParams post;

/// Create a copy of UploadEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UploadCopyWith<_Upload> get copyWith => __$UploadCopyWithImpl<_Upload>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Upload&&(identical(other.post, post) || other.post == post));
}


@override
int get hashCode => Object.hash(runtimeType,post);

@override
String toString() {
  return 'UploadEvent.upload(post: $post)';
}


}

/// @nodoc
abstract mixin class _$UploadCopyWith<$Res> implements $UploadEventCopyWith<$Res> {
  factory _$UploadCopyWith(_Upload value, $Res Function(_Upload) _then) = __$UploadCopyWithImpl;
@useResult
$Res call({
 UploadPostParams post
});




}
/// @nodoc
class __$UploadCopyWithImpl<$Res>
    implements _$UploadCopyWith<$Res> {
  __$UploadCopyWithImpl(this._self, this._then);

  final _Upload _self;
  final $Res Function(_Upload) _then;

/// Create a copy of UploadEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? post = null,}) {
  return _then(_Upload(
null == post ? _self.post : post // ignore: cast_nullable_to_non_nullable
as UploadPostParams,
  ));
}


}

/// @nodoc
mixin _$UploadState {

 bool get canUpload; PostUploadResultEntity? get postUploadResult;
/// Create a copy of UploadState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UploadStateCopyWith<UploadState> get copyWith => _$UploadStateCopyWithImpl<UploadState>(this as UploadState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UploadState&&(identical(other.canUpload, canUpload) || other.canUpload == canUpload)&&(identical(other.postUploadResult, postUploadResult) || other.postUploadResult == postUploadResult));
}


@override
int get hashCode => Object.hash(runtimeType,canUpload,postUploadResult);

@override
String toString() {
  return 'UploadState(canUpload: $canUpload, postUploadResult: $postUploadResult)';
}


}

/// @nodoc
abstract mixin class $UploadStateCopyWith<$Res>  {
  factory $UploadStateCopyWith(UploadState value, $Res Function(UploadState) _then) = _$UploadStateCopyWithImpl;
@useResult
$Res call({
 bool canUpload, PostUploadResultEntity? postUploadResult
});


$PostUploadResultEntityCopyWith<$Res>? get postUploadResult;

}
/// @nodoc
class _$UploadStateCopyWithImpl<$Res>
    implements $UploadStateCopyWith<$Res> {
  _$UploadStateCopyWithImpl(this._self, this._then);

  final UploadState _self;
  final $Res Function(UploadState) _then;

/// Create a copy of UploadState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? canUpload = null,Object? postUploadResult = freezed,}) {
  return _then(_self.copyWith(
canUpload: null == canUpload ? _self.canUpload : canUpload // ignore: cast_nullable_to_non_nullable
as bool,postUploadResult: freezed == postUploadResult ? _self.postUploadResult : postUploadResult // ignore: cast_nullable_to_non_nullable
as PostUploadResultEntity?,
  ));
}
/// Create a copy of UploadState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PostUploadResultEntityCopyWith<$Res>? get postUploadResult {
    if (_self.postUploadResult == null) {
    return null;
  }

  return $PostUploadResultEntityCopyWith<$Res>(_self.postUploadResult!, (value) {
    return _then(_self.copyWith(postUploadResult: value));
  });
}
}


/// Adds pattern-matching-related methods to [UploadState].
extension UploadStatePatterns on UploadState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UploadState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UploadState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UploadState value)  $default,){
final _that = this;
switch (_that) {
case _UploadState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UploadState value)?  $default,){
final _that = this;
switch (_that) {
case _UploadState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool canUpload,  PostUploadResultEntity? postUploadResult)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UploadState() when $default != null:
return $default(_that.canUpload,_that.postUploadResult);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool canUpload,  PostUploadResultEntity? postUploadResult)  $default,) {final _that = this;
switch (_that) {
case _UploadState():
return $default(_that.canUpload,_that.postUploadResult);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool canUpload,  PostUploadResultEntity? postUploadResult)?  $default,) {final _that = this;
switch (_that) {
case _UploadState() when $default != null:
return $default(_that.canUpload,_that.postUploadResult);case _:
  return null;

}
}

}

/// @nodoc


class _UploadState extends UploadState {
  const _UploadState({this.canUpload = true, this.postUploadResult}): super._();
  

@override@JsonKey() final  bool canUpload;
@override final  PostUploadResultEntity? postUploadResult;

/// Create a copy of UploadState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UploadStateCopyWith<_UploadState> get copyWith => __$UploadStateCopyWithImpl<_UploadState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UploadState&&(identical(other.canUpload, canUpload) || other.canUpload == canUpload)&&(identical(other.postUploadResult, postUploadResult) || other.postUploadResult == postUploadResult));
}


@override
int get hashCode => Object.hash(runtimeType,canUpload,postUploadResult);

@override
String toString() {
  return 'UploadState(canUpload: $canUpload, postUploadResult: $postUploadResult)';
}


}

/// @nodoc
abstract mixin class _$UploadStateCopyWith<$Res> implements $UploadStateCopyWith<$Res> {
  factory _$UploadStateCopyWith(_UploadState value, $Res Function(_UploadState) _then) = __$UploadStateCopyWithImpl;
@override @useResult
$Res call({
 bool canUpload, PostUploadResultEntity? postUploadResult
});


@override $PostUploadResultEntityCopyWith<$Res>? get postUploadResult;

}
/// @nodoc
class __$UploadStateCopyWithImpl<$Res>
    implements _$UploadStateCopyWith<$Res> {
  __$UploadStateCopyWithImpl(this._self, this._then);

  final _UploadState _self;
  final $Res Function(_UploadState) _then;

/// Create a copy of UploadState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? canUpload = null,Object? postUploadResult = freezed,}) {
  return _then(_UploadState(
canUpload: null == canUpload ? _self.canUpload : canUpload // ignore: cast_nullable_to_non_nullable
as bool,postUploadResult: freezed == postUploadResult ? _self.postUploadResult : postUploadResult // ignore: cast_nullable_to_non_nullable
as PostUploadResultEntity?,
  ));
}

/// Create a copy of UploadState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PostUploadResultEntityCopyWith<$Res>? get postUploadResult {
    if (_self.postUploadResult == null) {
    return null;
  }

  return $PostUploadResultEntityCopyWith<$Res>(_self.postUploadResult!, (value) {
    return _then(_self.copyWith(postUploadResult: value));
  });
}
}

// dart format on
