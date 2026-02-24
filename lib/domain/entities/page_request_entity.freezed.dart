// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'page_request_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PageRequestEntity {

 Object? get nextPageToken; String get sortBy; int get pageSize; PageSortType get sortType; Map<String, dynamic> get isEqualToFieldMap;
/// Create a copy of PageRequestEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PageRequestEntityCopyWith<PageRequestEntity> get copyWith => _$PageRequestEntityCopyWithImpl<PageRequestEntity>(this as PageRequestEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PageRequestEntity&&const DeepCollectionEquality().equals(other.nextPageToken, nextPageToken)&&(identical(other.sortBy, sortBy) || other.sortBy == sortBy)&&(identical(other.pageSize, pageSize) || other.pageSize == pageSize)&&(identical(other.sortType, sortType) || other.sortType == sortType)&&const DeepCollectionEquality().equals(other.isEqualToFieldMap, isEqualToFieldMap));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(nextPageToken),sortBy,pageSize,sortType,const DeepCollectionEquality().hash(isEqualToFieldMap));

@override
String toString() {
  return 'PageRequestEntity(nextPageToken: $nextPageToken, sortBy: $sortBy, pageSize: $pageSize, sortType: $sortType, isEqualToFieldMap: $isEqualToFieldMap)';
}


}

/// @nodoc
abstract mixin class $PageRequestEntityCopyWith<$Res>  {
  factory $PageRequestEntityCopyWith(PageRequestEntity value, $Res Function(PageRequestEntity) _then) = _$PageRequestEntityCopyWithImpl;
@useResult
$Res call({
 Object? nextPageToken, String sortBy, int pageSize, PageSortType sortType, Map<String, dynamic> isEqualToFieldMap
});




}
/// @nodoc
class _$PageRequestEntityCopyWithImpl<$Res>
    implements $PageRequestEntityCopyWith<$Res> {
  _$PageRequestEntityCopyWithImpl(this._self, this._then);

  final PageRequestEntity _self;
  final $Res Function(PageRequestEntity) _then;

/// Create a copy of PageRequestEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? nextPageToken = freezed,Object? sortBy = null,Object? pageSize = null,Object? sortType = null,Object? isEqualToFieldMap = null,}) {
  return _then(_self.copyWith(
nextPageToken: freezed == nextPageToken ? _self.nextPageToken : nextPageToken ,sortBy: null == sortBy ? _self.sortBy : sortBy // ignore: cast_nullable_to_non_nullable
as String,pageSize: null == pageSize ? _self.pageSize : pageSize // ignore: cast_nullable_to_non_nullable
as int,sortType: null == sortType ? _self.sortType : sortType // ignore: cast_nullable_to_non_nullable
as PageSortType,isEqualToFieldMap: null == isEqualToFieldMap ? _self.isEqualToFieldMap : isEqualToFieldMap // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}

}


/// Adds pattern-matching-related methods to [PageRequestEntity].
extension PageRequestEntityPatterns on PageRequestEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PageRequestEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PageRequestEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PageRequestEntity value)  $default,){
final _that = this;
switch (_that) {
case _PageRequestEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PageRequestEntity value)?  $default,){
final _that = this;
switch (_that) {
case _PageRequestEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Object? nextPageToken,  String sortBy,  int pageSize,  PageSortType sortType,  Map<String, dynamic> isEqualToFieldMap)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PageRequestEntity() when $default != null:
return $default(_that.nextPageToken,_that.sortBy,_that.pageSize,_that.sortType,_that.isEqualToFieldMap);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Object? nextPageToken,  String sortBy,  int pageSize,  PageSortType sortType,  Map<String, dynamic> isEqualToFieldMap)  $default,) {final _that = this;
switch (_that) {
case _PageRequestEntity():
return $default(_that.nextPageToken,_that.sortBy,_that.pageSize,_that.sortType,_that.isEqualToFieldMap);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Object? nextPageToken,  String sortBy,  int pageSize,  PageSortType sortType,  Map<String, dynamic> isEqualToFieldMap)?  $default,) {final _that = this;
switch (_that) {
case _PageRequestEntity() when $default != null:
return $default(_that.nextPageToken,_that.sortBy,_that.pageSize,_that.sortType,_that.isEqualToFieldMap);case _:
  return null;

}
}

}

/// @nodoc


class _PageRequestEntity extends PageRequestEntity {
  const _PageRequestEntity({this.nextPageToken, this.sortBy = 'timestamp', this.pageSize = 30, this.sortType = PageSortType.desc, required final  Map<String, dynamic> isEqualToFieldMap}): _isEqualToFieldMap = isEqualToFieldMap,super._();
  

@override final  Object? nextPageToken;
@override@JsonKey() final  String sortBy;
@override@JsonKey() final  int pageSize;
@override@JsonKey() final  PageSortType sortType;
 final  Map<String, dynamic> _isEqualToFieldMap;
@override Map<String, dynamic> get isEqualToFieldMap {
  if (_isEqualToFieldMap is EqualUnmodifiableMapView) return _isEqualToFieldMap;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_isEqualToFieldMap);
}


/// Create a copy of PageRequestEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PageRequestEntityCopyWith<_PageRequestEntity> get copyWith => __$PageRequestEntityCopyWithImpl<_PageRequestEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PageRequestEntity&&const DeepCollectionEquality().equals(other.nextPageToken, nextPageToken)&&(identical(other.sortBy, sortBy) || other.sortBy == sortBy)&&(identical(other.pageSize, pageSize) || other.pageSize == pageSize)&&(identical(other.sortType, sortType) || other.sortType == sortType)&&const DeepCollectionEquality().equals(other._isEqualToFieldMap, _isEqualToFieldMap));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(nextPageToken),sortBy,pageSize,sortType,const DeepCollectionEquality().hash(_isEqualToFieldMap));

@override
String toString() {
  return 'PageRequestEntity(nextPageToken: $nextPageToken, sortBy: $sortBy, pageSize: $pageSize, sortType: $sortType, isEqualToFieldMap: $isEqualToFieldMap)';
}


}

/// @nodoc
abstract mixin class _$PageRequestEntityCopyWith<$Res> implements $PageRequestEntityCopyWith<$Res> {
  factory _$PageRequestEntityCopyWith(_PageRequestEntity value, $Res Function(_PageRequestEntity) _then) = __$PageRequestEntityCopyWithImpl;
@override @useResult
$Res call({
 Object? nextPageToken, String sortBy, int pageSize, PageSortType sortType, Map<String, dynamic> isEqualToFieldMap
});




}
/// @nodoc
class __$PageRequestEntityCopyWithImpl<$Res>
    implements _$PageRequestEntityCopyWith<$Res> {
  __$PageRequestEntityCopyWithImpl(this._self, this._then);

  final _PageRequestEntity _self;
  final $Res Function(_PageRequestEntity) _then;

/// Create a copy of PageRequestEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? nextPageToken = freezed,Object? sortBy = null,Object? pageSize = null,Object? sortType = null,Object? isEqualToFieldMap = null,}) {
  return _then(_PageRequestEntity(
nextPageToken: freezed == nextPageToken ? _self.nextPageToken : nextPageToken ,sortBy: null == sortBy ? _self.sortBy : sortBy // ignore: cast_nullable_to_non_nullable
as String,pageSize: null == pageSize ? _self.pageSize : pageSize // ignore: cast_nullable_to_non_nullable
as int,sortType: null == sortType ? _self.sortType : sortType // ignore: cast_nullable_to_non_nullable
as PageSortType,isEqualToFieldMap: null == isEqualToFieldMap ? _self._isEqualToFieldMap : isEqualToFieldMap // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}


}

// dart format on
