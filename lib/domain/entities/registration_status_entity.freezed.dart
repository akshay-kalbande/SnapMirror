// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'registration_status_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$RegistrationStatusEntity {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RegistrationStatusEntity);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RegistrationStatusEntity()';
}


}

/// @nodoc
class $RegistrationStatusEntityCopyWith<$Res>  {
$RegistrationStatusEntityCopyWith(RegistrationStatusEntity _, $Res Function(RegistrationStatusEntity) __);
}


/// Adds pattern-matching-related methods to [RegistrationStatusEntity].
extension RegistrationStatusEntityPatterns on RegistrationStatusEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _CreatingProfile value)?  creatingProfile,TResult Function( _ProfileCreated value)?  profileCreated,TResult Function( _FileUpload value)?  fileUpload,TResult Function( _SavedProfile value)?  savedProfile,TResult Function( _Error value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreatingProfile() when creatingProfile != null:
return creatingProfile(_that);case _ProfileCreated() when profileCreated != null:
return profileCreated(_that);case _FileUpload() when fileUpload != null:
return fileUpload(_that);case _SavedProfile() when savedProfile != null:
return savedProfile(_that);case _Error() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _CreatingProfile value)  creatingProfile,required TResult Function( _ProfileCreated value)  profileCreated,required TResult Function( _FileUpload value)  fileUpload,required TResult Function( _SavedProfile value)  savedProfile,required TResult Function( _Error value)  error,}){
final _that = this;
switch (_that) {
case _CreatingProfile():
return creatingProfile(_that);case _ProfileCreated():
return profileCreated(_that);case _FileUpload():
return fileUpload(_that);case _SavedProfile():
return savedProfile(_that);case _Error():
return error(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _CreatingProfile value)?  creatingProfile,TResult? Function( _ProfileCreated value)?  profileCreated,TResult? Function( _FileUpload value)?  fileUpload,TResult? Function( _SavedProfile value)?  savedProfile,TResult? Function( _Error value)?  error,}){
final _that = this;
switch (_that) {
case _CreatingProfile() when creatingProfile != null:
return creatingProfile(_that);case _ProfileCreated() when profileCreated != null:
return profileCreated(_that);case _FileUpload() when fileUpload != null:
return fileUpload(_that);case _SavedProfile() when savedProfile != null:
return savedProfile(_that);case _Error() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  creatingProfile,TResult Function()?  profileCreated,TResult Function( FileUploadResultEntity fileUpload)?  fileUpload,TResult Function( UserEntity user)?  savedProfile,TResult Function( Failure failure)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreatingProfile() when creatingProfile != null:
return creatingProfile();case _ProfileCreated() when profileCreated != null:
return profileCreated();case _FileUpload() when fileUpload != null:
return fileUpload(_that.fileUpload);case _SavedProfile() when savedProfile != null:
return savedProfile(_that.user);case _Error() when error != null:
return error(_that.failure);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  creatingProfile,required TResult Function()  profileCreated,required TResult Function( FileUploadResultEntity fileUpload)  fileUpload,required TResult Function( UserEntity user)  savedProfile,required TResult Function( Failure failure)  error,}) {final _that = this;
switch (_that) {
case _CreatingProfile():
return creatingProfile();case _ProfileCreated():
return profileCreated();case _FileUpload():
return fileUpload(_that.fileUpload);case _SavedProfile():
return savedProfile(_that.user);case _Error():
return error(_that.failure);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  creatingProfile,TResult? Function()?  profileCreated,TResult? Function( FileUploadResultEntity fileUpload)?  fileUpload,TResult? Function( UserEntity user)?  savedProfile,TResult? Function( Failure failure)?  error,}) {final _that = this;
switch (_that) {
case _CreatingProfile() when creatingProfile != null:
return creatingProfile();case _ProfileCreated() when profileCreated != null:
return profileCreated();case _FileUpload() when fileUpload != null:
return fileUpload(_that.fileUpload);case _SavedProfile() when savedProfile != null:
return savedProfile(_that.user);case _Error() when error != null:
return error(_that.failure);case _:
  return null;

}
}

}

/// @nodoc


class _CreatingProfile extends RegistrationStatusEntity {
  const _CreatingProfile(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreatingProfile);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RegistrationStatusEntity.creatingProfile()';
}


}




/// @nodoc


class _ProfileCreated extends RegistrationStatusEntity {
  const _ProfileCreated(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProfileCreated);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RegistrationStatusEntity.profileCreated()';
}


}




/// @nodoc


class _FileUpload extends RegistrationStatusEntity {
  const _FileUpload(this.fileUpload): super._();
  

 final  FileUploadResultEntity fileUpload;

/// Create a copy of RegistrationStatusEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FileUploadCopyWith<_FileUpload> get copyWith => __$FileUploadCopyWithImpl<_FileUpload>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FileUpload&&(identical(other.fileUpload, fileUpload) || other.fileUpload == fileUpload));
}


@override
int get hashCode => Object.hash(runtimeType,fileUpload);

@override
String toString() {
  return 'RegistrationStatusEntity.fileUpload(fileUpload: $fileUpload)';
}


}

/// @nodoc
abstract mixin class _$FileUploadCopyWith<$Res> implements $RegistrationStatusEntityCopyWith<$Res> {
  factory _$FileUploadCopyWith(_FileUpload value, $Res Function(_FileUpload) _then) = __$FileUploadCopyWithImpl;
@useResult
$Res call({
 FileUploadResultEntity fileUpload
});


$FileUploadResultEntityCopyWith<$Res> get fileUpload;

}
/// @nodoc
class __$FileUploadCopyWithImpl<$Res>
    implements _$FileUploadCopyWith<$Res> {
  __$FileUploadCopyWithImpl(this._self, this._then);

  final _FileUpload _self;
  final $Res Function(_FileUpload) _then;

/// Create a copy of RegistrationStatusEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? fileUpload = null,}) {
  return _then(_FileUpload(
null == fileUpload ? _self.fileUpload : fileUpload // ignore: cast_nullable_to_non_nullable
as FileUploadResultEntity,
  ));
}

/// Create a copy of RegistrationStatusEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FileUploadResultEntityCopyWith<$Res> get fileUpload {
  
  return $FileUploadResultEntityCopyWith<$Res>(_self.fileUpload, (value) {
    return _then(_self.copyWith(fileUpload: value));
  });
}
}

/// @nodoc


class _SavedProfile extends RegistrationStatusEntity {
  const _SavedProfile(this.user): super._();
  

 final  UserEntity user;

/// Create a copy of RegistrationStatusEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SavedProfileCopyWith<_SavedProfile> get copyWith => __$SavedProfileCopyWithImpl<_SavedProfile>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SavedProfile&&(identical(other.user, user) || other.user == user));
}


@override
int get hashCode => Object.hash(runtimeType,user);

@override
String toString() {
  return 'RegistrationStatusEntity.savedProfile(user: $user)';
}


}

/// @nodoc
abstract mixin class _$SavedProfileCopyWith<$Res> implements $RegistrationStatusEntityCopyWith<$Res> {
  factory _$SavedProfileCopyWith(_SavedProfile value, $Res Function(_SavedProfile) _then) = __$SavedProfileCopyWithImpl;
@useResult
$Res call({
 UserEntity user
});


$UserEntityCopyWith<$Res> get user;

}
/// @nodoc
class __$SavedProfileCopyWithImpl<$Res>
    implements _$SavedProfileCopyWith<$Res> {
  __$SavedProfileCopyWithImpl(this._self, this._then);

  final _SavedProfile _self;
  final $Res Function(_SavedProfile) _then;

/// Create a copy of RegistrationStatusEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? user = null,}) {
  return _then(_SavedProfile(
null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserEntity,
  ));
}

/// Create a copy of RegistrationStatusEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserEntityCopyWith<$Res> get user {
  
  return $UserEntityCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}

/// @nodoc


class _Error extends RegistrationStatusEntity {
  const _Error(this.failure): super._();
  

 final  Failure failure;

/// Create a copy of RegistrationStatusEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ErrorCopyWith<_Error> get copyWith => __$ErrorCopyWithImpl<_Error>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Error&&(identical(other.failure, failure) || other.failure == failure));
}


@override
int get hashCode => Object.hash(runtimeType,failure);

@override
String toString() {
  return 'RegistrationStatusEntity.error(failure: $failure)';
}


}

/// @nodoc
abstract mixin class _$ErrorCopyWith<$Res> implements $RegistrationStatusEntityCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) _then) = __$ErrorCopyWithImpl;
@useResult
$Res call({
 Failure failure
});




}
/// @nodoc
class __$ErrorCopyWithImpl<$Res>
    implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(this._self, this._then);

  final _Error _self;
  final $Res Function(_Error) _then;

/// Create a copy of RegistrationStatusEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? failure = null,}) {
  return _then(_Error(
null == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as Failure,
  ));
}


}

// dart format on
