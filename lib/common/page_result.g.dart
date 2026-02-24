// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'page_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PageResult<T> _$PageResultFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) => _PageResult<T>(
  items: (json['items'] as List<dynamic>).map(fromJsonT).toList(),
  totalItemCount: (json['totalItemCount'] as num?)?.toInt(),
);

Map<String, dynamic> _$PageResultToJson<T>(
  _PageResult<T> instance,
  Object? Function(T value) toJsonT,
) => <String, dynamic>{
  'items': instance.items.map(toJsonT).toList(),
  'totalItemCount': instance.totalItemCount,
};
