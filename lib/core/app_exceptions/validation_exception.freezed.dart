// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'validation_exception.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ValidationException {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ValidationException);
}


@override
int get hashCode => runtimeType.hashCode;



}

/// @nodoc
class $ValidationExceptionCopyWith<$Res>  {
$ValidationExceptionCopyWith(ValidationException _, $Res Function(ValidationException) __);
}


/// Adds pattern-matching-related methods to [ValidationException].
extension ValidationExceptionPatterns on ValidationException {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( EmptyException value)?  empty,TResult Function( InvalidException value)?  invalid,TResult Function( TooShortException value)?  tooShort,TResult Function( TooLongException value)?  tooLong,TResult Function( OutOfRangeFailure value)?  outOfRange,required TResult orElse(),}){
final _that = this;
switch (_that) {
case EmptyException() when empty != null:
return empty(_that);case InvalidException() when invalid != null:
return invalid(_that);case TooShortException() when tooShort != null:
return tooShort(_that);case TooLongException() when tooLong != null:
return tooLong(_that);case OutOfRangeFailure() when outOfRange != null:
return outOfRange(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( EmptyException value)  empty,required TResult Function( InvalidException value)  invalid,required TResult Function( TooShortException value)  tooShort,required TResult Function( TooLongException value)  tooLong,required TResult Function( OutOfRangeFailure value)  outOfRange,}){
final _that = this;
switch (_that) {
case EmptyException():
return empty(_that);case InvalidException():
return invalid(_that);case TooShortException():
return tooShort(_that);case TooLongException():
return tooLong(_that);case OutOfRangeFailure():
return outOfRange(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( EmptyException value)?  empty,TResult? Function( InvalidException value)?  invalid,TResult? Function( TooShortException value)?  tooShort,TResult? Function( TooLongException value)?  tooLong,TResult? Function( OutOfRangeFailure value)?  outOfRange,}){
final _that = this;
switch (_that) {
case EmptyException() when empty != null:
return empty(_that);case InvalidException() when invalid != null:
return invalid(_that);case TooShortException() when tooShort != null:
return tooShort(_that);case TooLongException() when tooLong != null:
return tooLong(_that);case OutOfRangeFailure() when outOfRange != null:
return outOfRange(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String field)?  empty,TResult Function( String reason)?  invalid,TResult Function( String field,  int min)?  tooShort,TResult Function( String field,  int max)?  tooLong,TResult Function( String field,  num min,  num max)?  outOfRange,required TResult orElse(),}) {final _that = this;
switch (_that) {
case EmptyException() when empty != null:
return empty(_that.field);case InvalidException() when invalid != null:
return invalid(_that.reason);case TooShortException() when tooShort != null:
return tooShort(_that.field,_that.min);case TooLongException() when tooLong != null:
return tooLong(_that.field,_that.max);case OutOfRangeFailure() when outOfRange != null:
return outOfRange(_that.field,_that.min,_that.max);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String field)  empty,required TResult Function( String reason)  invalid,required TResult Function( String field,  int min)  tooShort,required TResult Function( String field,  int max)  tooLong,required TResult Function( String field,  num min,  num max)  outOfRange,}) {final _that = this;
switch (_that) {
case EmptyException():
return empty(_that.field);case InvalidException():
return invalid(_that.reason);case TooShortException():
return tooShort(_that.field,_that.min);case TooLongException():
return tooLong(_that.field,_that.max);case OutOfRangeFailure():
return outOfRange(_that.field,_that.min,_that.max);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String field)?  empty,TResult? Function( String reason)?  invalid,TResult? Function( String field,  int min)?  tooShort,TResult? Function( String field,  int max)?  tooLong,TResult? Function( String field,  num min,  num max)?  outOfRange,}) {final _that = this;
switch (_that) {
case EmptyException() when empty != null:
return empty(_that.field);case InvalidException() when invalid != null:
return invalid(_that.reason);case TooShortException() when tooShort != null:
return tooShort(_that.field,_that.min);case TooLongException() when tooLong != null:
return tooLong(_that.field,_that.max);case OutOfRangeFailure() when outOfRange != null:
return outOfRange(_that.field,_that.min,_that.max);case _:
  return null;

}
}

}

/// @nodoc


class EmptyException extends ValidationException {
  const EmptyException({required this.field}): super._();
  

 final  String field;

/// Create a copy of ValidationException
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EmptyExceptionCopyWith<EmptyException> get copyWith => _$EmptyExceptionCopyWithImpl<EmptyException>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EmptyException&&(identical(other.field, field) || other.field == field));
}


@override
int get hashCode => Object.hash(runtimeType,field);



}

/// @nodoc
abstract mixin class $EmptyExceptionCopyWith<$Res> implements $ValidationExceptionCopyWith<$Res> {
  factory $EmptyExceptionCopyWith(EmptyException value, $Res Function(EmptyException) _then) = _$EmptyExceptionCopyWithImpl;
@useResult
$Res call({
 String field
});




}
/// @nodoc
class _$EmptyExceptionCopyWithImpl<$Res>
    implements $EmptyExceptionCopyWith<$Res> {
  _$EmptyExceptionCopyWithImpl(this._self, this._then);

  final EmptyException _self;
  final $Res Function(EmptyException) _then;

/// Create a copy of ValidationException
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? field = null,}) {
  return _then(EmptyException(
field: null == field ? _self.field : field // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class InvalidException extends ValidationException {
  const InvalidException({required this.reason}): super._();
  

 final  String reason;

/// Create a copy of ValidationException
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InvalidExceptionCopyWith<InvalidException> get copyWith => _$InvalidExceptionCopyWithImpl<InvalidException>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InvalidException&&(identical(other.reason, reason) || other.reason == reason));
}


@override
int get hashCode => Object.hash(runtimeType,reason);



}

/// @nodoc
abstract mixin class $InvalidExceptionCopyWith<$Res> implements $ValidationExceptionCopyWith<$Res> {
  factory $InvalidExceptionCopyWith(InvalidException value, $Res Function(InvalidException) _then) = _$InvalidExceptionCopyWithImpl;
@useResult
$Res call({
 String reason
});




}
/// @nodoc
class _$InvalidExceptionCopyWithImpl<$Res>
    implements $InvalidExceptionCopyWith<$Res> {
  _$InvalidExceptionCopyWithImpl(this._self, this._then);

  final InvalidException _self;
  final $Res Function(InvalidException) _then;

/// Create a copy of ValidationException
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? reason = null,}) {
  return _then(InvalidException(
reason: null == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class TooShortException extends ValidationException {
  const TooShortException({required this.field, required this.min}): super._();
  

 final  String field;
 final  int min;

/// Create a copy of ValidationException
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TooShortExceptionCopyWith<TooShortException> get copyWith => _$TooShortExceptionCopyWithImpl<TooShortException>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TooShortException&&(identical(other.field, field) || other.field == field)&&(identical(other.min, min) || other.min == min));
}


@override
int get hashCode => Object.hash(runtimeType,field,min);



}

/// @nodoc
abstract mixin class $TooShortExceptionCopyWith<$Res> implements $ValidationExceptionCopyWith<$Res> {
  factory $TooShortExceptionCopyWith(TooShortException value, $Res Function(TooShortException) _then) = _$TooShortExceptionCopyWithImpl;
@useResult
$Res call({
 String field, int min
});




}
/// @nodoc
class _$TooShortExceptionCopyWithImpl<$Res>
    implements $TooShortExceptionCopyWith<$Res> {
  _$TooShortExceptionCopyWithImpl(this._self, this._then);

  final TooShortException _self;
  final $Res Function(TooShortException) _then;

/// Create a copy of ValidationException
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? field = null,Object? min = null,}) {
  return _then(TooShortException(
field: null == field ? _self.field : field // ignore: cast_nullable_to_non_nullable
as String,min: null == min ? _self.min : min // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class TooLongException extends ValidationException {
  const TooLongException({required this.field, required this.max}): super._();
  

 final  String field;
 final  int max;

/// Create a copy of ValidationException
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TooLongExceptionCopyWith<TooLongException> get copyWith => _$TooLongExceptionCopyWithImpl<TooLongException>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TooLongException&&(identical(other.field, field) || other.field == field)&&(identical(other.max, max) || other.max == max));
}


@override
int get hashCode => Object.hash(runtimeType,field,max);



}

/// @nodoc
abstract mixin class $TooLongExceptionCopyWith<$Res> implements $ValidationExceptionCopyWith<$Res> {
  factory $TooLongExceptionCopyWith(TooLongException value, $Res Function(TooLongException) _then) = _$TooLongExceptionCopyWithImpl;
@useResult
$Res call({
 String field, int max
});




}
/// @nodoc
class _$TooLongExceptionCopyWithImpl<$Res>
    implements $TooLongExceptionCopyWith<$Res> {
  _$TooLongExceptionCopyWithImpl(this._self, this._then);

  final TooLongException _self;
  final $Res Function(TooLongException) _then;

/// Create a copy of ValidationException
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? field = null,Object? max = null,}) {
  return _then(TooLongException(
field: null == field ? _self.field : field // ignore: cast_nullable_to_non_nullable
as String,max: null == max ? _self.max : max // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class OutOfRangeFailure extends ValidationException {
  const OutOfRangeFailure({required this.field, required this.min, required this.max}): super._();
  

 final  String field;
 final  num min;
 final  num max;

/// Create a copy of ValidationException
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OutOfRangeFailureCopyWith<OutOfRangeFailure> get copyWith => _$OutOfRangeFailureCopyWithImpl<OutOfRangeFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OutOfRangeFailure&&(identical(other.field, field) || other.field == field)&&(identical(other.min, min) || other.min == min)&&(identical(other.max, max) || other.max == max));
}


@override
int get hashCode => Object.hash(runtimeType,field,min,max);



}

/// @nodoc
abstract mixin class $OutOfRangeFailureCopyWith<$Res> implements $ValidationExceptionCopyWith<$Res> {
  factory $OutOfRangeFailureCopyWith(OutOfRangeFailure value, $Res Function(OutOfRangeFailure) _then) = _$OutOfRangeFailureCopyWithImpl;
@useResult
$Res call({
 String field, num min, num max
});




}
/// @nodoc
class _$OutOfRangeFailureCopyWithImpl<$Res>
    implements $OutOfRangeFailureCopyWith<$Res> {
  _$OutOfRangeFailureCopyWithImpl(this._self, this._then);

  final OutOfRangeFailure _self;
  final $Res Function(OutOfRangeFailure) _then;

/// Create a copy of ValidationException
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? field = null,Object? min = null,Object? max = null,}) {
  return _then(OutOfRangeFailure(
field: null == field ? _self.field : field // ignore: cast_nullable_to_non_nullable
as String,min: null == min ? _self.min : min // ignore: cast_nullable_to_non_nullable
as num,max: null == max ? _self.max : max // ignore: cast_nullable_to_non_nullable
as num,
  ));
}


}

// dart format on
