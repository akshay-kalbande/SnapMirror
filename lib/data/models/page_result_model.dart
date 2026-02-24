import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/page_result_entity.dart';

part 'page_result_model.freezed.dart';
part 'page_result_model.g.dart';

@Freezed(genericArgumentFactories: true)
sealed class PageResultModel<T> with _$PageResultModel<T> {
  const PageResultModel._();

  const factory PageResultModel({
    required List<T> items,
    @Default(null) Object? nextPageToken,
    int? totalItemCount,
    @Default(false) bool isLastPage,
  }) = _PageResultModel<T>;

  factory PageResultModel.fromJson(
    Map<String, dynamic> json,
    T Function(Object? json) fromJsonT,
  ) => _$PageResultModelFromJson(json, fromJsonT);

  PageResultEntity<T1> toEntity<T1>({required T1 Function(T) itemMapper}) =>
      PageResultEntity<T1>(
        items: items.map(itemMapper).toList(),
        nextPageToken: nextPageToken,
        totalItemCount: totalItemCount,
        isLastPage: isLastPage,
      );
}
