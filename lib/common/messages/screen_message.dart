import 'package:freezed_annotation/freezed_annotation.dart';

part 'screen_message.freezed.dart';

@freezed
sealed class ScreenMessage with _$ScreenMessage {
  const ScreenMessage._();
  const factory ScreenMessage({
    required String content,
    required DateTime timestamp,
    required bool isError,
  }) = _ScreenMessage;
}
