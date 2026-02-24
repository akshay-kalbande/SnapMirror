part of 'search_bloc.dart';

@freezed
sealed class SearchState with _$SearchState {
  const factory SearchState({
    required final List<UserEntity> users,
    @Default(false) bool isLoading,
    final ScreenMessage? message,
  }) = _SearchState;
}
