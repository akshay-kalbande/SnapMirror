import 'package:freezed_annotation/freezed_annotation.dart';

import '../domain/entities/page_result_entity.dart';

part 'page_result.freezed.dart';
part 'page_result.g.dart';

@Freezed(genericArgumentFactories: true, fromJson: true, toJson: true)
sealed class PageResult<T> with _$PageResult<T> {
  const PageResult._();

  const factory PageResult({
    required List<T> items,
    @JsonKey(includeFromJson: false, includeToJson: false)
    @Default(null)
    Object? nextPageToken,
    int? totalItemCount,
    @JsonKey(includeFromJson: false, includeToJson: false)
    @Default(false)
    bool isLastPage,
    @JsonKey(includeFromJson: false, includeToJson: false)
    @Default(false)
    bool fetchingMore,
  }) = _PageResult<T>;

  factory PageResult.fromJson(
    Map<String, dynamic> json,
    T Function(Object? json) fromJsonT,
  ) => _$PageResultFromJson(json, fromJsonT);

  factory PageResult.fromEntity(PageResultEntity<T> entity) => PageResult(
    items: entity.items,
    totalItemCount: entity.totalItemCount,
    nextPageToken: entity.nextPageToken,
    isLastPage: entity.isLastPage,
  );
}
