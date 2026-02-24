import 'package:freezed_annotation/freezed_annotation.dart';

import '../page_result.dart';

class PageResultStringConverter
    implements JsonConverter<PageResult<String>, Map<String, dynamic>> {
  const PageResultStringConverter();

  @override
  PageResult<String> fromJson(Map<String, dynamic> json) {
    return PageResult<String>.fromJson(json, (value) => value as String);
  }

  @override
  Map<String, dynamic> toJson(PageResult<String> object) {
    return object.toJson((value) => value);
  }
}
