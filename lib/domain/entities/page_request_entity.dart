import 'package:freezed_annotation/freezed_annotation.dart';

part 'page_request_entity.freezed.dart';

enum PageSortType { asc, desc }

@freezed
sealed class PageRequestEntity with _$PageRequestEntity {
  const PageRequestEntity._();
  const factory PageRequestEntity({
    Object? nextPageToken,
    @Default('timestamp') String sortBy,
    @Default(30) int pageSize,
    @Default(PageSortType.desc) PageSortType sortType,
    required Map<String, dynamic> isEqualToFieldMap,
  }) = _PageRequestEntity;
}
