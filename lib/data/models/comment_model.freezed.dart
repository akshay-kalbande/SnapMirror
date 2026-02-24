// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'comment_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CommentModel {

@JsonKey(name: 'username') String get username;@JsonKey(name: 'postId') String get postId;@TimeStampConverter()@JsonKey(name: 'datePublished') DateTime get datePublished;@JsonKey(name: 'comment') String get comment;@JsonKey(name: 'profileImageUrl') String get profileImageUrl;@JsonKey(name: 'likes') List<String> get likes;@JsonKey(name: 'commentId') String get commentId;@JsonKey(name: 'uid') String get uid;
/// Create a copy of CommentModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CommentModelCopyWith<CommentModel> get copyWith => _$CommentModelCopyWithImpl<CommentModel>(this as CommentModel, _$identity);

  /// Serializes this CommentModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CommentModel&&(identical(other.username, username) || other.username == username)&&(identical(other.postId, postId) || other.postId == postId)&&(identical(other.datePublished, datePublished) || other.datePublished == datePublished)&&(identical(other.comment, comment) || other.comment == comment)&&(identical(other.profileImageUrl, profileImageUrl) || other.profileImageUrl == profileImageUrl)&&const DeepCollectionEquality().equals(other.likes, likes)&&(identical(other.commentId, commentId) || other.commentId == commentId)&&(identical(other.uid, uid) || other.uid == uid));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,username,postId,datePublished,comment,profileImageUrl,const DeepCollectionEquality().hash(likes),commentId,uid);

@override
String toString() {
  return 'CommentModel(username: $username, postId: $postId, datePublished: $datePublished, comment: $comment, profileImageUrl: $profileImageUrl, likes: $likes, commentId: $commentId, uid: $uid)';
}


}

/// @nodoc
abstract mixin class $CommentModelCopyWith<$Res>  {
  factory $CommentModelCopyWith(CommentModel value, $Res Function(CommentModel) _then) = _$CommentModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'username') String username,@JsonKey(name: 'postId') String postId,@TimeStampConverter()@JsonKey(name: 'datePublished') DateTime datePublished,@JsonKey(name: 'comment') String comment,@JsonKey(name: 'profileImageUrl') String profileImageUrl,@JsonKey(name: 'likes') List<String> likes,@JsonKey(name: 'commentId') String commentId,@JsonKey(name: 'uid') String uid
});




}
/// @nodoc
class _$CommentModelCopyWithImpl<$Res>
    implements $CommentModelCopyWith<$Res> {
  _$CommentModelCopyWithImpl(this._self, this._then);

  final CommentModel _self;
  final $Res Function(CommentModel) _then;

/// Create a copy of CommentModel
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


/// Adds pattern-matching-related methods to [CommentModel].
extension CommentModelPatterns on CommentModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CommentModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CommentModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CommentModel value)  $default,){
final _that = this;
switch (_that) {
case _CommentModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CommentModel value)?  $default,){
final _that = this;
switch (_that) {
case _CommentModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'username')  String username, @JsonKey(name: 'postId')  String postId, @TimeStampConverter()@JsonKey(name: 'datePublished')  DateTime datePublished, @JsonKey(name: 'comment')  String comment, @JsonKey(name: 'profileImageUrl')  String profileImageUrl, @JsonKey(name: 'likes')  List<String> likes, @JsonKey(name: 'commentId')  String commentId, @JsonKey(name: 'uid')  String uid)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CommentModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'username')  String username, @JsonKey(name: 'postId')  String postId, @TimeStampConverter()@JsonKey(name: 'datePublished')  DateTime datePublished, @JsonKey(name: 'comment')  String comment, @JsonKey(name: 'profileImageUrl')  String profileImageUrl, @JsonKey(name: 'likes')  List<String> likes, @JsonKey(name: 'commentId')  String commentId, @JsonKey(name: 'uid')  String uid)  $default,) {final _that = this;
switch (_that) {
case _CommentModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'username')  String username, @JsonKey(name: 'postId')  String postId, @TimeStampConverter()@JsonKey(name: 'datePublished')  DateTime datePublished, @JsonKey(name: 'comment')  String comment, @JsonKey(name: 'profileImageUrl')  String profileImageUrl, @JsonKey(name: 'likes')  List<String> likes, @JsonKey(name: 'commentId')  String commentId, @JsonKey(name: 'uid')  String uid)?  $default,) {final _that = this;
switch (_that) {
case _CommentModel() when $default != null:
return $default(_that.username,_that.postId,_that.datePublished,_that.comment,_that.profileImageUrl,_that.likes,_that.commentId,_that.uid);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CommentModel extends CommentModel {
  const _CommentModel({@JsonKey(name: 'username') required this.username, @JsonKey(name: 'postId') required this.postId, @TimeStampConverter()@JsonKey(name: 'datePublished') required this.datePublished, @JsonKey(name: 'comment') required this.comment, @JsonKey(name: 'profileImageUrl') required this.profileImageUrl, @JsonKey(name: 'likes') required final  List<String> likes, @JsonKey(name: 'commentId') required this.commentId, @JsonKey(name: 'uid') required this.uid}): _likes = likes,super._();
  factory _CommentModel.fromJson(Map<String, dynamic> json) => _$CommentModelFromJson(json);

@override@JsonKey(name: 'username') final  String username;
@override@JsonKey(name: 'postId') final  String postId;
@override@TimeStampConverter()@JsonKey(name: 'datePublished') final  DateTime datePublished;
@override@JsonKey(name: 'comment') final  String comment;
@override@JsonKey(name: 'profileImageUrl') final  String profileImageUrl;
 final  List<String> _likes;
@override@JsonKey(name: 'likes') List<String> get likes {
  if (_likes is EqualUnmodifiableListView) return _likes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_likes);
}

@override@JsonKey(name: 'commentId') final  String commentId;
@override@JsonKey(name: 'uid') final  String uid;

/// Create a copy of CommentModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CommentModelCopyWith<_CommentModel> get copyWith => __$CommentModelCopyWithImpl<_CommentModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CommentModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CommentModel&&(identical(other.username, username) || other.username == username)&&(identical(other.postId, postId) || other.postId == postId)&&(identical(other.datePublished, datePublished) || other.datePublished == datePublished)&&(identical(other.comment, comment) || other.comment == comment)&&(identical(other.profileImageUrl, profileImageUrl) || other.profileImageUrl == profileImageUrl)&&const DeepCollectionEquality().equals(other._likes, _likes)&&(identical(other.commentId, commentId) || other.commentId == commentId)&&(identical(other.uid, uid) || other.uid == uid));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,username,postId,datePublished,comment,profileImageUrl,const DeepCollectionEquality().hash(_likes),commentId,uid);

@override
String toString() {
  return 'CommentModel(username: $username, postId: $postId, datePublished: $datePublished, comment: $comment, profileImageUrl: $profileImageUrl, likes: $likes, commentId: $commentId, uid: $uid)';
}


}

/// @nodoc
abstract mixin class _$CommentModelCopyWith<$Res> implements $CommentModelCopyWith<$Res> {
  factory _$CommentModelCopyWith(_CommentModel value, $Res Function(_CommentModel) _then) = __$CommentModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'username') String username,@JsonKey(name: 'postId') String postId,@TimeStampConverter()@JsonKey(name: 'datePublished') DateTime datePublished,@JsonKey(name: 'comment') String comment,@JsonKey(name: 'profileImageUrl') String profileImageUrl,@JsonKey(name: 'likes') List<String> likes,@JsonKey(name: 'commentId') String commentId,@JsonKey(name: 'uid') String uid
});




}
/// @nodoc
class __$CommentModelCopyWithImpl<$Res>
    implements _$CommentModelCopyWith<$Res> {
  __$CommentModelCopyWithImpl(this._self, this._then);

  final _CommentModel _self;
  final $Res Function(_CommentModel) _then;

/// Create a copy of CommentModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? username = null,Object? postId = null,Object? datePublished = null,Object? comment = null,Object? profileImageUrl = null,Object? likes = null,Object? commentId = null,Object? uid = null,}) {
  return _then(_CommentModel(
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
