// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_creation_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$NotificationCreationEntity {

 int get id; String get title; String get body; NotificationCreationCategory get notificationCategory; DateTime get scheduleTime; String? get payload; bool get isRepeating;
/// Create a copy of NotificationCreationEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NotificationCreationEntityCopyWith<NotificationCreationEntity> get copyWith => _$NotificationCreationEntityCopyWithImpl<NotificationCreationEntity>(this as NotificationCreationEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NotificationCreationEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.body, body) || other.body == body)&&(identical(other.notificationCategory, notificationCategory) || other.notificationCategory == notificationCategory)&&(identical(other.scheduleTime, scheduleTime) || other.scheduleTime == scheduleTime)&&(identical(other.payload, payload) || other.payload == payload)&&(identical(other.isRepeating, isRepeating) || other.isRepeating == isRepeating));
}


@override
int get hashCode => Object.hash(runtimeType,id,title,body,notificationCategory,scheduleTime,payload,isRepeating);

@override
String toString() {
  return 'NotificationCreationEntity(id: $id, title: $title, body: $body, notificationCategory: $notificationCategory, scheduleTime: $scheduleTime, payload: $payload, isRepeating: $isRepeating)';
}


}

/// @nodoc
abstract mixin class $NotificationCreationEntityCopyWith<$Res>  {
  factory $NotificationCreationEntityCopyWith(NotificationCreationEntity value, $Res Function(NotificationCreationEntity) _then) = _$NotificationCreationEntityCopyWithImpl;
@useResult
$Res call({
 int id, String title, String body, NotificationCreationCategory notificationCategory, DateTime scheduleTime, String? payload, bool isRepeating
});




}
/// @nodoc
class _$NotificationCreationEntityCopyWithImpl<$Res>
    implements $NotificationCreationEntityCopyWith<$Res> {
  _$NotificationCreationEntityCopyWithImpl(this._self, this._then);

  final NotificationCreationEntity _self;
  final $Res Function(NotificationCreationEntity) _then;

/// Create a copy of NotificationCreationEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? body = null,Object? notificationCategory = null,Object? scheduleTime = null,Object? payload = freezed,Object? isRepeating = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,body: null == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String,notificationCategory: null == notificationCategory ? _self.notificationCategory : notificationCategory // ignore: cast_nullable_to_non_nullable
as NotificationCreationCategory,scheduleTime: null == scheduleTime ? _self.scheduleTime : scheduleTime // ignore: cast_nullable_to_non_nullable
as DateTime,payload: freezed == payload ? _self.payload : payload // ignore: cast_nullable_to_non_nullable
as String?,isRepeating: null == isRepeating ? _self.isRepeating : isRepeating // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [NotificationCreationEntity].
extension NotificationCreationEntityPatterns on NotificationCreationEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NotificationCreationEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NotificationCreationEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NotificationCreationEntity value)  $default,){
final _that = this;
switch (_that) {
case _NotificationCreationEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NotificationCreationEntity value)?  $default,){
final _that = this;
switch (_that) {
case _NotificationCreationEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String title,  String body,  NotificationCreationCategory notificationCategory,  DateTime scheduleTime,  String? payload,  bool isRepeating)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NotificationCreationEntity() when $default != null:
return $default(_that.id,_that.title,_that.body,_that.notificationCategory,_that.scheduleTime,_that.payload,_that.isRepeating);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String title,  String body,  NotificationCreationCategory notificationCategory,  DateTime scheduleTime,  String? payload,  bool isRepeating)  $default,) {final _that = this;
switch (_that) {
case _NotificationCreationEntity():
return $default(_that.id,_that.title,_that.body,_that.notificationCategory,_that.scheduleTime,_that.payload,_that.isRepeating);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String title,  String body,  NotificationCreationCategory notificationCategory,  DateTime scheduleTime,  String? payload,  bool isRepeating)?  $default,) {final _that = this;
switch (_that) {
case _NotificationCreationEntity() when $default != null:
return $default(_that.id,_that.title,_that.body,_that.notificationCategory,_that.scheduleTime,_that.payload,_that.isRepeating);case _:
  return null;

}
}

}

/// @nodoc


class _NotificationCreationEntity extends NotificationCreationEntity {
  const _NotificationCreationEntity({required this.id, required this.title, required this.body, required this.notificationCategory, required this.scheduleTime, this.payload, this.isRepeating = false}): super._();
  

@override final  int id;
@override final  String title;
@override final  String body;
@override final  NotificationCreationCategory notificationCategory;
@override final  DateTime scheduleTime;
@override final  String? payload;
@override@JsonKey() final  bool isRepeating;

/// Create a copy of NotificationCreationEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NotificationCreationEntityCopyWith<_NotificationCreationEntity> get copyWith => __$NotificationCreationEntityCopyWithImpl<_NotificationCreationEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NotificationCreationEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.body, body) || other.body == body)&&(identical(other.notificationCategory, notificationCategory) || other.notificationCategory == notificationCategory)&&(identical(other.scheduleTime, scheduleTime) || other.scheduleTime == scheduleTime)&&(identical(other.payload, payload) || other.payload == payload)&&(identical(other.isRepeating, isRepeating) || other.isRepeating == isRepeating));
}


@override
int get hashCode => Object.hash(runtimeType,id,title,body,notificationCategory,scheduleTime,payload,isRepeating);

@override
String toString() {
  return 'NotificationCreationEntity(id: $id, title: $title, body: $body, notificationCategory: $notificationCategory, scheduleTime: $scheduleTime, payload: $payload, isRepeating: $isRepeating)';
}


}

/// @nodoc
abstract mixin class _$NotificationCreationEntityCopyWith<$Res> implements $NotificationCreationEntityCopyWith<$Res> {
  factory _$NotificationCreationEntityCopyWith(_NotificationCreationEntity value, $Res Function(_NotificationCreationEntity) _then) = __$NotificationCreationEntityCopyWithImpl;
@override @useResult
$Res call({
 int id, String title, String body, NotificationCreationCategory notificationCategory, DateTime scheduleTime, String? payload, bool isRepeating
});




}
/// @nodoc
class __$NotificationCreationEntityCopyWithImpl<$Res>
    implements _$NotificationCreationEntityCopyWith<$Res> {
  __$NotificationCreationEntityCopyWithImpl(this._self, this._then);

  final _NotificationCreationEntity _self;
  final $Res Function(_NotificationCreationEntity) _then;

/// Create a copy of NotificationCreationEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? body = null,Object? notificationCategory = null,Object? scheduleTime = null,Object? payload = freezed,Object? isRepeating = null,}) {
  return _then(_NotificationCreationEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,body: null == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String,notificationCategory: null == notificationCategory ? _self.notificationCategory : notificationCategory // ignore: cast_nullable_to_non_nullable
as NotificationCreationCategory,scheduleTime: null == scheduleTime ? _self.scheduleTime : scheduleTime // ignore: cast_nullable_to_non_nullable
as DateTime,payload: freezed == payload ? _self.payload : payload // ignore: cast_nullable_to_non_nullable
as String?,isRepeating: null == isRepeating ? _self.isRepeating : isRepeating // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
