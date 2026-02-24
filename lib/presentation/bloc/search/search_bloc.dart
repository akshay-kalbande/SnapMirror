import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stream_transform/stream_transform.dart';

import '../../../domain/entities/user_entity.dart';
import '../../../domain/usecases/search_user_usecase.dart';
import '../../../common/messages/screen_message.dart';

part 'search_event.dart';
part 'search_state.dart';
part 'search_bloc.freezed.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final SearchUserUsecase searchUserUsecase;
  SearchBloc(this.searchUserUsecase) : super(const SearchState(users: [])) {
    on<_QueryChanged>(
      _onQueryChanged,
      transformer: (events, mapper) =>
          events.debounce(const Duration(milliseconds: 300)).switchMap(mapper),
    );
    on<_Cleared>(_onCleared);
  }
  FutureOr<void> _onQueryChanged(
    _QueryChanged event,
    Emitter<SearchState> emit,
  ) async {
    if (event.text.length < 3) return;
    emit(state.copyWith(isLoading: true));
    (await searchUserUsecase(event.text)).fold(
      (l) {
        print('Search Failure: ${l.message}');
        return emit(
          state.copyWith(
            isLoading: false,
            message: ScreenMessage(
              content: l.message,
              timestamp: DateTime.now(),
              isError: true,
            ),
          ),
        );
      },
      (r) {
        print('Search Success: ${r.length}');
        return emit(state.copyWith(isLoading: false, message: null, users: r));
      },
    );
  }

  FutureOr<void> _onCleared(_Cleared event, Emitter<SearchState> emit) {
    if (state.users.isNotEmpty) {
      emit(state.copyWith(users: []));
    }
  }
}
