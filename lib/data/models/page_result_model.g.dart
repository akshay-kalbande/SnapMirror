// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'page_result_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PageResultModel<T> _$PageResultModelFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) => _PageResultModel<T>(
  items: (json['items'] as List<dynamic>).map(fromJsonT).toList(),
  nextPageToken: json['nextPageToken'] ?? null,
  totalItemCount: (json['totalItemCount'] as num?)?.toInt(),
  isLastPage: json['isLastPage'] as bool? ?? false,
);

Map<String, dynamic> _$PageResultModelToJson<T>(
  _PageResultModel<T> instance,
  Object? Function(T value) toJsonT,
) => <String, dynamic>{
  'items': instance.items.map(toJsonT).toList(),
  'nextPageToken': instance.nextPageToken,
  'totalItemCount': instance.totalItemCount,
  'isLastPage': instance.isLastPage,
};
