// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'comment_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CommentEntity {

 String get username; String get postId; DateTime get datePublished; String get comment; String get profileImageUrl; List<String> get likes; String get commentId; String get uid;
/// Create a copy of CommentEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CommentEntityCopyWith<CommentEntity> get copyWith => _$CommentEntityCopyWithImpl<CommentEntity>(this as CommentEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CommentEntity&&(identical(other.username, username) || other.username == username)&&(identical(other.postId, postId) || other.postId == postId)&&(identical(other.datePublished, datePublished) || other.datePublished == datePublished)&&(identical(other.comment, comment) || other.comment == comment)&&(identical(other.profileImageUrl, profileImageUrl) || other.profileImageUrl == profileImageUrl)&&const DeepCollectionEquality().equals(other.likes, likes)&&(identical(other.commentId, commentId) || other.commentId == commentId)&&(identical(other.uid, uid) || other.uid == uid));
}


@override
int get hashCode => Object.hash(runtimeType,username,postId,datePublished,comment,profileImageUrl,const DeepCollectionEquality().hash(likes),commentId,uid);

@override
String toString() {
  return 'CommentEntity(username: $username, postId: $postId, datePublished: $datePublished, comment: $comment, profileImageUrl: $profileImageUrl, likes: $likes, commentId: $commentId, uid: $uid)';
}


}

/// @nodoc
abstract mixin class $CommentEntityCopyWith<$Res>  {
  factory $CommentEntityCopyWith(CommentEntity value, $Res Function(CommentEntity) _then) = _$CommentEntityCopyWithImpl;
@useResult
$Res call({
 String username, String postId, DateTime datePublished, String comment, String profileImageUrl, List<String> likes, String commentId, String uid
});




}
/// @nodoc
class _$CommentEntityCopyWithImpl<$Res>
    implements $CommentEntityCopyWith<$Res> {
  _$CommentEntityCopyWithImpl(this._self, this._then);

  final CommentEntity _self;
  final $Res Function(CommentEntity) _then;

/// Create a copy of CommentEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? username = null,Object? postId = null,Object? datePublished = null,Object? comment = null,Object? profileImageUrl = null,Object? likes = null,Object? commentId = null,Object? uid = null,}) {
  return _then(_self.copyWith(
username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,postId: null == postId ? _self.postId : postId // ignore: cast_nullable_to_non_nullable
as String,datePublished: null == datePublished ? _self.datePublished : datePublished // ignore: cast_nullable_to_non_nullable
as DateTime,comment: null == comment ? _self.comment : comment // ignore: cast_nullable_to_non_nullable
as String,profileImageUrl: null == profileImageUrl ? _self.profileImageUrl : profileImageUrl // ignore: cast_nullable_to_non_nullable
as String,likes: null == likes ? _self.likes : likes // ignore: cast_nullable_to_non_nullable
as List<String>,commentId: null == commentId ? _self.commentId : commentId // ignore: cast_nullable_to_non_nullable
as String,uid: null == uid ? _self.uid : uid // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [CommentEntity].
extension CommentEntityPatterns on CommentEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CommentEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CommentEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CommentEntity value)  $default,){
final _that = this;
switch (_that) {
case _CommentEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CommentEntity value)?  $default,){
final _that = this;
switch (_that) {
case _CommentEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String username,  String postId,  DateTime datePublished,  String comment,  String profileImageUrl,  List<String> likes,  String commentId,  String uid)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CommentEntity() when $default != null:
return $default(_that.username,_that.postId,_that.datePublished,_that.comment,_that.profileImageUrl,_that.likes,_that.commentId,_that.uid);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String username,  String postId,  DateTime datePublished,  String comment,  String profileImageUrl,  List<String> likes,  String commentId,  String uid)  $default,) {final _that = this;
switch (_that) {
case _CommentEntity():
return $default(_that.username,_that.postId,_that.datePublished,_that.comment,_that.profileImageUrl,_that.likes,_that.commentId,_that.uid);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String username,  String postId,  DateTime datePublished,  String comment,  String profileImageUrl,  List<String> likes,  String commentId,  String uid)?  $default,) {final _that = this;
switch (_that) {
case _CommentEntity() when $default != null:
return $default(_that.username,_that.postId,_that.datePublished,_that.comment,_that.profileImageUrl,_that.likes,_that.commentId,_that.uid);case _:
  return null;

}
}

}

/// @nodoc


class _CommentEntity extends CommentEntity {
  const _CommentEntity({required this.username, required this.postId, required this.datePublished, required this.comment, required this.profileImageUrl, required final  List<String> likes, required this.commentId, required this.uid}): _likes = likes,super._();
  

@override final  String username;
@override final  String postId;
@override final  DateTime datePublished;
@override final  String comment;
@override final  String profileImageUrl;
 final  List<String> _likes;
@override List<String> get likes {
  if (_likes is EqualUnmodifiableListView) return _likes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_likes);
}

@override final  String commentId;
@override final  String uid;

/// Create a copy of CommentEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CommentEntityCopyWith<_CommentEntity> get copyWith => __$CommentEntityCopyWithImpl<_CommentEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CommentEntity&&(identical(other.username, username) || other.username == username)&&(identical(other.postId, postId) || other.postId == postId)&&(identical(other.datePublished, datePublished) || other.datePublished == datePublished)&&(identical(other.comment, comment) || other.comment == comment)&&(identical(other.profileImageUrl, profileImageUrl) || other.profileImageUrl == profileImageUrl)&&const DeepCollectionEquality().equals(other._likes, _likes)&&(identical(other.commentId, commentId) || other.commentId == commentId)&&(identical(other.uid, uid) || other.uid == uid));
}


@override
int get hashCode => Object.hash(runtimeType,username,postId,datePublished,comment,profileImageUrl,const DeepCollectionEquality().hash(_likes),commentId,uid);

@override
String toString() {
  return 'CommentEntity(username: $username, postId: $postId, datePublished: $datePublished, comment: $comment, profileImageUrl: $profileImageUrl, likes: $likes, commentId: $commentId, uid: $uid)';
}


}

/// @nodoc
abstract mixin class _$CommentEntityCopyWith<$Res> implements $CommentEntityCopyWith<$Res> {
  factory _$CommentEntityCopyWith(_CommentEntity value, $Res Function(_CommentEntity) _then) = __$CommentEntityCopyWithImpl;
@override @useResult
$Res call({
 String username, String postId, DateTime datePublished, String comment, String profileImageUrl, List<String> likes, String commentId, String uid
});




}
/// @nodoc
class __$CommentEntityCopyWithImpl<$Res>
    implements _$CommentEntityCopyWith<$Res> {
  __$CommentEntityCopyWithImpl(this._self, this._then);

  final _CommentEntity _self;
  final $Res Function(_CommentEntity) _then;

/// Create a copy of CommentEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? username = null,Object? postId = null,Object? datePublished = null,Object? comment = null,Object? profileImageUrl = null,Object? likes = null,Object? commentId = null,Object? uid = null,}) {
  return _then(_CommentEntity(
username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,postId: null == postId ? _self.postId : postId // ignore: cast_nullable_to_non_nullable
as String,datePublished: null == datePublished ? _self.datePublished : datePublished // ignore: cast_nullable_to_non_nullable
as DateTime,comment: null == comment ? _self.comment : comment // ignore: cast_nullable_to_non_nullable
as String,profileImageUrl: null == profileImageUrl ? _self.profileImageUrl : profileImageUrl // ignore: cast_nullable_to_non_nullable
as String,likes: null == likes ? _self._likes : likes // ignore: cast_nullable_to_non_nullable
as List<String>,commentId: null == commentId ? _self.commentId : commentId // ignore: cast_nullable_to_non_nullable
as String,uid: null == uid ? _self.uid : uid // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
