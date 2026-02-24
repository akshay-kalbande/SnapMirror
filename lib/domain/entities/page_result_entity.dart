import 'package:freezed_annotation/freezed_annotation.dart';

part 'page_result_entity.freezed.dart';

@freezed
sealed class PageResultEntity<T> with _$PageResultEntity<T> {
  const PageResultEntity._();
  const factory PageResultEntity({
    required List<T> items,
    required Object? nextPageToken,
    int? totalItemCount,
    @Default(false) bool isLastPage,
  }) = _PageResultEntity<T>;
}
