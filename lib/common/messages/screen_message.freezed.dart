// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'screen_message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ScreenMessage {

 String get content; DateTime get timestamp; bool get isError;
/// Create a copy of ScreenMessage
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ScreenMessageCopyWith<ScreenMessage> get copyWith => _$ScreenMessageCopyWithImpl<ScreenMessage>(this as ScreenMessage, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ScreenMessage&&(identical(other.content, content) || other.content == content)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&(identical(other.isError, isError) || other.isError == isError));
}


@override
int get hashCode => Object.hash(runtimeType,content,timestamp,isError);

@override
String toString() {
  return 'ScreenMessage(content: $content, timestamp: $timestamp, isError: $isError)';
}


}

/// @nodoc
abstract mixin class $ScreenMessageCopyWith<$Res>  {
  factory $ScreenMessageCopyWith(ScreenMessage value, $Res Function(ScreenMessage) _then) = _$ScreenMessageCopyWithImpl;
@useResult
$Res call({
 String content, DateTime timestamp, bool isError
});




}
/// @nodoc
class _$ScreenMessageCopyWithImpl<$Res>
    implements $ScreenMessageCopyWith<$Res> {
  _$ScreenMessageCopyWithImpl(this._self, this._then);

  final ScreenMessage _self;
  final $Res Function(ScreenMessage) _then;

/// Create a copy of ScreenMessage
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? content = null,Object? timestamp = null,Object? isError = null,}) {
  return _then(_self.copyWith(
content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as DateTime,isError: null == isError ? _self.isError : isError // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [ScreenMessage].
extension ScreenMessagePatterns on ScreenMessage {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ScreenMessage value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ScreenMessage() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ScreenMessage value)  $default,){
final _that = this;
switch (_that) {
case _ScreenMessage():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ScreenMessage value)?  $default,){
final _that = this;
switch (_that) {
case _ScreenMessage() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String content,  DateTime timestamp,  bool isError)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ScreenMessage() when $default != null:
return $default(_that.content,_that.timestamp,_that.isError);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String content,  DateTime timestamp,  bool isError)  $default,) {final _that = this;
switch (_that) {
case _ScreenMessage():
return $default(_that.content,_that.timestamp,_that.isError);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String content,  DateTime timestamp,  bool isError)?  $default,) {final _that = this;
switch (_that) {
case _ScreenMessage() when $default != null:
return $default(_that.content,_that.timestamp,_that.isError);case _:
  return null;

}
}

}

/// @nodoc


class _ScreenMessage extends ScreenMessage {
  const _ScreenMessage({required this.content, required this.timestamp, required this.isError}): super._();
  

@override final  String content;
@override final  DateTime timestamp;
@override final  bool isError;

/// Create a copy of ScreenMessage
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ScreenMessageCopyWith<_ScreenMessage> get copyWith => __$ScreenMessageCopyWithImpl<_ScreenMessage>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ScreenMessage&&(identical(other.content, content) || other.content == content)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&(identical(other.isError, isError) || other.isError == isError));
}


@override
int get hashCode => Object.hash(runtimeType,content,timestamp,isError);

@override
String toString() {
  return 'ScreenMessage(content: $content, timestamp: $timestamp, isError: $isError)';
}


}

/// @nodoc
abstract mixin class _$ScreenMessageCopyWith<$Res> implements $ScreenMessageCopyWith<$Res> {
  factory _$ScreenMessageCopyWith(_ScreenMessage value, $Res Function(_ScreenMessage) _then) = __$ScreenMessageCopyWithImpl;
@override @useResult
$Res call({
 String content, DateTime timestamp, bool isError
});




}
/// @nodoc
class __$ScreenMessageCopyWithImpl<$Res>
    implements _$ScreenMessageCopyWith<$Res> {
  __$ScreenMessageCopyWithImpl(this._self, this._then);

  final _ScreenMessage _self;
  final $Res Function(_ScreenMessage) _then;

/// Create a copy of ScreenMessage
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? content = null,Object? timestamp = null,Object? isError = null,}) {
  return _then(_ScreenMessage(
content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as DateTime,isError: null == isError ? _self.isError : isError // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
