// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$RegisterEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RegisterEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RegisterEvent()';
}


}

/// @nodoc
class $RegisterEventCopyWith<$Res>  {
$RegisterEventCopyWith(RegisterEvent _, $Res Function(RegisterEvent) __);
}


/// Adds pattern-matching-related methods to [RegisterEvent].
extension RegisterEventPatterns on RegisterEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Started value)?  started,TResult Function( _UsernameChanged value)?  usernameChanged,TResult Function( _EmailChanged value)?  emailChanged,TResult Function( _PasswordChanged value)?  passwordChanged,TResult Function( _BioChanged value)?  bioChanged,TResult Function( _ImageChanged value)?  imageChanged,TResult Function( _Submitted value)?  submitted,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _UsernameChanged() when usernameChanged != null:
return usernameChanged(_that);case _EmailChanged() when emailChanged != null:
return emailChanged(_that);case _PasswordChanged() when passwordChanged != null:
return passwordChanged(_that);case _BioChanged() when bioChanged != null:
return bioChanged(_that);case _ImageChanged() when imageChanged != null:
return imageChanged(_that);case _Submitted() when submitted != null:
return submitted(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Started value)  started,required TResult Function( _UsernameChanged value)  usernameChanged,required TResult Function( _EmailChanged value)  emailChanged,required TResult Function( _PasswordChanged value)  passwordChanged,required TResult Function( _BioChanged value)  bioChanged,required TResult Function( _ImageChanged value)  imageChanged,required TResult Function( _Submitted value)  submitted,}){
final _that = this;
switch (_that) {
case _Started():
return started(_that);case _UsernameChanged():
return usernameChanged(_that);case _EmailChanged():
return emailChanged(_that);case _PasswordChanged():
return passwordChanged(_that);case _BioChanged():
return bioChanged(_that);case _ImageChanged():
return imageChanged(_that);case _Submitted():
return submitted(_that);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Started value)?  started,TResult? Function( _UsernameChanged value)?  usernameChanged,TResult? Function( _EmailChanged value)?  emailChanged,TResult? Function( _PasswordChanged value)?  passwordChanged,TResult? Function( _BioChanged value)?  bioChanged,TResult? Function( _ImageChanged value)?  imageChanged,TResult? Function( _Submitted value)?  submitted,}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _UsernameChanged() when usernameChanged != null:
return usernameChanged(_that);case _EmailChanged() when emailChanged != null:
return emailChanged(_that);case _PasswordChanged() when passwordChanged != null:
return passwordChanged(_that);case _BioChanged() when bioChanged != null:
return bioChanged(_that);case _ImageChanged() when imageChanged != null:
return imageChanged(_that);case _Submitted() when submitted != null:
return submitted(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  started,TResult Function( String value)?  usernameChanged,TResult Function( String value)?  emailChanged,TResult Function( String value)?  passwordChanged,TResult Function( String value)?  bioChanged,TResult Function( XFile? image)?  imageChanged,TResult Function( String username,  String email,  String bio,  String password)?  submitted,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _UsernameChanged() when usernameChanged != null:
return usernameChanged(_that.value);case _EmailChanged() when emailChanged != null:
return emailChanged(_that.value);case _PasswordChanged() when passwordChanged != null:
return passwordChanged(_that.value);case _BioChanged() when bioChanged != null:
return bioChanged(_that.value);case _ImageChanged() when imageChanged != null:
return imageChanged(_that.image);case _Submitted() when submitted != null:
return submitted(_that.username,_that.email,_that.bio,_that.password);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  started,required TResult Function( String value)  usernameChanged,required TResult Function( String value)  emailChanged,required TResult Function( String value)  passwordChanged,required TResult Function( String value)  bioChanged,required TResult Function( XFile? image)  imageChanged,required TResult Function( String username,  String email,  String bio,  String password)  submitted,}) {final _that = this;
switch (_that) {
case _Started():
return started();case _UsernameChanged():
return usernameChanged(_that.value);case _EmailChanged():
return emailChanged(_that.value);case _PasswordChanged():
return passwordChanged(_that.value);case _BioChanged():
return bioChanged(_that.value);case _ImageChanged():
return imageChanged(_that.image);case _Submitted():
return submitted(_that.username,_that.email,_that.bio,_that.password);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  started,TResult? Function( String value)?  usernameChanged,TResult? Function( String value)?  emailChanged,TResult? Function( String value)?  passwordChanged,TResult? Function( String value)?  bioChanged,TResult? Function( XFile? image)?  imageChanged,TResult? Function( String username,  String email,  String bio,  String password)?  submitted,}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _UsernameChanged() when usernameChanged != null:
return usernameChanged(_that.value);case _EmailChanged() when emailChanged != null:
return emailChanged(_that.value);case _PasswordChanged() when passwordChanged != null:
return passwordChanged(_that.value);case _BioChanged() when bioChanged != null:
return bioChanged(_that.value);case _ImageChanged() when imageChanged != null:
return imageChanged(_that.image);case _Submitted() when submitted != null:
return submitted(_that.username,_that.email,_that.bio,_that.password);case _:
  return null;

}
}

}

/// @nodoc


class _Started implements RegisterEvent {
  const _Started();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Started);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RegisterEvent.started()';
}


}




/// @nodoc


class _UsernameChanged implements RegisterEvent {
  const _UsernameChanged(this.value);
  

 final  String value;

/// Create a copy of RegisterEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UsernameChangedCopyWith<_UsernameChanged> get copyWith => __$UsernameChangedCopyWithImpl<_UsernameChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UsernameChanged&&(identical(other.value, value) || other.value == value));
}


@override
int get hashCode => Object.hash(runtimeType,value);

@override
String toString() {
  return 'RegisterEvent.usernameChanged(value: $value)';
}


}

/// @nodoc
abstract mixin class _$UsernameChangedCopyWith<$Res> implements $RegisterEventCopyWith<$Res> {
  factory _$UsernameChangedCopyWith(_UsernameChanged value, $Res Function(_UsernameChanged) _then) = __$UsernameChangedCopyWithImpl;
@useResult
$Res call({
 String value
});




}
/// @nodoc
class __$UsernameChangedCopyWithImpl<$Res>
    implements _$UsernameChangedCopyWith<$Res> {
  __$UsernameChangedCopyWithImpl(this._self, this._then);

  final _UsernameChanged _self;
  final $Res Function(_UsernameChanged) _then;

/// Create a copy of RegisterEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? value = null,}) {
  return _then(_UsernameChanged(
null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _EmailChanged implements RegisterEvent {
  const _EmailChanged(this.value);
  

 final  String value;

/// Create a copy of RegisterEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EmailChangedCopyWith<_EmailChanged> get copyWith => __$EmailChangedCopyWithImpl<_EmailChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EmailChanged&&(identical(other.value, value) || other.value == value));
}


@override
int get hashCode => Object.hash(runtimeType,value);

@override
String toString() {
  return 'RegisterEvent.emailChanged(value: $value)';
}


}

/// @nodoc
abstract mixin class _$EmailChangedCopyWith<$Res> implements $RegisterEventCopyWith<$Res> {
  factory _$EmailChangedCopyWith(_EmailChanged value, $Res Function(_EmailChanged) _then) = __$EmailChangedCopyWithImpl;
@useResult
$Res call({
 String value
});




}
/// @nodoc
class __$EmailChangedCopyWithImpl<$Res>
    implements _$EmailChangedCopyWith<$Res> {
  __$EmailChangedCopyWithImpl(this._self, this._then);

  final _EmailChanged _self;
  final $Res Function(_EmailChanged) _then;

/// Create a copy of RegisterEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? value = null,}) {
  return _then(_EmailChanged(
null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _PasswordChanged implements RegisterEvent {
  const _PasswordChanged(this.value);
  

 final  String value;

/// Create a copy of RegisterEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PasswordChangedCopyWith<_PasswordChanged> get copyWith => __$PasswordChangedCopyWithImpl<_PasswordChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PasswordChanged&&(identical(other.value, value) || other.value == value));
}


@override
int get hashCode => Object.hash(runtimeType,value);

@override
String toString() {
  return 'RegisterEvent.passwordChanged(value: $value)';
}


}

/// @nodoc
abstract mixin class _$PasswordChangedCopyWith<$Res> implements $RegisterEventCopyWith<$Res> {
  factory _$PasswordChangedCopyWith(_PasswordChanged value, $Res Function(_PasswordChanged) _then) = __$PasswordChangedCopyWithImpl;
@useResult
$Res call({
 String value
});




}
/// @nodoc
class __$PasswordChangedCopyWithImpl<$Res>
    implements _$PasswordChangedCopyWith<$Res> {
  __$PasswordChangedCopyWithImpl(this._self, this._then);

  final _PasswordChanged _self;
  final $Res Function(_PasswordChanged) _then;

/// Create a copy of RegisterEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? value = null,}) {
  return _then(_PasswordChanged(
null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _BioChanged implements RegisterEvent {
  const _BioChanged(this.value);
  

 final  String value;

/// Create a copy of RegisterEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BioChangedCopyWith<_BioChanged> get copyWith => __$BioChangedCopyWithImpl<_BioChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BioChanged&&(identical(other.value, value) || other.value == value));
}


@override
int get hashCode => Object.hash(runtimeType,value);

@override
String toString() {
  return 'RegisterEvent.bioChanged(value: $value)';
}


}

/// @nodoc
abstract mixin class _$BioChangedCopyWith<$Res> implements $RegisterEventCopyWith<$Res> {
  factory _$BioChangedCopyWith(_BioChanged value, $Res Function(_BioChanged) _then) = __$BioChangedCopyWithImpl;
@useResult
$Res call({
 String value
});




}
/// @nodoc
class __$BioChangedCopyWithImpl<$Res>
    implements _$BioChangedCopyWith<$Res> {
  __$BioChangedCopyWithImpl(this._self, this._then);

  final _BioChanged _self;
  final $Res Function(_BioChanged) _then;

/// Create a copy of RegisterEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? value = null,}) {
  return _then(_BioChanged(
null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _ImageChanged implements RegisterEvent {
  const _ImageChanged(this.image);
  

 final  XFile? image;

/// Create a copy of RegisterEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ImageChangedCopyWith<_ImageChanged> get copyWith => __$ImageChangedCopyWithImpl<_ImageChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ImageChanged&&(identical(other.image, image) || other.image == image));
}


@override
int get hashCode => Object.hash(runtimeType,image);

@override
String toString() {
  return 'RegisterEvent.imageChanged(image: $image)';
}


}

/// @nodoc
abstract mixin class _$ImageChangedCopyWith<$Res> implements $RegisterEventCopyWith<$Res> {
  factory _$ImageChangedCopyWith(_ImageChanged value, $Res Function(_ImageChanged) _then) = __$ImageChangedCopyWithImpl;
@useResult
$Res call({
 XFile? image
});




}
/// @nodoc
class __$ImageChangedCopyWithImpl<$Res>
    implements _$ImageChangedCopyWith<$Res> {
  __$ImageChangedCopyWithImpl(this._self, this._then);

  final _ImageChanged _self;
  final $Res Function(_ImageChanged) _then;

/// Create a copy of RegisterEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? image = freezed,}) {
  return _then(_ImageChanged(
freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as XFile?,
  ));
}


}

/// @nodoc


class _Submitted implements RegisterEvent {
  const _Submitted({required this.username, required this.email, required this.bio, required this.password});
  

 final  String username;
 final  String email;
 final  String bio;
 final  String password;

/// Create a copy of RegisterEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SubmittedCopyWith<_Submitted> get copyWith => __$SubmittedCopyWithImpl<_Submitted>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Submitted&&(identical(other.username, username) || other.username == username)&&(identical(other.email, email) || other.email == email)&&(identical(other.bio, bio) || other.bio == bio)&&(identical(other.password, password) || other.password == password));
}


@override
int get hashCode => Object.hash(runtimeType,username,email,bio,password);

@override
String toString() {
  return 'RegisterEvent.submitted(username: $username, email: $email, bio: $bio, password: $password)';
}


}

/// @nodoc
abstract mixin class _$SubmittedCopyWith<$Res> implements $RegisterEventCopyWith<$Res> {
  factory _$SubmittedCopyWith(_Submitted value, $Res Function(_Submitted) _then) = __$SubmittedCopyWithImpl;
@useResult
$Res call({
 String username, String email, String bio, String password
});




}
/// @nodoc
class __$SubmittedCopyWithImpl<$Res>
    implements _$SubmittedCopyWith<$Res> {
  __$SubmittedCopyWithImpl(this._self, this._then);

  final _Submitted _self;
  final $Res Function(_Submitted) _then;

/// Create a copy of RegisterEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? username = null,Object? email = null,Object? bio = null,Object? password = null,}) {
  return _then(_Submitted(
username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,bio: null == bio ? _self.bio : bio // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$RegisterState {

 UsernameInput get username; EmailInput get email; PasswordInput get password; BioInput get bio; ProfilePhoto get photo; GlobalKey<FormState> get formKey; FormzSubmissionStatus get status; RegistrationStatusEntity? get regStatus;
/// Create a copy of RegisterState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RegisterStateCopyWith<RegisterState> get copyWith => _$RegisterStateCopyWithImpl<RegisterState>(this as RegisterState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RegisterState&&(identical(other.username, username) || other.username == username)&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password)&&(identical(other.bio, bio) || other.bio == bio)&&(identical(other.photo, photo) || other.photo == photo)&&(identical(other.formKey, formKey) || other.formKey == formKey)&&(identical(other.status, status) || other.status == status)&&(identical(other.regStatus, regStatus) || other.regStatus == regStatus));
}


@override
int get hashCode => Object.hash(runtimeType,username,email,password,bio,photo,formKey,status,regStatus);

@override
String toString() {
  return 'RegisterState(username: $username, email: $email, password: $password, bio: $bio, photo: $photo, formKey: $formKey, status: $status, regStatus: $regStatus)';
}


}

/// @nodoc
abstract mixin class $RegisterStateCopyWith<$Res>  {
  factory $RegisterStateCopyWith(RegisterState value, $Res Function(RegisterState) _then) = _$RegisterStateCopyWithImpl;
@useResult
$Res call({
 UsernameInput username, EmailInput email, PasswordInput password, BioInput bio, ProfilePhoto photo, GlobalKey<FormState> formKey, FormzSubmissionStatus status, RegistrationStatusEntity? regStatus
});


$RegistrationStatusEntityCopyWith<$Res>? get regStatus;

}
/// @nodoc
class _$RegisterStateCopyWithImpl<$Res>
    implements $RegisterStateCopyWith<$Res> {
  _$RegisterStateCopyWithImpl(this._self, this._then);

  final RegisterState _self;
  final $Res Function(RegisterState) _then;

/// Create a copy of RegisterState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? username = null,Object? email = null,Object? password = null,Object? bio = null,Object? photo = null,Object? formKey = null,Object? status = null,Object? regStatus = freezed,}) {
  return _then(_self.copyWith(
username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as UsernameInput,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as EmailInput,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as PasswordInput,bio: null == bio ? _self.bio : bio // ignore: cast_nullable_to_non_nullable
as BioInput,photo: null == photo ? _self.photo : photo // ignore: cast_nullable_to_non_nullable
as ProfilePhoto,formKey: null == formKey ? _self.formKey : formKey // ignore: cast_nullable_to_non_nullable
as GlobalKey<FormState>,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as FormzSubmissionStatus,regStatus: freezed == regStatus ? _self.regStatus : regStatus // ignore: cast_nullable_to_non_nullable
as RegistrationStatusEntity?,
  ));
}
/// Create a copy of RegisterState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RegistrationStatusEntityCopyWith<$Res>? get regStatus {
    if (_self.regStatus == null) {
    return null;
  }

  return $RegistrationStatusEntityCopyWith<$Res>(_self.regStatus!, (value) {
    return _then(_self.copyWith(regStatus: value));
  });
}
}


/// Adds pattern-matching-related methods to [RegisterState].
extension RegisterStatePatterns on RegisterState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RegisterState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RegisterState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RegisterState value)  $default,){
final _that = this;
switch (_that) {
case _RegisterState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RegisterState value)?  $default,){
final _that = this;
switch (_that) {
case _RegisterState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( UsernameInput username,  EmailInput email,  PasswordInput password,  BioInput bio,  ProfilePhoto photo,  GlobalKey<FormState> formKey,  FormzSubmissionStatus status,  RegistrationStatusEntity? regStatus)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RegisterState() when $default != null:
return $default(_that.username,_that.email,_that.password,_that.bio,_that.photo,_that.formKey,_that.status,_that.regStatus);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( UsernameInput username,  EmailInput email,  PasswordInput password,  BioInput bio,  ProfilePhoto photo,  GlobalKey<FormState> formKey,  FormzSubmissionStatus status,  RegistrationStatusEntity? regStatus)  $default,) {final _that = this;
switch (_that) {
case _RegisterState():
return $default(_that.username,_that.email,_that.password,_that.bio,_that.photo,_that.formKey,_that.status,_that.regStatus);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( UsernameInput username,  EmailInput email,  PasswordInput password,  BioInput bio,  ProfilePhoto photo,  GlobalKey<FormState> formKey,  FormzSubmissionStatus status,  RegistrationStatusEntity? regStatus)?  $default,) {final _that = this;
switch (_that) {
case _RegisterState() when $default != null:
return $default(_that.username,_that.email,_that.password,_that.bio,_that.photo,_that.formKey,_that.status,_that.regStatus);case _:
  return null;

}
}

}

/// @nodoc


class _RegisterState extends RegisterState {
  const _RegisterState({this.username = const UsernameInput.pure(), this.email = const EmailInput.pure(), this.password = const PasswordInput.pure(), this.bio = const BioInput.pure(), this.photo = const ProfilePhoto.pure(), required this.formKey, this.status = FormzSubmissionStatus.initial, this.regStatus}): super._();
  

@override@JsonKey() final  UsernameInput username;
@override@JsonKey() final  EmailInput email;
@override@JsonKey() final  PasswordInput password;
@override@JsonKey() final  BioInput bio;
@override@JsonKey() final  ProfilePhoto photo;
@override final  GlobalKey<FormState> formKey;
@override@JsonKey() final  FormzSubmissionStatus status;
@override final  RegistrationStatusEntity? regStatus;

/// Create a copy of RegisterState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RegisterStateCopyWith<_RegisterState> get copyWith => __$RegisterStateCopyWithImpl<_RegisterState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RegisterState&&(identical(other.username, username) || other.username == username)&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password)&&(identical(other.bio, bio) || other.bio == bio)&&(identical(other.photo, photo) || other.photo == photo)&&(identical(other.formKey, formKey) || other.formKey == formKey)&&(identical(other.status, status) || other.status == status)&&(identical(other.regStatus, regStatus) || other.regStatus == regStatus));
}


@override
int get hashCode => Object.hash(runtimeType,username,email,password,bio,photo,formKey,status,regStatus);

@override
String toString() {
  return 'RegisterState(username: $username, email: $email, password: $password, bio: $bio, photo: $photo, formKey: $formKey, status: $status, regStatus: $regStatus)';
}


}

/// @nodoc
abstract mixin class _$RegisterStateCopyWith<$Res> implements $RegisterStateCopyWith<$Res> {
  factory _$RegisterStateCopyWith(_RegisterState value, $Res Function(_RegisterState) _then) = __$RegisterStateCopyWithImpl;
@override @useResult
$Res call({
 UsernameInput username, EmailInput email, PasswordInput password, BioInput bio, ProfilePhoto photo, GlobalKey<FormState> formKey, FormzSubmissionStatus status, RegistrationStatusEntity? regStatus
});


@override $RegistrationStatusEntityCopyWith<$Res>? get regStatus;

}
/// @nodoc
class __$RegisterStateCopyWithImpl<$Res>
    implements _$RegisterStateCopyWith<$Res> {
  __$RegisterStateCopyWithImpl(this._self, this._then);

  final _RegisterState _self;
  final $Res Function(_RegisterState) _then;

/// Create a copy of RegisterState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? username = null,Object? email = null,Object? password = null,Object? bio = null,Object? photo = null,Object? formKey = null,Object? status = null,Object? regStatus = freezed,}) {
  return _then(_RegisterState(
username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as UsernameInput,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as EmailInput,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as PasswordInput,bio: null == bio ? _self.bio : bio // ignore: cast_nullable_to_non_nullable
as BioInput,photo: null == photo ? _self.photo : photo // ignore: cast_nullable_to_non_nullable
as ProfilePhoto,formKey: null == formKey ? _self.formKey : formKey // ignore: cast_nullable_to_non_nullable
as GlobalKey<FormState>,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as FormzSubmissionStatus,regStatus: freezed == regStatus ? _self.regStatus : regStatus // ignore: cast_nullable_to_non_nullable
as RegistrationStatusEntity?,
  ));
}

/// Create a copy of RegisterState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RegistrationStatusEntityCopyWith<$Res>? get regStatus {
    if (_self.regStatus == null) {
    return null;
  }

  return $RegistrationStatusEntityCopyWith<$Res>(_self.regStatus!, (value) {
    return _then(_self.copyWith(regStatus: value));
  });
}
}

// dart format on
