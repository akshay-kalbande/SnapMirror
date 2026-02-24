// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'page_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PageResult<T> {

 List<T> get items;@JsonKey(includeFromJson: false, includeToJson: false) Object? get nextPageToken; int? get totalItemCount;@JsonKey(includeFromJson: false, includeToJson: false) bool get isLastPage;@JsonKey(includeFromJson: false, includeToJson: false) bool get fetchingMore;
/// Create a copy of PageResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PageResultCopyWith<T, PageResult<T>> get copyWith => _$PageResultCopyWithImpl<T, PageResult<T>>(this as PageResult<T>, _$identity);

  /// Serializes this PageResult to a JSON map.
  Map<String, dynamic> toJson(Object? Function(T) toJsonT);


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PageResult<T>&&const DeepCollectionEquality().equals(other.items, items)&&const DeepCollectionEquality().equals(other.nextPageToken, nextPageToken)&&(identical(other.totalItemCount, totalItemCount) || other.totalItemCount == totalItemCount)&&(identical(other.isLastPage, isLastPage) || other.isLastPage == isLastPage)&&(identical(other.fetchingMore, fetchingMore) || other.fetchingMore == fetchingMore));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(items),const DeepCollectionEquality().hash(nextPageToken),totalItemCount,isLastPage,fetchingMore);

@override
String toString() {
  return 'PageResult<$T>(items: $items, nextPageToken: $nextPageToken, totalItemCount: $totalItemCount, isLastPage: $isLastPage, fetchingMore: $fetchingMore)';
}


}

/// @nodoc
abstract mixin class $PageResultCopyWith<T,$Res>  {
  factory $PageResultCopyWith(PageResult<T> value, $Res Function(PageResult<T>) _then) = _$PageResultCopyWithImpl;
@useResult
$Res call({
 List<T> items,@JsonKey(includeFromJson: false, includeToJson: false) Object? nextPageToken, int? totalItemCount,@JsonKey(includeFromJson: false, includeToJson: false) bool isLastPage,@JsonKey(includeFromJson: false, includeToJson: false) bool fetchingMore
});




}
/// @nodoc
class _$PageResultCopyWithImpl<T,$Res>
    implements $PageResultCopyWith<T, $Res> {
  _$PageResultCopyWithImpl(this._self, this._then);

  final PageResult<T> _self;
  final $Res Function(PageResult<T>) _then;

/// Create a copy of PageResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? items = null,Object? nextPageToken = freezed,Object? totalItemCount = freezed,Object? isLastPage = null,Object? fetchingMore = null,}) {
  return _then(_self.copyWith(
items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<T>,nextPageToken: freezed == nextPageToken ? _self.nextPageToken : nextPageToken ,totalItemCount: freezed == totalItemCount ? _self.totalItemCount : totalItemCount // ignore: cast_nullable_to_non_nullable
as int?,isLastPage: null == isLastPage ? _self.isLastPage : isLastPage // ignore: cast_nullable_to_non_nullable
as bool,fetchingMore: null == fetchingMore ? _self.fetchingMore : fetchingMore // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [PageResult].
extension PageResultPatterns<T> on PageResult<T> {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PageResult<T> value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PageResult() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PageResult<T> value)  $default,){
final _that = this;
switch (_that) {
case _PageResult():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PageResult<T> value)?  $default,){
final _that = this;
switch (_that) {
case _PageResult() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<T> items, @JsonKey(includeFromJson: false, includeToJson: false)  Object? nextPageToken,  int? totalItemCount, @JsonKey(includeFromJson: false, includeToJson: false)  bool isLastPage, @JsonKey(includeFromJson: false, includeToJson: false)  bool fetchingMore)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PageResult() when $default != null:
return $default(_that.items,_that.nextPageToken,_that.totalItemCount,_that.isLastPage,_that.fetchingMore);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<T> items, @JsonKey(includeFromJson: false, includeToJson: false)  Object? nextPageToken,  int? totalItemCount, @JsonKey(includeFromJson: false, includeToJson: false)  bool isLastPage, @JsonKey(includeFromJson: false, includeToJson: false)  bool fetchingMore)  $default,) {final _that = this;
switch (_that) {
case _PageResult():
return $default(_that.items,_that.nextPageToken,_that.totalItemCount,_that.isLastPage,_that.fetchingMore);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<T> items, @JsonKey(includeFromJson: false, includeToJson: false)  Object? nextPageToken,  int? totalItemCount, @JsonKey(includeFromJson: false, includeToJson: false)  bool isLastPage, @JsonKey(includeFromJson: false, includeToJson: false)  bool fetchingMore)?  $default,) {final _that = this;
switch (_that) {
case _PageResult() when $default != null:
return $default(_that.items,_that.nextPageToken,_that.totalItemCount,_that.isLastPage,_that.fetchingMore);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)

class _PageResult<T> extends PageResult<T> {
  const _PageResult({required final  List<T> items, @JsonKey(includeFromJson: false, includeToJson: false) this.nextPageToken = null, this.totalItemCount, @JsonKey(includeFromJson: false, includeToJson: false) this.isLastPage = false, @JsonKey(includeFromJson: false, includeToJson: false) this.fetchingMore = false}): _items = items,super._();
  factory _PageResult.fromJson(Map<String, dynamic> json,T Function(Object?) fromJsonT) => _$PageResultFromJson(json,fromJsonT);

 final  List<T> _items;
@override List<T> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

@override@JsonKey(includeFromJson: false, includeToJson: false) final  Object? nextPageToken;
@override final  int? totalItemCount;
@override@JsonKey(includeFromJson: false, includeToJson: false) final  bool isLastPage;
@override@JsonKey(includeFromJson: false, includeToJson: false) final  bool fetchingMore;

/// Create a copy of PageResult
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PageResultCopyWith<T, _PageResult<T>> get copyWith => __$PageResultCopyWithImpl<T, _PageResult<T>>(this, _$identity);

@override
Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
  return _$PageResultToJson<T>(this, toJsonT);
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PageResult<T>&&const DeepCollectionEquality().equals(other._items, _items)&&const DeepCollectionEquality().equals(other.nextPageToken, nextPageToken)&&(identical(other.totalItemCount, totalItemCount) || other.totalItemCount == totalItemCount)&&(identical(other.isLastPage, isLastPage) || other.isLastPage == isLastPage)&&(identical(other.fetchingMore, fetchingMore) || other.fetchingMore == fetchingMore));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_items),const DeepCollectionEquality().hash(nextPageToken),totalItemCount,isLastPage,fetchingMore);

@override
String toString() {
  return 'PageResult<$T>(items: $items, nextPageToken: $nextPageToken, totalItemCount: $totalItemCount, isLastPage: $isLastPage, fetchingMore: $fetchingMore)';
}


}

/// @nodoc
abstract mixin class _$PageResultCopyWith<T,$Res> implements $PageResultCopyWith<T, $Res> {
  factory _$PageResultCopyWith(_PageResult<T> value, $Res Function(_PageResult<T>) _then) = __$PageResultCopyWithImpl;
@override @useResult
$Res call({
 List<T> items,@JsonKey(includeFromJson: false, includeToJson: false) Object? nextPageToken, int? totalItemCount,@JsonKey(includeFromJson: false, includeToJson: false) bool isLastPage,@JsonKey(includeFromJson: false, includeToJson: false) bool fetchingMore
});




}
/// @nodoc
class __$PageResultCopyWithImpl<T,$Res>
    implements _$PageResultCopyWith<T, $Res> {
  __$PageResultCopyWithImpl(this._self, this._then);

  final _PageResult<T> _self;
  final $Res Function(_PageResult<T>) _then;

/// Create a copy of PageResult
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? items = null,Object? nextPageToken = freezed,Object? totalItemCount = freezed,Object? isLastPage = null,Object? fetchingMore = null,}) {
  return _then(_PageResult<T>(
items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<T>,nextPageToken: freezed == nextPageToken ? _self.nextPageToken : nextPageToken ,totalItemCount: freezed == totalItemCount ? _self.totalItemCount : totalItemCount // ignore: cast_nullable_to_non_nullable
as int?,isLastPage: null == isLastPage ? _self.isLastPage : isLastPage // ignore: cast_nullable_to_non_nullable
as bool,fetchingMore: null == fetchingMore ? _self.fetchingMore : fetchingMore // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
