// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'page_result_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PageResultModel<T> {

 List<T> get items; Object? get nextPageToken; int? get totalItemCount; bool get isLastPage;
/// Create a copy of PageResultModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PageResultModelCopyWith<T, PageResultModel<T>> get copyWith => _$PageResultModelCopyWithImpl<T, PageResultModel<T>>(this as PageResultModel<T>, _$identity);

  /// Serializes this PageResultModel to a JSON map.
  Map<String, dynamic> toJson(Object? Function(T) toJsonT);


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PageResultModel<T>&&const DeepCollectionEquality().equals(other.items, items)&&const DeepCollectionEquality().equals(other.nextPageToken, nextPageToken)&&(identical(other.totalItemCount, totalItemCount) || other.totalItemCount == totalItemCount)&&(identical(other.isLastPage, isLastPage) || other.isLastPage == isLastPage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(items),const DeepCollectionEquality().hash(nextPageToken),totalItemCount,isLastPage);

@override
String toString() {
  return 'PageResultModel<$T>(items: $items, nextPageToken: $nextPageToken, totalItemCount: $totalItemCount, isLastPage: $isLastPage)';
}


}

/// @nodoc
abstract mixin class $PageResultModelCopyWith<T,$Res>  {
  factory $PageResultModelCopyWith(PageResultModel<T> value, $Res Function(PageResultModel<T>) _then) = _$PageResultModelCopyWithImpl;
@useResult
$Res call({
 List<T> items, Object? nextPageToken, int? totalItemCount, bool isLastPage
});




}
/// @nodoc
class _$PageResultModelCopyWithImpl<T,$Res>
    implements $PageResultModelCopyWith<T, $Res> {
  _$PageResultModelCopyWithImpl(this._self, this._then);

  final PageResultModel<T> _self;
  final $Res Function(PageResultModel<T>) _then;

/// Create a copy of PageResultModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? items = null,Object? nextPageToken = freezed,Object? totalItemCount = freezed,Object? isLastPage = null,}) {
  return _then(_self.copyWith(
items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<T>,nextPageToken: freezed == nextPageToken ? _self.nextPageToken : nextPageToken ,totalItemCount: freezed == totalItemCount ? _self.totalItemCount : totalItemCount // ignore: cast_nullable_to_non_nullable
as int?,isLastPage: null == isLastPage ? _self.isLastPage : isLastPage // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [PageResultModel].
extension PageResultModelPatterns<T> on PageResultModel<T> {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PageResultModel<T> value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PageResultModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PageResultModel<T> value)  $default,){
final _that = this;
switch (_that) {
case _PageResultModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PageResultModel<T> value)?  $default,){
final _that = this;
switch (_that) {
case _PageResultModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<T> items,  Object? nextPageToken,  int? totalItemCount,  bool isLastPage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PageResultModel() when $default != null:
return $default(_that.items,_that.nextPageToken,_that.totalItemCount,_that.isLastPage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<T> items,  Object? nextPageToken,  int? totalItemCount,  bool isLastPage)  $default,) {final _that = this;
switch (_that) {
case _PageResultModel():
return $default(_that.items,_that.nextPageToken,_that.totalItemCount,_that.isLastPage);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<T> items,  Object? nextPageToken,  int? totalItemCount,  bool isLastPage)?  $default,) {final _that = this;
switch (_that) {
case _PageResultModel() when $default != null:
return $default(_that.items,_that.nextPageToken,_that.totalItemCount,_that.isLastPage);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)

class _PageResultModel<T> extends PageResultModel<T> {
  const _PageResultModel({required final  List<T> items, this.nextPageToken = null, this.totalItemCount, this.isLastPage = false}): _items = items,super._();
  factory _PageResultModel.fromJson(Map<String, dynamic> json,T Function(Object?) fromJsonT) => _$PageResultModelFromJson(json,fromJsonT);

 final  List<T> _items;
@override List<T> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

@override@JsonKey() final  Object? nextPageToken;
@override final  int? totalItemCount;
@override@JsonKey() final  bool isLastPage;

/// Create a copy of PageResultModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PageResultModelCopyWith<T, _PageResultModel<T>> get copyWith => __$PageResultModelCopyWithImpl<T, _PageResultModel<T>>(this, _$identity);

@override
Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
  return _$PageResultModelToJson<T>(this, toJsonT);
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PageResultModel<T>&&const DeepCollectionEquality().equals(other._items, _items)&&const DeepCollectionEquality().equals(other.nextPageToken, nextPageToken)&&(identical(other.totalItemCount, totalItemCount) || other.totalItemCount == totalItemCount)&&(identical(other.isLastPage, isLastPage) || other.isLastPage == isLastPage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_items),const DeepCollectionEquality().hash(nextPageToken),totalItemCount,isLastPage);

@override
String toString() {
  return 'PageResultModel<$T>(items: $items, nextPageToken: $nextPageToken, totalItemCount: $totalItemCount, isLastPage: $isLastPage)';
}


}

/// @nodoc
abstract mixin class _$PageResultModelCopyWith<T,$Res> implements $PageResultModelCopyWith<T, $Res> {
  factory _$PageResultModelCopyWith(_PageResultModel<T> value, $Res Function(_PageResultModel<T>) _then) = __$PageResultModelCopyWithImpl;
@override @useResult
$Res call({
 List<T> items, Object? nextPageToken, int? totalItemCount, bool isLastPage
});




}
/// @nodoc
class __$PageResultModelCopyWithImpl<T,$Res>
    implements _$PageResultModelCopyWith<T, $Res> {
  __$PageResultModelCopyWithImpl(this._self, this._then);

  final _PageResultModel<T> _self;
  final $Res Function(_PageResultModel<T>) _then;

/// Create a copy of PageResultModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? items = null,Object? nextPageToken = freezed,Object? totalItemCount = freezed,Object? isLastPage = null,}) {
  return _then(_PageResultModel<T>(
items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<T>,nextPageToken: freezed == nextPageToken ? _self.nextPageToken : nextPageToken ,totalItemCount: freezed == totalItemCount ? _self.totalItemCount : totalItemCount // ignore: cast_nullable_to_non_nullable
as int?,isLastPage: null == isLastPage ? _self.isLastPage : isLastPage // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
