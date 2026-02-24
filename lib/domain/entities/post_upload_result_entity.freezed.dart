// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_upload_result_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PostUploadResultEntity {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PostUploadResultEntity);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PostUploadResultEntity()';
}


}

/// @nodoc
class $PostUploadResultEntityCopyWith<$Res>  {
$PostUploadResultEntityCopyWith(PostUploadResultEntity _, $Res Function(PostUploadResultEntity) __);
}


/// Adds pattern-matching-related methods to [PostUploadResultEntity].
extension PostUploadResultEntityPatterns on PostUploadResultEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Started value)?  started,TResult Function( _FileUploading value)?  fileUploading,TResult Function( _FileUploaded value)?  fileUploaded,TResult Function( _Error value)?  error,TResult Function( _Uploaded value)?  uploaded,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _FileUploading() when fileUploading != null:
return fileUploading(_that);case _FileUploaded() when fileUploaded != null:
return fileUploaded(_that);case _Error() when error != null:
return error(_that);case _Uploaded() when uploaded != null:
return uploaded(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Started value)  started,required TResult Function( _FileUploading value)  fileUploading,required TResult Function( _FileUploaded value)  fileUploaded,required TResult Function( _Error value)  error,required TResult Function( _Uploaded value)  uploaded,}){
final _that = this;
switch (_that) {
case _Started():
return started(_that);case _FileUploading():
return fileUploading(_that);case _FileUploaded():
return fileUploaded(_that);case _Error():
return error(_that);case _Uploaded():
return uploaded(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Started value)?  started,TResult? Function( _FileUploading value)?  fileUploading,TResult? Function( _FileUploaded value)?  fileUploaded,TResult? Function( _Error value)?  error,TResult? Function( _Uploaded value)?  uploaded,}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _FileUploading() when fileUploading != null:
return fileUploading(_that);case _FileUploaded() when fileUploaded != null:
return fileUploaded(_that);case _Error() when error != null:
return error(_that);case _Uploaded() when uploaded != null:
return uploaded(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  started,TResult Function( double progress)?  fileUploading,TResult Function( String url)?  fileUploaded,TResult Function( Failure error)?  error,TResult Function( PostEntity post)?  uploaded,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _FileUploading() when fileUploading != null:
return fileUploading(_that.progress);case _FileUploaded() when fileUploaded != null:
return fileUploaded(_that.url);case _Error() when error != null:
return error(_that.error);case _Uploaded() when uploaded != null:
return uploaded(_that.post);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  started,required TResult Function( double progress)  fileUploading,required TResult Function( String url)  fileUploaded,required TResult Function( Failure error)  error,required TResult Function( PostEntity post)  uploaded,}) {final _that = this;
switch (_that) {
case _Started():
return started();case _FileUploading():
return fileUploading(_that.progress);case _FileUploaded():
return fileUploaded(_that.url);case _Error():
return error(_that.error);case _Uploaded():
return uploaded(_that.post);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  started,TResult? Function( double progress)?  fileUploading,TResult? Function( String url)?  fileUploaded,TResult? Function( Failure error)?  error,TResult? Function( PostEntity post)?  uploaded,}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _FileUploading() when fileUploading != null:
return fileUploading(_that.progress);case _FileUploaded() when fileUploaded != null:
return fileUploaded(_that.url);case _Error() when error != null:
return error(_that.error);case _Uploaded() when uploaded != null:
return uploaded(_that.post);case _:
  return null;

}
}

}

/// @nodoc


class _Started extends PostUploadResultEntity {
  const _Started(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Started);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PostUploadResultEntity.started()';
}


}




/// @nodoc


class _FileUploading extends PostUploadResultEntity {
  const _FileUploading(this.progress): super._();
  

 final  double progress;

/// Create a copy of PostUploadResultEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FileUploadingCopyWith<_FileUploading> get copyWith => __$FileUploadingCopyWithImpl<_FileUploading>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FileUploading&&(identical(other.progress, progress) || other.progress == progress));
}


@override
int get hashCode => Object.hash(runtimeType,progress);

@override
String toString() {
  return 'PostUploadResultEntity.fileUploading(progress: $progress)';
}


}

/// @nodoc
abstract mixin class _$FileUploadingCopyWith<$Res> implements $PostUploadResultEntityCopyWith<$Res> {
  factory _$FileUploadingCopyWith(_FileUploading value, $Res Function(_FileUploading) _then) = __$FileUploadingCopyWithImpl;
@useResult
$Res call({
 double progress
});




}
/// @nodoc
class __$FileUploadingCopyWithImpl<$Res>
    implements _$FileUploadingCopyWith<$Res> {
  __$FileUploadingCopyWithImpl(this._self, this._then);

  final _FileUploading _self;
  final $Res Function(_FileUploading) _then;

/// Create a copy of PostUploadResultEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? progress = null,}) {
  return _then(_FileUploading(
null == progress ? _self.progress : progress // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

/// @nodoc


class _FileUploaded extends PostUploadResultEntity {
  const _FileUploaded(this.url): super._();
  

 final  String url;

/// Create a copy of PostUploadResultEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FileUploadedCopyWith<_FileUploaded> get copyWith => __$FileUploadedCopyWithImpl<_FileUploaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FileUploaded&&(identical(other.url, url) || other.url == url));
}


@override
int get hashCode => Object.hash(runtimeType,url);

@override
String toString() {
  return 'PostUploadResultEntity.fileUploaded(url: $url)';
}


}

/// @nodoc
abstract mixin class _$FileUploadedCopyWith<$Res> implements $PostUploadResultEntityCopyWith<$Res> {
  factory _$FileUploadedCopyWith(_FileUploaded value, $Res Function(_FileUploaded) _then) = __$FileUploadedCopyWithImpl;
@useResult
$Res call({
 String url
});




}
/// @nodoc
class __$FileUploadedCopyWithImpl<$Res>
    implements _$FileUploadedCopyWith<$Res> {
  __$FileUploadedCopyWithImpl(this._self, this._then);

  final _FileUploaded _self;
  final $Res Function(_FileUploaded) _then;

/// Create a copy of PostUploadResultEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? url = null,}) {
  return _then(_FileUploaded(
null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _Error extends PostUploadResultEntity {
  const _Error(this.error): super._();
  

 final  Failure error;

/// Create a copy of PostUploadResultEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ErrorCopyWith<_Error> get copyWith => __$ErrorCopyWithImpl<_Error>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Error&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'PostUploadResultEntity.error(error: $error)';
}


}

/// @nodoc
abstract mixin class _$ErrorCopyWith<$Res> implements $PostUploadResultEntityCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) _then) = __$ErrorCopyWithImpl;
@useResult
$Res call({
 Failure error
});




}
/// @nodoc
class __$ErrorCopyWithImpl<$Res>
    implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(this._self, this._then);

  final _Error _self;
  final $Res Function(_Error) _then;

/// Create a copy of PostUploadResultEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(_Error(
null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as Failure,
  ));
}


}

/// @nodoc


class _Uploaded extends PostUploadResultEntity {
  const _Uploaded(this.post): super._();
  

 final  PostEntity post;

/// Create a copy of PostUploadResultEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UploadedCopyWith<_Uploaded> get copyWith => __$UploadedCopyWithImpl<_Uploaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Uploaded&&(identical(other.post, post) || other.post == post));
}


@override
int get hashCode => Object.hash(runtimeType,post);

@override
String toString() {
  return 'PostUploadResultEntity.uploaded(post: $post)';
}


}

/// @nodoc
abstract mixin class _$UploadedCopyWith<$Res> implements $PostUploadResultEntityCopyWith<$Res> {
  factory _$UploadedCopyWith(_Uploaded value, $Res Function(_Uploaded) _then) = __$UploadedCopyWithImpl;
@useResult
$Res call({
 PostEntity post
});


$PostEntityCopyWith<$Res> get post;

}
/// @nodoc
class __$UploadedCopyWithImpl<$Res>
    implements _$UploadedCopyWith<$Res> {
  __$UploadedCopyWithImpl(this._self, this._then);

  final _Uploaded _self;
  final $Res Function(_Uploaded) _then;

/// Create a copy of PostUploadResultEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? post = null,}) {
  return _then(_Uploaded(
null == post ? _self.post : post // ignore: cast_nullable_to_non_nullable
as PostEntity,
  ));
}

/// Create a copy of PostUploadResultEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PostEntityCopyWith<$Res> get post {
  
  return $PostEntityCopyWith<$Res>(_self.post, (value) {
    return _then(_self.copyWith(post: value));
  });
}
}

// dart format on
