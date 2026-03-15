// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_preview_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ChatPreviewModel {

@JsonKey(name: 'id') String get id;@JsonKey(name: 'lastMessage') String get lastMessage;@TimeStampConverter()@JsonKey(name: 'lastMessageTimestamp') DateTime get lastMessageTime;@JsonKey(name: 'lastSenderId') String get lastSenderId;@JsonKey(name: 'participants') List<String> get participants;@JsonKey(name: 'unreadCount') Map<String, int> get unreadCount;
/// Create a copy of ChatPreviewModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChatPreviewModelCopyWith<ChatPreviewModel> get copyWith => _$ChatPreviewModelCopyWithImpl<ChatPreviewModel>(this as ChatPreviewModel, _$identity);

  /// Serializes this ChatPreviewModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatPreviewModel&&(identical(other.id, id) || other.id == id)&&(identical(other.lastMessage, lastMessage) || other.lastMessage == lastMessage)&&(identical(other.lastMessageTime, lastMessageTime) || other.lastMessageTime == lastMessageTime)&&(identical(other.lastSenderId, lastSenderId) || other.lastSenderId == lastSenderId)&&const DeepCollectionEquality().equals(other.participants, participants)&&const DeepCollectionEquality().equals(other.unreadCount, unreadCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,lastMessage,lastMessageTime,lastSenderId,const DeepCollectionEquality().hash(participants),const DeepCollectionEquality().hash(unreadCount));

@override
String toString() {
  return 'ChatPreviewModel(id: $id, lastMessage: $lastMessage, lastMessageTime: $lastMessageTime, lastSenderId: $lastSenderId, participants: $participants, unreadCount: $unreadCount)';
}


}

/// @nodoc
abstract mixin class $ChatPreviewModelCopyWith<$Res>  {
  factory $ChatPreviewModelCopyWith(ChatPreviewModel value, $Res Function(ChatPreviewModel) _then) = _$ChatPreviewModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') String id,@JsonKey(name: 'lastMessage') String lastMessage,@TimeStampConverter()@JsonKey(name: 'lastMessageTimestamp') DateTime lastMessageTime,@JsonKey(name: 'lastSenderId') String lastSenderId,@JsonKey(name: 'participants') List<String> participants,@JsonKey(name: 'unreadCount') Map<String, int> unreadCount
});




}
/// @nodoc
class _$ChatPreviewModelCopyWithImpl<$Res>
    implements $ChatPreviewModelCopyWith<$Res> {
  _$ChatPreviewModelCopyWithImpl(this._self, this._then);

  final ChatPreviewModel _self;
  final $Res Function(ChatPreviewModel) _then;

/// Create a copy of ChatPreviewModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? lastMessage = null,Object? lastMessageTime = null,Object? lastSenderId = null,Object? participants = null,Object? unreadCount = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,lastMessage: null == lastMessage ? _self.lastMessage : lastMessage // ignore: cast_nullable_to_non_nullable
as String,lastMessageTime: null == lastMessageTime ? _self.lastMessageTime : lastMessageTime // ignore: cast_nullable_to_non_nullable
as DateTime,lastSenderId: null == lastSenderId ? _self.lastSenderId : lastSenderId // ignore: cast_nullable_to_non_nullable
as String,participants: null == participants ? _self.participants : participants // ignore: cast_nullable_to_non_nullable
as List<String>,unreadCount: null == unreadCount ? _self.unreadCount : unreadCount // ignore: cast_nullable_to_non_nullable
as Map<String, int>,
  ));
}

}


/// Adds pattern-matching-related methods to [ChatPreviewModel].
extension ChatPreviewModelPatterns on ChatPreviewModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChatPreviewModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChatPreviewModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChatPreviewModel value)  $default,){
final _that = this;
switch (_that) {
case _ChatPreviewModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChatPreviewModel value)?  $default,){
final _that = this;
switch (_that) {
case _ChatPreviewModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'lastMessage')  String lastMessage, @TimeStampConverter()@JsonKey(name: 'lastMessageTimestamp')  DateTime lastMessageTime, @JsonKey(name: 'lastSenderId')  String lastSenderId, @JsonKey(name: 'participants')  List<String> participants, @JsonKey(name: 'unreadCount')  Map<String, int> unreadCount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChatPreviewModel() when $default != null:
return $default(_that.id,_that.lastMessage,_that.lastMessageTime,_that.lastSenderId,_that.participants,_that.unreadCount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'lastMessage')  String lastMessage, @TimeStampConverter()@JsonKey(name: 'lastMessageTimestamp')  DateTime lastMessageTime, @JsonKey(name: 'lastSenderId')  String lastSenderId, @JsonKey(name: 'participants')  List<String> participants, @JsonKey(name: 'unreadCount')  Map<String, int> unreadCount)  $default,) {final _that = this;
switch (_that) {
case _ChatPreviewModel():
return $default(_that.id,_that.lastMessage,_that.lastMessageTime,_that.lastSenderId,_that.participants,_that.unreadCount);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'lastMessage')  String lastMessage, @TimeStampConverter()@JsonKey(name: 'lastMessageTimestamp')  DateTime lastMessageTime, @JsonKey(name: 'lastSenderId')  String lastSenderId, @JsonKey(name: 'participants')  List<String> participants, @JsonKey(name: 'unreadCount')  Map<String, int> unreadCount)?  $default,) {final _that = this;
switch (_that) {
case _ChatPreviewModel() when $default != null:
return $default(_that.id,_that.lastMessage,_that.lastMessageTime,_that.lastSenderId,_that.participants,_that.unreadCount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ChatPreviewModel extends ChatPreviewModel {
  const _ChatPreviewModel({@JsonKey(name: 'id') required this.id, @JsonKey(name: 'lastMessage') required this.lastMessage, @TimeStampConverter()@JsonKey(name: 'lastMessageTimestamp') required this.lastMessageTime, @JsonKey(name: 'lastSenderId') required this.lastSenderId, @JsonKey(name: 'participants') required final  List<String> participants, @JsonKey(name: 'unreadCount') required final  Map<String, int> unreadCount}): _participants = participants,_unreadCount = unreadCount,super._();
  factory _ChatPreviewModel.fromJson(Map<String, dynamic> json) => _$ChatPreviewModelFromJson(json);

@override@JsonKey(name: 'id') final  String id;
@override@JsonKey(name: 'lastMessage') final  String lastMessage;
@override@TimeStampConverter()@JsonKey(name: 'lastMessageTimestamp') final  DateTime lastMessageTime;
@override@JsonKey(name: 'lastSenderId') final  String lastSenderId;
 final  List<String> _participants;
@override@JsonKey(name: 'participants') List<String> get participants {
  if (_participants is EqualUnmodifiableListView) return _participants;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_participants);
}

 final  Map<String, int> _unreadCount;
@override@JsonKey(name: 'unreadCount') Map<String, int> get unreadCount {
  if (_unreadCount is EqualUnmodifiableMapView) return _unreadCount;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_unreadCount);
}


/// Create a copy of ChatPreviewModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChatPreviewModelCopyWith<_ChatPreviewModel> get copyWith => __$ChatPreviewModelCopyWithImpl<_ChatPreviewModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ChatPreviewModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChatPreviewModel&&(identical(other.id, id) || other.id == id)&&(identical(other.lastMessage, lastMessage) || other.lastMessage == lastMessage)&&(identical(other.lastMessageTime, lastMessageTime) || other.lastMessageTime == lastMessageTime)&&(identical(other.lastSenderId, lastSenderId) || other.lastSenderId == lastSenderId)&&const DeepCollectionEquality().equals(other._participants, _participants)&&const DeepCollectionEquality().equals(other._unreadCount, _unreadCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,lastMessage,lastMessageTime,lastSenderId,const DeepCollectionEquality().hash(_participants),const DeepCollectionEquality().hash(_unreadCount));

@override
String toString() {
  return 'ChatPreviewModel(id: $id, lastMessage: $lastMessage, lastMessageTime: $lastMessageTime, lastSenderId: $lastSenderId, participants: $participants, unreadCount: $unreadCount)';
}


}

/// @nodoc
abstract mixin class _$ChatPreviewModelCopyWith<$Res> implements $ChatPreviewModelCopyWith<$Res> {
  factory _$ChatPreviewModelCopyWith(_ChatPreviewModel value, $Res Function(_ChatPreviewModel) _then) = __$ChatPreviewModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') String id,@JsonKey(name: 'lastMessage') String lastMessage,@TimeStampConverter()@JsonKey(name: 'lastMessageTimestamp') DateTime lastMessageTime,@JsonKey(name: 'lastSenderId') String lastSenderId,@JsonKey(name: 'participants') List<String> participants,@JsonKey(name: 'unreadCount') Map<String, int> unreadCount
});




}
/// @nodoc
class __$ChatPreviewModelCopyWithImpl<$Res>
    implements _$ChatPreviewModelCopyWith<$Res> {
  __$ChatPreviewModelCopyWithImpl(this._self, this._then);

  final _ChatPreviewModel _self;
  final $Res Function(_ChatPreviewModel) _then;

/// Create a copy of ChatPreviewModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? lastMessage = null,Object? lastMessageTime = null,Object? lastSenderId = null,Object? participants = null,Object? unreadCount = null,}) {
  return _then(_ChatPreviewModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,lastMessage: null == lastMessage ? _self.lastMessage : lastMessage // ignore: cast_nullable_to_non_nullable
as String,lastMessageTime: null == lastMessageTime ? _self.lastMessageTime : lastMessageTime // ignore: cast_nullable_to_non_nullable
as DateTime,lastSenderId: null == lastSenderId ? _self.lastSenderId : lastSenderId // ignore: cast_nullable_to_non_nullable
as String,participants: null == participants ? _self._participants : participants // ignore: cast_nullable_to_non_nullable
as List<String>,unreadCount: null == unreadCount ? _self._unreadCount : unreadCount // ignore: cast_nullable_to_non_nullable
as Map<String, int>,
  ));
}


}

// dart format on
