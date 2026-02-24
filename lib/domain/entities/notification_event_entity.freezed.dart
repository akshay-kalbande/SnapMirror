// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_event_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$NotificationEventEntity {

 String get id; String get title; String get body; String get payload; NotificationEventType get type;
/// Create a copy of NotificationEventEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NotificationEventEntityCopyWith<NotificationEventEntity> get copyWith => _$NotificationEventEntityCopyWithImpl<NotificationEventEntity>(this as NotificationEventEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NotificationEventEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.body, body) || other.body == body)&&(identical(other.payload, payload) || other.payload == payload)&&(identical(other.type, type) || other.type == type));
}


@override
int get hashCode => Object.hash(runtimeType,id,title,body,payload,type);

@override
String toString() {
  return 'NotificationEventEntity(id: $id, title: $title, body: $body, payload: $payload, type: $type)';
}


}

/// @nodoc
abstract mixin class $NotificationEventEntityCopyWith<$Res>  {
  factory $NotificationEventEntityCopyWith(NotificationEventEntity value, $Res Function(NotificationEventEntity) _then) = _$NotificationEventEntityCopyWithImpl;
@useResult
$Res call({
 String id, String title, String body, String payload, NotificationEventType type
});




}
/// @nodoc
class _$NotificationEventEntityCopyWithImpl<$Res>
    implements $NotificationEventEntityCopyWith<$Res> {
  _$NotificationEventEntityCopyWithImpl(this._self, this._then);

  final NotificationEventEntity _self;
  final $Res Function(NotificationEventEntity) _then;

/// Create a copy of NotificationEventEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? body = null,Object? payload = null,Object? type = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,body: null == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String,payload: null == payload ? _self.payload : payload // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as NotificationEventType,
  ));
}

}


/// Adds pattern-matching-related methods to [NotificationEventEntity].
extension NotificationEventEntityPatterns on NotificationEventEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NotificationEventEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NotificationEventEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NotificationEventEntity value)  $default,){
final _that = this;
switch (_that) {
case _NotificationEventEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NotificationEventEntity value)?  $default,){
final _that = this;
switch (_that) {
case _NotificationEventEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String title,  String body,  String payload,  NotificationEventType type)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NotificationEventEntity() when $default != null:
return $default(_that.id,_that.title,_that.body,_that.payload,_that.type);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String title,  String body,  String payload,  NotificationEventType type)  $default,) {final _that = this;
switch (_that) {
case _NotificationEventEntity():
return $default(_that.id,_that.title,_that.body,_that.payload,_that.type);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String title,  String body,  String payload,  NotificationEventType type)?  $default,) {final _that = this;
switch (_that) {
case _NotificationEventEntity() when $default != null:
return $default(_that.id,_that.title,_that.body,_that.payload,_that.type);case _:
  return null;

}
}

}

/// @nodoc


class _NotificationEventEntity extends NotificationEventEntity {
  const _NotificationEventEntity({required this.id, required this.title, required this.body, required this.payload, required this.type}): super._();
  

@override final  String id;
@override final  String title;
@override final  String body;
@override final  String payload;
@override final  NotificationEventType type;

/// Create a copy of NotificationEventEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NotificationEventEntityCopyWith<_NotificationEventEntity> get copyWith => __$NotificationEventEntityCopyWithImpl<_NotificationEventEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NotificationEventEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.body, body) || other.body == body)&&(identical(other.payload, payload) || other.payload == payload)&&(identical(other.type, type) || other.type == type));
}


@override
int get hashCode => Object.hash(runtimeType,id,title,body,payload,type);

@override
String toString() {
  return 'NotificationEventEntity(id: $id, title: $title, body: $body, payload: $payload, type: $type)';
}


}

/// @nodoc
abstract mixin class _$NotificationEventEntityCopyWith<$Res> implements $NotificationEventEntityCopyWith<$Res> {
  factory _$NotificationEventEntityCopyWith(_NotificationEventEntity value, $Res Function(_NotificationEventEntity) _then) = __$NotificationEventEntityCopyWithImpl;
@override @useResult
$Res call({
 String id, String title, String body, String payload, NotificationEventType type
});




}
/// @nodoc
class __$NotificationEventEntityCopyWithImpl<$Res>
    implements _$NotificationEventEntityCopyWith<$Res> {
  __$NotificationEventEntityCopyWithImpl(this._self, this._then);

  final _NotificationEventEntity _self;
  final $Res Function(_NotificationEventEntity) _then;

/// Create a copy of NotificationEventEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? body = null,Object? payload = null,Object? type = null,}) {
  return _then(_NotificationEventEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,body: null == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String,payload: null == payload ? _self.payload : payload // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as NotificationEventType,
  ));
}


}

// dart format on
