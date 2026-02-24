// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'validation_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ValidationFailure {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ValidationFailure);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ValidationFailure()';
}


}

/// @nodoc
class $ValidationFailureCopyWith<$Res>  {
$ValidationFailureCopyWith(ValidationFailure _, $Res Function(ValidationFailure) __);
}


/// Adds pattern-matching-related methods to [ValidationFailure].
extension ValidationFailurePatterns on ValidationFailure {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( EmptyFailure value)?  empty,TResult Function( InvalidFailure value)?  invalid,TResult Function( TooShortFailure value)?  tooShort,TResult Function( TooLongFailure value)?  tooLong,TResult Function( OutOfRangeFailure value)?  outOfRange,required TResult orElse(),}){
final _that = this;
switch (_that) {
case EmptyFailure() when empty != null:
return empty(_that);case InvalidFailure() when invalid != null:
return invalid(_that);case TooShortFailure() when tooShort != null:
return tooShort(_that);case TooLongFailure() when tooLong != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( EmptyFailure value)  empty,required TResult Function( InvalidFailure value)  invalid,required TResult Function( TooShortFailure value)  tooShort,required TResult Function( TooLongFailure value)  tooLong,required TResult Function( OutOfRangeFailure value)  outOfRange,}){
final _that = this;
switch (_that) {
case EmptyFailure():
return empty(_that);case InvalidFailure():
return invalid(_that);case TooShortFailure():
return tooShort(_that);case TooLongFailure():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( EmptyFailure value)?  empty,TResult? Function( InvalidFailure value)?  invalid,TResult? Function( TooShortFailure value)?  tooShort,TResult? Function( TooLongFailure value)?  tooLong,TResult? Function( OutOfRangeFailure value)?  outOfRange,}){
final _that = this;
switch (_that) {
case EmptyFailure() when empty != null:
return empty(_that);case InvalidFailure() when invalid != null:
return invalid(_that);case TooShortFailure() when tooShort != null:
return tooShort(_that);case TooLongFailure() when tooLong != null:
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
case EmptyFailure() when empty != null:
return empty(_that.field);case InvalidFailure() when invalid != null:
return invalid(_that.reason);case TooShortFailure() when tooShort != null:
return tooShort(_that.field,_that.min);case TooLongFailure() when tooLong != null:
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
case EmptyFailure():
return empty(_that.field);case InvalidFailure():
return invalid(_that.reason);case TooShortFailure():
return tooShort(_that.field,_that.min);case TooLongFailure():
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
case EmptyFailure() when empty != null:
return empty(_that.field);case InvalidFailure() when invalid != null:
return invalid(_that.reason);case TooShortFailure() when tooShort != null:
return tooShort(_that.field,_that.min);case TooLongFailure() when tooLong != null:
return tooLong(_that.field,_that.max);case OutOfRangeFailure() when outOfRange != null:
return outOfRange(_that.field,_that.min,_that.max);case _:
  return null;

}
}

}

/// @nodoc


class EmptyFailure extends ValidationFailure {
  const EmptyFailure({required this.field}): super._();
  

 final  String field;

/// Create a copy of ValidationFailure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EmptyFailureCopyWith<EmptyFailure> get copyWith => _$EmptyFailureCopyWithImpl<EmptyFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EmptyFailure&&(identical(other.field, field) || other.field == field));
}


@override
int get hashCode => Object.hash(runtimeType,field);

@override
String toString() {
  return 'ValidationFailure.empty(field: $field)';
}


}

/// @nodoc
abstract mixin class $EmptyFailureCopyWith<$Res> implements $ValidationFailureCopyWith<$Res> {
  factory $EmptyFailureCopyWith(EmptyFailure value, $Res Function(EmptyFailure) _then) = _$EmptyFailureCopyWithImpl;
@useResult
$Res call({
 String field
});




}
/// @nodoc
class _$EmptyFailureCopyWithImpl<$Res>
    implements $EmptyFailureCopyWith<$Res> {
  _$EmptyFailureCopyWithImpl(this._self, this._then);

  final EmptyFailure _self;
  final $Res Function(EmptyFailure) _then;

/// Create a copy of ValidationFailure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? field = null,}) {
  return _then(EmptyFailure(
field: null == field ? _self.field : field // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class InvalidFailure extends ValidationFailure {
  const InvalidFailure({required this.reason}): super._();
  

 final  String reason;

/// Create a copy of ValidationFailure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InvalidFailureCopyWith<InvalidFailure> get copyWith => _$InvalidFailureCopyWithImpl<InvalidFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InvalidFailure&&(identical(other.reason, reason) || other.reason == reason));
}


@override
int get hashCode => Object.hash(runtimeType,reason);

@override
String toString() {
  return 'ValidationFailure.invalid(reason: $reason)';
}


}

/// @nodoc
abstract mixin class $InvalidFailureCopyWith<$Res> implements $ValidationFailureCopyWith<$Res> {
  factory $InvalidFailureCopyWith(InvalidFailure value, $Res Function(InvalidFailure) _then) = _$InvalidFailureCopyWithImpl;
@useResult
$Res call({
 String reason
});




}
/// @nodoc
class _$InvalidFailureCopyWithImpl<$Res>
    implements $InvalidFailureCopyWith<$Res> {
  _$InvalidFailureCopyWithImpl(this._self, this._then);

  final InvalidFailure _self;
  final $Res Function(InvalidFailure) _then;

/// Create a copy of ValidationFailure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? reason = null,}) {
  return _then(InvalidFailure(
reason: null == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class TooShortFailure extends ValidationFailure {
  const TooShortFailure({required this.field, required this.min}): super._();
  

 final  String field;
 final  int min;

/// Create a copy of ValidationFailure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TooShortFailureCopyWith<TooShortFailure> get copyWith => _$TooShortFailureCopyWithImpl<TooShortFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TooShortFailure&&(identical(other.field, field) || other.field == field)&&(identical(other.min, min) || other.min == min));
}


@override
int get hashCode => Object.hash(runtimeType,field,min);

@override
String toString() {
  return 'ValidationFailure.tooShort(field: $field, min: $min)';
}


}

/// @nodoc
abstract mixin class $TooShortFailureCopyWith<$Res> implements $ValidationFailureCopyWith<$Res> {
  factory $TooShortFailureCopyWith(TooShortFailure value, $Res Function(TooShortFailure) _then) = _$TooShortFailureCopyWithImpl;
@useResult
$Res call({
 String field, int min
});




}
/// @nodoc
class _$TooShortFailureCopyWithImpl<$Res>
    implements $TooShortFailureCopyWith<$Res> {
  _$TooShortFailureCopyWithImpl(this._self, this._then);

  final TooShortFailure _self;
  final $Res Function(TooShortFailure) _then;

/// Create a copy of ValidationFailure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? field = null,Object? min = null,}) {
  return _then(TooShortFailure(
field: null == field ? _self.field : field // ignore: cast_nullable_to_non_nullable
as String,min: null == min ? _self.min : min // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class TooLongFailure extends ValidationFailure {
  const TooLongFailure({required this.field, required this.max}): super._();
  

 final  String field;
 final  int max;

/// Create a copy of ValidationFailure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TooLongFailureCopyWith<TooLongFailure> get copyWith => _$TooLongFailureCopyWithImpl<TooLongFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TooLongFailure&&(identical(other.field, field) || other.field == field)&&(identical(other.max, max) || other.max == max));
}


@override
int get hashCode => Object.hash(runtimeType,field,max);

@override
String toString() {
  return 'ValidationFailure.tooLong(field: $field, max: $max)';
}


}

/// @nodoc
abstract mixin class $TooLongFailureCopyWith<$Res> implements $ValidationFailureCopyWith<$Res> {
  factory $TooLongFailureCopyWith(TooLongFailure value, $Res Function(TooLongFailure) _then) = _$TooLongFailureCopyWithImpl;
@useResult
$Res call({
 String field, int max
});




}
/// @nodoc
class _$TooLongFailureCopyWithImpl<$Res>
    implements $TooLongFailureCopyWith<$Res> {
  _$TooLongFailureCopyWithImpl(this._self, this._then);

  final TooLongFailure _self;
  final $Res Function(TooLongFailure) _then;

/// Create a copy of ValidationFailure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? field = null,Object? max = null,}) {
  return _then(TooLongFailure(
field: null == field ? _self.field : field // ignore: cast_nullable_to_non_nullable
as String,max: null == max ? _self.max : max // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class OutOfRangeFailure extends ValidationFailure {
  const OutOfRangeFailure({required this.field, required this.min, required this.max}): super._();
  

 final  String field;
 final  num min;
 final  num max;

/// Create a copy of ValidationFailure
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

@override
String toString() {
  return 'ValidationFailure.outOfRange(field: $field, min: $min, max: $max)';
}


}

/// @nodoc
abstract mixin class $OutOfRangeFailureCopyWith<$Res> implements $ValidationFailureCopyWith<$Res> {
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

/// Create a copy of ValidationFailure
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
