// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_creation_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$NotificationCreationModel {

 int get id; String get title; String get body; DateTime get scheduleTime; NotificationCreationCategory get notificationCategory; String? get payload; bool get isRepeating;
/// Create a copy of NotificationCreationModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NotificationCreationModelCopyWith<NotificationCreationModel> get copyWith => _$NotificationCreationModelCopyWithImpl<NotificationCreationModel>(this as NotificationCreationModel, _$identity);

  /// Serializes this NotificationCreationModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NotificationCreationModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.body, body) || other.body == body)&&(identical(other.scheduleTime, scheduleTime) || other.scheduleTime == scheduleTime)&&(identical(other.notificationCategory, notificationCategory) || other.notificationCategory == notificationCategory)&&(identical(other.payload, payload) || other.payload == payload)&&(identical(other.isRepeating, isRepeating) || other.isRepeating == isRepeating));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,body,scheduleTime,notificationCategory,payload,isRepeating);

@override
String toString() {
  return 'NotificationCreationModel(id: $id, title: $title, body: $body, scheduleTime: $scheduleTime, notificationCategory: $notificationCategory, payload: $payload, isRepeating: $isRepeating)';
}


}

/// @nodoc
abstract mixin class $NotificationCreationModelCopyWith<$Res>  {
  factory $NotificationCreationModelCopyWith(NotificationCreationModel value, $Res Function(NotificationCreationModel) _then) = _$NotificationCreationModelCopyWithImpl;
@useResult
$Res call({
 int id, String title, String body, DateTime scheduleTime, NotificationCreationCategory notificationCategory, String? payload, bool isRepeating
});




}
/// @nodoc
class _$NotificationCreationModelCopyWithImpl<$Res>
    implements $NotificationCreationModelCopyWith<$Res> {
  _$NotificationCreationModelCopyWithImpl(this._self, this._then);

  final NotificationCreationModel _self;
  final $Res Function(NotificationCreationModel) _then;

/// Create a copy of NotificationCreationModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? body = null,Object? scheduleTime = null,Object? notificationCategory = null,Object? payload = freezed,Object? isRepeating = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,body: null == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String,scheduleTime: null == scheduleTime ? _self.scheduleTime : scheduleTime // ignore: cast_nullable_to_non_nullable
as DateTime,notificationCategory: null == notificationCategory ? _self.notificationCategory : notificationCategory // ignore: cast_nullable_to_non_nullable
as NotificationCreationCategory,payload: freezed == payload ? _self.payload : payload // ignore: cast_nullable_to_non_nullable
as String?,isRepeating: null == isRepeating ? _self.isRepeating : isRepeating // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [NotificationCreationModel].
extension NotificationCreationModelPatterns on NotificationCreationModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NotificationCreationModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NotificationCreationModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NotificationCreationModel value)  $default,){
final _that = this;
switch (_that) {
case _NotificationCreationModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NotificationCreationModel value)?  $default,){
final _that = this;
switch (_that) {
case _NotificationCreationModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String title,  String body,  DateTime scheduleTime,  NotificationCreationCategory notificationCategory,  String? payload,  bool isRepeating)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NotificationCreationModel() when $default != null:
return $default(_that.id,_that.title,_that.body,_that.scheduleTime,_that.notificationCategory,_that.payload,_that.isRepeating);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String title,  String body,  DateTime scheduleTime,  NotificationCreationCategory notificationCategory,  String? payload,  bool isRepeating)  $default,) {final _that = this;
switch (_that) {
case _NotificationCreationModel():
return $default(_that.id,_that.title,_that.body,_that.scheduleTime,_that.notificationCategory,_that.payload,_that.isRepeating);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String title,  String body,  DateTime scheduleTime,  NotificationCreationCategory notificationCategory,  String? payload,  bool isRepeating)?  $default,) {final _that = this;
switch (_that) {
case _NotificationCreationModel() when $default != null:
return $default(_that.id,_that.title,_that.body,_that.scheduleTime,_that.notificationCategory,_that.payload,_that.isRepeating);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _NotificationCreationModel extends NotificationCreationModel {
  const _NotificationCreationModel({required this.id, required this.title, required this.body, required this.scheduleTime, required this.notificationCategory, this.payload, this.isRepeating = false}): super._();
  factory _NotificationCreationModel.fromJson(Map<String, dynamic> json) => _$NotificationCreationModelFromJson(json);

@override final  int id;
@override final  String title;
@override final  String body;
@override final  DateTime scheduleTime;
@override final  NotificationCreationCategory notificationCategory;
@override final  String? payload;
@override@JsonKey() final  bool isRepeating;

/// Create a copy of NotificationCreationModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NotificationCreationModelCopyWith<_NotificationCreationModel> get copyWith => __$NotificationCreationModelCopyWithImpl<_NotificationCreationModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NotificationCreationModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NotificationCreationModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.body, body) || other.body == body)&&(identical(other.scheduleTime, scheduleTime) || other.scheduleTime == scheduleTime)&&(identical(other.notificationCategory, notificationCategory) || other.notificationCategory == notificationCategory)&&(identical(other.payload, payload) || other.payload == payload)&&(identical(other.isRepeating, isRepeating) || other.isRepeating == isRepeating));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,body,scheduleTime,notificationCategory,payload,isRepeating);

@override
String toString() {
  return 'NotificationCreationModel(id: $id, title: $title, body: $body, scheduleTime: $scheduleTime, notificationCategory: $notificationCategory, payload: $payload, isRepeating: $isRepeating)';
}


}

/// @nodoc
abstract mixin class _$NotificationCreationModelCopyWith<$Res> implements $NotificationCreationModelCopyWith<$Res> {
  factory _$NotificationCreationModelCopyWith(_NotificationCreationModel value, $Res Function(_NotificationCreationModel) _then) = __$NotificationCreationModelCopyWithImpl;
@override @useResult
$Res call({
 int id, String title, String body, DateTime scheduleTime, NotificationCreationCategory notificationCategory, String? payload, bool isRepeating
});




}
/// @nodoc
class __$NotificationCreationModelCopyWithImpl<$Res>
    implements _$NotificationCreationModelCopyWith<$Res> {
  __$NotificationCreationModelCopyWithImpl(this._self, this._then);

  final _NotificationCreationModel _self;
  final $Res Function(_NotificationCreationModel) _then;

/// Create a copy of NotificationCreationModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? body = null,Object? scheduleTime = null,Object? notificationCategory = null,Object? payload = freezed,Object? isRepeating = null,}) {
  return _then(_NotificationCreationModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,body: null == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String,scheduleTime: null == scheduleTime ? _self.scheduleTime : scheduleTime // ignore: cast_nullable_to_non_nullable
as DateTime,notificationCategory: null == notificationCategory ? _self.notificationCategory : notificationCategory // ignore: cast_nullable_to_non_nullable
as NotificationCreationCategory,payload: freezed == payload ? _self.payload : payload // ignore: cast_nullable_to_non_nullable
as String?,isRepeating: null == isRepeating ? _self.isRepeating : isRepeating // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
