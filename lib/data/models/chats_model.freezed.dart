// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chats_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ChatsModel {

 List<ChatModel> get chats;
/// Create a copy of ChatsModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChatsModelCopyWith<ChatsModel> get copyWith => _$ChatsModelCopyWithImpl<ChatsModel>(this as ChatsModel, _$identity);

  /// Serializes this ChatsModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatsModel&&const DeepCollectionEquality().equals(other.chats, chats));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(chats));

@override
String toString() {
  return 'ChatsModel(chats: $chats)';
}


}

/// @nodoc
abstract mixin class $ChatsModelCopyWith<$Res>  {
  factory $ChatsModelCopyWith(ChatsModel value, $Res Function(ChatsModel) _then) = _$ChatsModelCopyWithImpl;
@useResult
$Res call({
 List<ChatModel> chats
});




}
/// @nodoc
class _$ChatsModelCopyWithImpl<$Res>
    implements $ChatsModelCopyWith<$Res> {
  _$ChatsModelCopyWithImpl(this._self, this._then);

  final ChatsModel _self;
  final $Res Function(ChatsModel) _then;

/// Create a copy of ChatsModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? chats = null,}) {
  return _then(_self.copyWith(
chats: null == chats ? _self.chats : chats // ignore: cast_nullable_to_non_nullable
as List<ChatModel>,
  ));
}

}


/// Adds pattern-matching-related methods to [ChatsModel].
extension ChatsModelPatterns on ChatsModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChatsModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChatsModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChatsModel value)  $default,){
final _that = this;
switch (_that) {
case _ChatsModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChatsModel value)?  $default,){
final _that = this;
switch (_that) {
case _ChatsModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<ChatModel> chats)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChatsModel() when $default != null:
return $default(_that.chats);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<ChatModel> chats)  $default,) {final _that = this;
switch (_that) {
case _ChatsModel():
return $default(_that.chats);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<ChatModel> chats)?  $default,) {final _that = this;
switch (_that) {
case _ChatsModel() when $default != null:
return $default(_that.chats);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ChatsModel extends ChatsModel {
  const _ChatsModel({required final  List<ChatModel> chats}): _chats = chats,super._();
  factory _ChatsModel.fromJson(Map<String, dynamic> json) => _$ChatsModelFromJson(json);

 final  List<ChatModel> _chats;
@override List<ChatModel> get chats {
  if (_chats is EqualUnmodifiableListView) return _chats;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_chats);
}


/// Create a copy of ChatsModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChatsModelCopyWith<_ChatsModel> get copyWith => __$ChatsModelCopyWithImpl<_ChatsModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ChatsModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChatsModel&&const DeepCollectionEquality().equals(other._chats, _chats));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_chats));

@override
String toString() {
  return 'ChatsModel(chats: $chats)';
}


}

/// @nodoc
abstract mixin class _$ChatsModelCopyWith<$Res> implements $ChatsModelCopyWith<$Res> {
  factory _$ChatsModelCopyWith(_ChatsModel value, $Res Function(_ChatsModel) _then) = __$ChatsModelCopyWithImpl;
@override @useResult
$Res call({
 List<ChatModel> chats
});




}
/// @nodoc
class __$ChatsModelCopyWithImpl<$Res>
    implements _$ChatsModelCopyWith<$Res> {
  __$ChatsModelCopyWithImpl(this._self, this._then);

  final _ChatsModel _self;
  final $Res Function(_ChatsModel) _then;

/// Create a copy of ChatsModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? chats = null,}) {
  return _then(_ChatsModel(
chats: null == chats ? _self._chats : chats // ignore: cast_nullable_to_non_nullable
as List<ChatModel>,
  ));
}


}

// dart format on
