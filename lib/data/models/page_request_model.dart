import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/page_request_entity.dart';

part 'page_request_model.freezed.dart';

@freezed
sealed class PageRequestModel with _$PageRequestModel {
  const PageRequestModel._();
  const factory PageRequestModel({
    Object? nextPageToken,
    @Default('timestamp') String sortBy,
    @Default(30) int pageSize,
    @Default(PageSortType.desc) PageSortType sortType,
    required Map<String, dynamic> isEqualToFieldMap,
  }) = _PageRequestModel;

  factory PageRequestModel.fromEntity(final PageRequestEntity entity) =>
      PageRequestModel(
        nextPageToken: entity.nextPageToken,
        pageSize: entity.pageSize,
        sortBy: entity.sortBy,
        sortType: entity.sortType,
        isEqualToFieldMap: entity.isEqualToFieldMap,
      );

  PageRequestEntity get entity => PageRequestEntity(
    sortType: sortType,
    sortBy: sortBy,
    pageSize: pageSize,
    nextPageToken: nextPageToken,
    isEqualToFieldMap: isEqualToFieldMap,
  );
}
