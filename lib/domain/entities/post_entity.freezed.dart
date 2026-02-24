// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PostEntity {

 String get caption; String get uid; String get username; String get imageUrl; String get postId; String get profImageUrl; DateTime get datePublished; String get postUrl; List<String> get likes; List<String> get comments;
/// Create a copy of PostEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PostEntityCopyWith<PostEntity> get copyWith => _$PostEntityCopyWithImpl<PostEntity>(this as PostEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PostEntity&&(identical(other.caption, caption) || other.caption == caption)&&(identical(other.uid, uid) || other.uid == uid)&&(identical(other.username, username) || other.username == username)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.postId, postId) || other.postId == postId)&&(identical(other.profImageUrl, profImageUrl) || other.profImageUrl == profImageUrl)&&(identical(other.datePublished, datePublished) || other.datePublished == datePublished)&&(identical(other.postUrl, postUrl) || other.postUrl == postUrl)&&const DeepCollectionEquality().equals(other.likes, likes)&&const DeepCollectionEquality().equals(other.comments, comments));
}


@override
int get hashCode => Object.hash(runtimeType,caption,uid,username,imageUrl,postId,profImageUrl,datePublished,postUrl,const DeepCollectionEquality().hash(likes),const DeepCollectionEquality().hash(comments));

@override
String toString() {
  return 'PostEntity(caption: $caption, uid: $uid, username: $username, imageUrl: $imageUrl, postId: $postId, profImageUrl: $profImageUrl, datePublished: $datePublished, postUrl: $postUrl, likes: $likes, comments: $comments)';
}


}

/// @nodoc
abstract mixin class $PostEntityCopyWith<$Res>  {
  factory $PostEntityCopyWith(PostEntity value, $Res Function(PostEntity) _then) = _$PostEntityCopyWithImpl;
@useResult
$Res call({
 String caption, String uid, String username, String imageUrl, String postId, String profImageUrl, DateTime datePublished, String postUrl, List<String> likes, List<String> comments
});




}
/// @nodoc
class _$PostEntityCopyWithImpl<$Res>
    implements $PostEntityCopyWith<$Res> {
  _$PostEntityCopyWithImpl(this._self, this._then);

  final PostEntity _self;
  final $Res Function(PostEntity) _then;

/// Create a copy of PostEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? caption = null,Object? uid = null,Object? username = null,Object? imageUrl = null,Object? postId = null,Object? profImageUrl = null,Object? datePublished = null,Object? postUrl = null,Object? likes = null,Object? comments = null,}) {
  return _then(_self.copyWith(
caption: null == caption ? _self.caption : caption // ignore: cast_nullable_to_non_nullable
as String,uid: null == uid ? _self.uid : uid // ignore: cast_nullable_to_non_nullable
as String,username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,postId: null == postId ? _self.postId : postId // ignore: cast_nullable_to_non_nullable
as String,profImageUrl: null == profImageUrl ? _self.profImageUrl : profImageUrl // ignore: cast_nullable_to_non_nullable
as String,datePublished: null == datePublished ? _self.datePublished : datePublished // ignore: cast_nullable_to_non_nullable
as DateTime,postUrl: null == postUrl ? _self.postUrl : postUrl // ignore: cast_nullable_to_non_nullable
as String,likes: null == likes ? _self.likes : likes // ignore: cast_nullable_to_non_nullable
as List<String>,comments: null == comments ? _self.comments : comments // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [PostEntity].
extension PostEntityPatterns on PostEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PostEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PostEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PostEntity value)  $default,){
final _that = this;
switch (_that) {
case _PostEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PostEntity value)?  $default,){
final _that = this;
switch (_that) {
case _PostEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String caption,  String uid,  String username,  String imageUrl,  String postId,  String profImageUrl,  DateTime datePublished,  String postUrl,  List<String> likes,  List<String> comments)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PostEntity() when $default != null:
return $default(_that.caption,_that.uid,_that.username,_that.imageUrl,_that.postId,_that.profImageUrl,_that.datePublished,_that.postUrl,_that.likes,_that.comments);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String caption,  String uid,  String username,  String imageUrl,  String postId,  String profImageUrl,  DateTime datePublished,  String postUrl,  List<String> likes,  List<String> comments)  $default,) {final _that = this;
switch (_that) {
case _PostEntity():
return $default(_that.caption,_that.uid,_that.username,_that.imageUrl,_that.postId,_that.profImageUrl,_that.datePublished,_that.postUrl,_that.likes,_that.comments);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String caption,  String uid,  String username,  String imageUrl,  String postId,  String profImageUrl,  DateTime datePublished,  String postUrl,  List<String> likes,  List<String> comments)?  $default,) {final _that = this;
switch (_that) {
case _PostEntity() when $default != null:
return $default(_that.caption,_that.uid,_that.username,_that.imageUrl,_that.postId,_that.profImageUrl,_that.datePublished,_that.postUrl,_that.likes,_that.comments);case _:
  return null;

}
}

}

/// @nodoc


class _PostEntity extends PostEntity {
  const _PostEntity({required this.caption, required this.uid, required this.username, required this.imageUrl, required this.postId, required this.profImageUrl, required this.datePublished, required this.postUrl, required final  List<String> likes, required final  List<String> comments}): _likes = likes,_comments = comments,super._();
  

@override final  String caption;
@override final  String uid;
@override final  String username;
@override final  String imageUrl;
@override final  String postId;
@override final  String profImageUrl;
@override final  DateTime datePublished;
@override final  String postUrl;
 final  List<String> _likes;
@override List<String> get likes {
  if (_likes is EqualUnmodifiableListView) return _likes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_likes);
}

 final  List<String> _comments;
@override List<String> get comments {
  if (_comments is EqualUnmodifiableListView) return _comments;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_comments);
}


/// Create a copy of PostEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PostEntityCopyWith<_PostEntity> get copyWith => __$PostEntityCopyWithImpl<_PostEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PostEntity&&(identical(other.caption, caption) || other.caption == caption)&&(identical(other.uid, uid) || other.uid == uid)&&(identical(other.username, username) || other.username == username)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.postId, postId) || other.postId == postId)&&(identical(other.profImageUrl, profImageUrl) || other.profImageUrl == profImageUrl)&&(identical(other.datePublished, datePublished) || other.datePublished == datePublished)&&(identical(other.postUrl, postUrl) || other.postUrl == postUrl)&&const DeepCollectionEquality().equals(other._likes, _likes)&&const DeepCollectionEquality().equals(other._comments, _comments));
}


@override
int get hashCode => Object.hash(runtimeType,caption,uid,username,imageUrl,postId,profImageUrl,datePublished,postUrl,const DeepCollectionEquality().hash(_likes),const DeepCollectionEquality().hash(_comments));

@override
String toString() {
  return 'PostEntity(caption: $caption, uid: $uid, username: $username, imageUrl: $imageUrl, postId: $postId, profImageUrl: $profImageUrl, datePublished: $datePublished, postUrl: $postUrl, likes: $likes, comments: $comments)';
}


}

/// @nodoc
abstract mixin class _$PostEntityCopyWith<$Res> implements $PostEntityCopyWith<$Res> {
  factory _$PostEntityCopyWith(_PostEntity value, $Res Function(_PostEntity) _then) = __$PostEntityCopyWithImpl;
@override @useResult
$Res call({
 String caption, String uid, String username, String imageUrl, String postId, String profImageUrl, DateTime datePublished, String postUrl, List<String> likes, List<String> comments
});




}
/// @nodoc
class __$PostEntityCopyWithImpl<$Res>
    implements _$PostEntityCopyWith<$Res> {
  __$PostEntityCopyWithImpl(this._self, this._then);

  final _PostEntity _self;
  final $Res Function(_PostEntity) _then;

/// Create a copy of PostEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? caption = null,Object? uid = null,Object? username = null,Object? imageUrl = null,Object? postId = null,Object? profImageUrl = null,Object? datePublished = null,Object? postUrl = null,Object? likes = null,Object? comments = null,}) {
  return _then(_PostEntity(
caption: null == caption ? _self.caption : caption // ignore: cast_nullable_to_non_nullable
as String,uid: null == uid ? _self.uid : uid // ignore: cast_nullable_to_non_nullable
as String,username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,postId: null == postId ? _self.postId : postId // ignore: cast_nullable_to_non_nullable
as String,profImageUrl: null == profImageUrl ? _self.profImageUrl : profImageUrl // ignore: cast_nullable_to_non_nullable
as String,datePublished: null == datePublished ? _self.datePublished : datePublished // ignore: cast_nullable_to_non_nullable
as DateTime,postUrl: null == postUrl ? _self.postUrl : postUrl // ignore: cast_nullable_to_non_nullable
as String,likes: null == likes ? _self._likes : likes // ignore: cast_nullable_to_non_nullable
as List<String>,comments: null == comments ? _self._comments : comments // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

// dart format on
