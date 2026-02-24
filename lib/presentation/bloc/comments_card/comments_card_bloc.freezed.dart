// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'comments_card_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CommentsCardEvent {

 CommentEntity get comment;
/// Create a copy of CommentsCardEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CommentsCardEventCopyWith<CommentsCardEvent> get copyWith => _$CommentsCardEventCopyWithImpl<CommentsCardEvent>(this as CommentsCardEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CommentsCardEvent&&(identical(other.comment, comment) || other.comment == comment));
}


@override
int get hashCode => Object.hash(runtimeType,comment);

@override
String toString() {
  return 'CommentsCardEvent(comment: $comment)';
}


}

/// @nodoc
abstract mixin class $CommentsCardEventCopyWith<$Res>  {
  factory $CommentsCardEventCopyWith(CommentsCardEvent value, $Res Function(CommentsCardEvent) _then) = _$CommentsCardEventCopyWithImpl;
@useResult
$Res call({
 CommentEntity comment
});


$CommentEntityCopyWith<$Res> get comment;

}
/// @nodoc
class _$CommentsCardEventCopyWithImpl<$Res>
    implements $CommentsCardEventCopyWith<$Res> {
  _$CommentsCardEventCopyWithImpl(this._self, this._then);

  final CommentsCardEvent _self;
  final $Res Function(CommentsCardEvent) _then;

/// Create a copy of CommentsCardEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? comment = null,}) {
  return _then(_self.copyWith(
comment: null == comment ? _self.comment : comment // ignore: cast_nullable_to_non_nullable
as CommentEntity,
  ));
}
/// Create a copy of CommentsCardEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CommentEntityCopyWith<$Res> get comment {
  
  return $CommentEntityCopyWith<$Res>(_self.comment, (value) {
    return _then(_self.copyWith(comment: value));
  });
}
}


/// Adds pattern-matching-related methods to [CommentsCardEvent].
extension CommentsCardEventPatterns on CommentsCardEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _LikeToggled value)?  likeToggled,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LikeToggled() when likeToggled != null:
return likeToggled(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _LikeToggled value)  likeToggled,}){
final _that = this;
switch (_that) {
case _LikeToggled():
return likeToggled(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _LikeToggled value)?  likeToggled,}){
final _that = this;
switch (_that) {
case _LikeToggled() when likeToggled != null:
return likeToggled(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( CommentEntity comment)?  likeToggled,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LikeToggled() when likeToggled != null:
return likeToggled(_that.comment);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( CommentEntity comment)  likeToggled,}) {final _that = this;
switch (_that) {
case _LikeToggled():
return likeToggled(_that.comment);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( CommentEntity comment)?  likeToggled,}) {final _that = this;
switch (_that) {
case _LikeToggled() when likeToggled != null:
return likeToggled(_that.comment);case _:
  return null;

}
}

}

/// @nodoc


class _LikeToggled implements CommentsCardEvent {
  const _LikeToggled(this.comment);
  

@override final  CommentEntity comment;

/// Create a copy of CommentsCardEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LikeToggledCopyWith<_LikeToggled> get copyWith => __$LikeToggledCopyWithImpl<_LikeToggled>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LikeToggled&&(identical(other.comment, comment) || other.comment == comment));
}


@override
int get hashCode => Object.hash(runtimeType,comment);

@override
String toString() {
  return 'CommentsCardEvent.likeToggled(comment: $comment)';
}


}

/// @nodoc
abstract mixin class _$LikeToggledCopyWith<$Res> implements $CommentsCardEventCopyWith<$Res> {
  factory _$LikeToggledCopyWith(_LikeToggled value, $Res Function(_LikeToggled) _then) = __$LikeToggledCopyWithImpl;
@override @useResult
$Res call({
 CommentEntity comment
});


@override $CommentEntityCopyWith<$Res> get comment;

}
/// @nodoc
class __$LikeToggledCopyWithImpl<$Res>
    implements _$LikeToggledCopyWith<$Res> {
  __$LikeToggledCopyWithImpl(this._self, this._then);

  final _LikeToggled _self;
  final $Res Function(_LikeToggled) _then;

/// Create a copy of CommentsCardEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? comment = null,}) {
  return _then(_LikeToggled(
null == comment ? _self.comment : comment // ignore: cast_nullable_to_non_nullable
as CommentEntity,
  ));
}

/// Create a copy of CommentsCardEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CommentEntityCopyWith<$Res> get comment {
  
  return $CommentEntityCopyWith<$Res>(_self.comment, (value) {
    return _then(_self.copyWith(comment: value));
  });
}
}

/// @nodoc
mixin _$CommentsCardState {

 CommentEntity? get comment; bool get isLoading; ScreenMessage? get message;
/// Create a copy of CommentsCardState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CommentsCardStateCopyWith<CommentsCardState> get copyWith => _$CommentsCardStateCopyWithImpl<CommentsCardState>(this as CommentsCardState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CommentsCardState&&(identical(other.comment, comment) || other.comment == comment)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&const DeepCollectionEquality().equals(other.message, message));
}


@override
int get hashCode => Object.hash(runtimeType,comment,isLoading,const DeepCollectionEquality().hash(message));

@override
String toString() {
  return 'CommentsCardState(comment: $comment, isLoading: $isLoading, message: $message)';
}


}

/// @nodoc
abstract mixin class $CommentsCardStateCopyWith<$Res>  {
  factory $CommentsCardStateCopyWith(CommentsCardState value, $Res Function(CommentsCardState) _then) = _$CommentsCardStateCopyWithImpl;
@useResult
$Res call({
 CommentEntity? comment, bool isLoading, ScreenMessage? message
});


$CommentEntityCopyWith<$Res>? get comment;

}
/// @nodoc
class _$CommentsCardStateCopyWithImpl<$Res>
    implements $CommentsCardStateCopyWith<$Res> {
  _$CommentsCardStateCopyWithImpl(this._self, this._then);

  final CommentsCardState _self;
  final $Res Function(CommentsCardState) _then;

/// Create a copy of CommentsCardState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? comment = freezed,Object? isLoading = null,Object? message = freezed,}) {
  return _then(_self.copyWith(
comment: freezed == comment ? _self.comment : comment // ignore: cast_nullable_to_non_nullable
as CommentEntity?,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as ScreenMessage?,
  ));
}
/// Create a copy of CommentsCardState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CommentEntityCopyWith<$Res>? get comment {
    if (_self.comment == null) {
    return null;
  }

  return $CommentEntityCopyWith<$Res>(_self.comment!, (value) {
    return _then(_self.copyWith(comment: value));
  });
}
}


/// Adds pattern-matching-related methods to [CommentsCardState].
extension CommentsCardStatePatterns on CommentsCardState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CommentsCardState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CommentsCardState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CommentsCardState value)  $default,){
final _that = this;
switch (_that) {
case _CommentsCardState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CommentsCardState value)?  $default,){
final _that = this;
switch (_that) {
case _CommentsCardState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( CommentEntity? comment,  bool isLoading,  ScreenMessage? message)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CommentsCardState() when $default != null:
return $default(_that.comment,_that.isLoading,_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( CommentEntity? comment,  bool isLoading,  ScreenMessage? message)  $default,) {final _that = this;
switch (_that) {
case _CommentsCardState():
return $default(_that.comment,_that.isLoading,_that.message);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( CommentEntity? comment,  bool isLoading,  ScreenMessage? message)?  $default,) {final _that = this;
switch (_that) {
case _CommentsCardState() when $default != null:
return $default(_that.comment,_that.isLoading,_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _CommentsCardState implements CommentsCardState {
  const _CommentsCardState({required this.comment, this.isLoading = false, this.message});
  

@override final  CommentEntity? comment;
@override@JsonKey() final  bool isLoading;
@override final  ScreenMessage? message;

/// Create a copy of CommentsCardState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CommentsCardStateCopyWith<_CommentsCardState> get copyWith => __$CommentsCardStateCopyWithImpl<_CommentsCardState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CommentsCardState&&(identical(other.comment, comment) || other.comment == comment)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&const DeepCollectionEquality().equals(other.message, message));
}


@override
int get hashCode => Object.hash(runtimeType,comment,isLoading,const DeepCollectionEquality().hash(message));

@override
String toString() {
  return 'CommentsCardState(comment: $comment, isLoading: $isLoading, message: $message)';
}


}

/// @nodoc
abstract mixin class _$CommentsCardStateCopyWith<$Res> implements $CommentsCardStateCopyWith<$Res> {
  factory _$CommentsCardStateCopyWith(_CommentsCardState value, $Res Function(_CommentsCardState) _then) = __$CommentsCardStateCopyWithImpl;
@override @useResult
$Res call({
 CommentEntity? comment, bool isLoading, ScreenMessage? message
});


@override $CommentEntityCopyWith<$Res>? get comment;

}
/// @nodoc
class __$CommentsCardStateCopyWithImpl<$Res>
    implements _$CommentsCardStateCopyWith<$Res> {
  __$CommentsCardStateCopyWithImpl(this._self, this._then);

  final _CommentsCardState _self;
  final $Res Function(_CommentsCardState) _then;

/// Create a copy of CommentsCardState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? comment = freezed,Object? isLoading = null,Object? message = freezed,}) {
  return _then(_CommentsCardState(
comment: freezed == comment ? _self.comment : comment // ignore: cast_nullable_to_non_nullable
as CommentEntity?,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as ScreenMessage?,
  ));
}

/// Create a copy of CommentsCardState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CommentEntityCopyWith<$Res>? get comment {
    if (_self.comment == null) {
    return null;
  }

  return $CommentEntityCopyWith<$Res>(_self.comment!, (value) {
    return _then(_self.copyWith(comment: value));
  });
}
}

// dart format on
