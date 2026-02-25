// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'upload_post_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UploadPostEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UploadPostEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UploadPostEvent()';
}


}

/// @nodoc
class $UploadPostEventCopyWith<$Res>  {
$UploadPostEventCopyWith(UploadPostEvent _, $Res Function(UploadPostEvent) __);
}


/// Adds pattern-matching-related methods to [UploadPostEvent].
extension UploadPostEventPatterns on UploadPostEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _PostFileSelected value)?  postFileSelected,TResult Function( _PostFileSelectionCancelled value)?  postFileSelectionCancelled,TResult Function( _ChangePostFile value)?  changePostFile,TResult Function( _PostSubmitted value)?  postSubmitted,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PostFileSelected() when postFileSelected != null:
return postFileSelected(_that);case _PostFileSelectionCancelled() when postFileSelectionCancelled != null:
return postFileSelectionCancelled(_that);case _ChangePostFile() when changePostFile != null:
return changePostFile(_that);case _PostSubmitted() when postSubmitted != null:
return postSubmitted(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _PostFileSelected value)  postFileSelected,required TResult Function( _PostFileSelectionCancelled value)  postFileSelectionCancelled,required TResult Function( _ChangePostFile value)  changePostFile,required TResult Function( _PostSubmitted value)  postSubmitted,}){
final _that = this;
switch (_that) {
case _PostFileSelected():
return postFileSelected(_that);case _PostFileSelectionCancelled():
return postFileSelectionCancelled(_that);case _ChangePostFile():
return changePostFile(_that);case _PostSubmitted():
return postSubmitted(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _PostFileSelected value)?  postFileSelected,TResult? Function( _PostFileSelectionCancelled value)?  postFileSelectionCancelled,TResult? Function( _ChangePostFile value)?  changePostFile,TResult? Function( _PostSubmitted value)?  postSubmitted,}){
final _that = this;
switch (_that) {
case _PostFileSelected() when postFileSelected != null:
return postFileSelected(_that);case _PostFileSelectionCancelled() when postFileSelectionCancelled != null:
return postFileSelectionCancelled(_that);case _ChangePostFile() when changePostFile != null:
return changePostFile(_that);case _PostSubmitted() when postSubmitted != null:
return postSubmitted(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( Uint8List file)?  postFileSelected,TResult Function()?  postFileSelectionCancelled,TResult Function()?  changePostFile,TResult Function( String caption)?  postSubmitted,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PostFileSelected() when postFileSelected != null:
return postFileSelected(_that.file);case _PostFileSelectionCancelled() when postFileSelectionCancelled != null:
return postFileSelectionCancelled();case _ChangePostFile() when changePostFile != null:
return changePostFile();case _PostSubmitted() when postSubmitted != null:
return postSubmitted(_that.caption);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( Uint8List file)  postFileSelected,required TResult Function()  postFileSelectionCancelled,required TResult Function()  changePostFile,required TResult Function( String caption)  postSubmitted,}) {final _that = this;
switch (_that) {
case _PostFileSelected():
return postFileSelected(_that.file);case _PostFileSelectionCancelled():
return postFileSelectionCancelled();case _ChangePostFile():
return changePostFile();case _PostSubmitted():
return postSubmitted(_that.caption);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( Uint8List file)?  postFileSelected,TResult? Function()?  postFileSelectionCancelled,TResult? Function()?  changePostFile,TResult? Function( String caption)?  postSubmitted,}) {final _that = this;
switch (_that) {
case _PostFileSelected() when postFileSelected != null:
return postFileSelected(_that.file);case _PostFileSelectionCancelled() when postFileSelectionCancelled != null:
return postFileSelectionCancelled();case _ChangePostFile() when changePostFile != null:
return changePostFile();case _PostSubmitted() when postSubmitted != null:
return postSubmitted(_that.caption);case _:
  return null;

}
}

}

/// @nodoc


class _PostFileSelected implements UploadPostEvent {
  const _PostFileSelected(this.file);
  

 final  Uint8List file;

/// Create a copy of UploadPostEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PostFileSelectedCopyWith<_PostFileSelected> get copyWith => __$PostFileSelectedCopyWithImpl<_PostFileSelected>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PostFileSelected&&const DeepCollectionEquality().equals(other.file, file));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(file));

@override
String toString() {
  return 'UploadPostEvent.postFileSelected(file: $file)';
}


}

/// @nodoc
abstract mixin class _$PostFileSelectedCopyWith<$Res> implements $UploadPostEventCopyWith<$Res> {
  factory _$PostFileSelectedCopyWith(_PostFileSelected value, $Res Function(_PostFileSelected) _then) = __$PostFileSelectedCopyWithImpl;
@useResult
$Res call({
 Uint8List file
});




}
/// @nodoc
class __$PostFileSelectedCopyWithImpl<$Res>
    implements _$PostFileSelectedCopyWith<$Res> {
  __$PostFileSelectedCopyWithImpl(this._self, this._then);

  final _PostFileSelected _self;
  final $Res Function(_PostFileSelected) _then;

/// Create a copy of UploadPostEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? file = null,}) {
  return _then(_PostFileSelected(
null == file ? _self.file : file // ignore: cast_nullable_to_non_nullable
as Uint8List,
  ));
}


}

/// @nodoc


class _PostFileSelectionCancelled implements UploadPostEvent {
  const _PostFileSelectionCancelled();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PostFileSelectionCancelled);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UploadPostEvent.postFileSelectionCancelled()';
}


}




/// @nodoc


class _ChangePostFile implements UploadPostEvent {
  const _ChangePostFile();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChangePostFile);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UploadPostEvent.changePostFile()';
}


}




/// @nodoc


class _PostSubmitted implements UploadPostEvent {
  const _PostSubmitted(this.caption);
  

 final  String caption;

/// Create a copy of UploadPostEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PostSubmittedCopyWith<_PostSubmitted> get copyWith => __$PostSubmittedCopyWithImpl<_PostSubmitted>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PostSubmitted&&(identical(other.caption, caption) || other.caption == caption));
}


@override
int get hashCode => Object.hash(runtimeType,caption);

@override
String toString() {
  return 'UploadPostEvent.postSubmitted(caption: $caption)';
}


}

/// @nodoc
abstract mixin class _$PostSubmittedCopyWith<$Res> implements $UploadPostEventCopyWith<$Res> {
  factory _$PostSubmittedCopyWith(_PostSubmitted value, $Res Function(_PostSubmitted) _then) = __$PostSubmittedCopyWithImpl;
@useResult
$Res call({
 String caption
});




}
/// @nodoc
class __$PostSubmittedCopyWithImpl<$Res>
    implements _$PostSubmittedCopyWith<$Res> {
  __$PostSubmittedCopyWithImpl(this._self, this._then);

  final _PostSubmitted _self;
  final $Res Function(_PostSubmitted) _then;

/// Create a copy of UploadPostEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? caption = null,}) {
  return _then(_PostSubmitted(
null == caption ? _self.caption : caption // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$UploadPostState {

 UploadPostParams? get post; Uint8List? get file; String get caption; bool get isLoading; bool get pickImage; ScreenMessage? get notification;
/// Create a copy of UploadPostState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UploadPostStateCopyWith<UploadPostState> get copyWith => _$UploadPostStateCopyWithImpl<UploadPostState>(this as UploadPostState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UploadPostState&&(identical(other.post, post) || other.post == post)&&const DeepCollectionEquality().equals(other.file, file)&&(identical(other.caption, caption) || other.caption == caption)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.pickImage, pickImage) || other.pickImage == pickImage)&&(identical(other.notification, notification) || other.notification == notification));
}


@override
int get hashCode => Object.hash(runtimeType,post,const DeepCollectionEquality().hash(file),caption,isLoading,pickImage,notification);

@override
String toString() {
  return 'UploadPostState(post: $post, file: $file, caption: $caption, isLoading: $isLoading, pickImage: $pickImage, notification: $notification)';
}


}

/// @nodoc
abstract mixin class $UploadPostStateCopyWith<$Res>  {
  factory $UploadPostStateCopyWith(UploadPostState value, $Res Function(UploadPostState) _then) = _$UploadPostStateCopyWithImpl;
@useResult
$Res call({
 UploadPostParams? post, Uint8List? file, String caption, bool isLoading, bool pickImage, ScreenMessage? notification
});


$ScreenMessageCopyWith<$Res>? get notification;

}
/// @nodoc
class _$UploadPostStateCopyWithImpl<$Res>
    implements $UploadPostStateCopyWith<$Res> {
  _$UploadPostStateCopyWithImpl(this._self, this._then);

  final UploadPostState _self;
  final $Res Function(UploadPostState) _then;

/// Create a copy of UploadPostState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? post = freezed,Object? file = freezed,Object? caption = null,Object? isLoading = null,Object? pickImage = null,Object? notification = freezed,}) {
  return _then(_self.copyWith(
post: freezed == post ? _self.post : post // ignore: cast_nullable_to_non_nullable
as UploadPostParams?,file: freezed == file ? _self.file : file // ignore: cast_nullable_to_non_nullable
as Uint8List?,caption: null == caption ? _self.caption : caption // ignore: cast_nullable_to_non_nullable
as String,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,pickImage: null == pickImage ? _self.pickImage : pickImage // ignore: cast_nullable_to_non_nullable
as bool,notification: freezed == notification ? _self.notification : notification // ignore: cast_nullable_to_non_nullable
as ScreenMessage?,
  ));
}
/// Create a copy of UploadPostState
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


/// Adds pattern-matching-related methods to [UploadPostState].
extension UploadPostStatePatterns on UploadPostState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UploadPostState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UploadPostState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UploadPostState value)  $default,){
final _that = this;
switch (_that) {
case _UploadPostState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UploadPostState value)?  $default,){
final _that = this;
switch (_that) {
case _UploadPostState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( UploadPostParams? post,  Uint8List? file,  String caption,  bool isLoading,  bool pickImage,  ScreenMessage? notification)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UploadPostState() when $default != null:
return $default(_that.post,_that.file,_that.caption,_that.isLoading,_that.pickImage,_that.notification);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( UploadPostParams? post,  Uint8List? file,  String caption,  bool isLoading,  bool pickImage,  ScreenMessage? notification)  $default,) {final _that = this;
switch (_that) {
case _UploadPostState():
return $default(_that.post,_that.file,_that.caption,_that.isLoading,_that.pickImage,_that.notification);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( UploadPostParams? post,  Uint8List? file,  String caption,  bool isLoading,  bool pickImage,  ScreenMessage? notification)?  $default,) {final _that = this;
switch (_that) {
case _UploadPostState() when $default != null:
return $default(_that.post,_that.file,_that.caption,_that.isLoading,_that.pickImage,_that.notification);case _:
  return null;

}
}

}

/// @nodoc


class _UploadPostState extends UploadPostState {
  const _UploadPostState({this.post, this.file, this.caption = '', this.isLoading = false, this.pickImage = false, this.notification}): super._();
  

@override final  UploadPostParams? post;
@override final  Uint8List? file;
@override@JsonKey() final  String caption;
@override@JsonKey() final  bool isLoading;
@override@JsonKey() final  bool pickImage;
@override final  ScreenMessage? notification;

/// Create a copy of UploadPostState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UploadPostStateCopyWith<_UploadPostState> get copyWith => __$UploadPostStateCopyWithImpl<_UploadPostState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UploadPostState&&(identical(other.post, post) || other.post == post)&&const DeepCollectionEquality().equals(other.file, file)&&(identical(other.caption, caption) || other.caption == caption)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.pickImage, pickImage) || other.pickImage == pickImage)&&(identical(other.notification, notification) || other.notification == notification));
}


@override
int get hashCode => Object.hash(runtimeType,post,const DeepCollectionEquality().hash(file),caption,isLoading,pickImage,notification);

@override
String toString() {
  return 'UploadPostState(post: $post, file: $file, caption: $caption, isLoading: $isLoading, pickImage: $pickImage, notification: $notification)';
}


}

/// @nodoc
abstract mixin class _$UploadPostStateCopyWith<$Res> implements $UploadPostStateCopyWith<$Res> {
  factory _$UploadPostStateCopyWith(_UploadPostState value, $Res Function(_UploadPostState) _then) = __$UploadPostStateCopyWithImpl;
@override @useResult
$Res call({
 UploadPostParams? post, Uint8List? file, String caption, bool isLoading, bool pickImage, ScreenMessage? notification
});


@override $ScreenMessageCopyWith<$Res>? get notification;

}
/// @nodoc
class __$UploadPostStateCopyWithImpl<$Res>
    implements _$UploadPostStateCopyWith<$Res> {
  __$UploadPostStateCopyWithImpl(this._self, this._then);

  final _UploadPostState _self;
  final $Res Function(_UploadPostState) _then;

/// Create a copy of UploadPostState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? post = freezed,Object? file = freezed,Object? caption = null,Object? isLoading = null,Object? pickImage = null,Object? notification = freezed,}) {
  return _then(_UploadPostState(
post: freezed == post ? _self.post : post // ignore: cast_nullable_to_non_nullable
as UploadPostParams?,file: freezed == file ? _self.file : file // ignore: cast_nullable_to_non_nullable
as Uint8List?,caption: null == caption ? _self.caption : caption // ignore: cast_nullable_to_non_nullable
as String,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,pickImage: null == pickImage ? _self.pickImage : pickImage // ignore: cast_nullable_to_non_nullable
as bool,notification: freezed == notification ? _self.notification : notification // ignore: cast_nullable_to_non_nullable
as ScreenMessage?,
  ));
}

/// Create a copy of UploadPostState
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
