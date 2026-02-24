import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppBlocObserver extends BlocObserver {
  @override
  void onEvent(Bloc<dynamic, dynamic> bloc, Object? event) {
    super.onEvent(bloc, event);
    debugPrint('-- Bloc: ${bloc.runtimeType}, Event: ${event.runtimeType}');
  }

  @override
  void onChange(BlocBase<dynamic> bloc, Change<dynamic> change) {
    super.onChange(bloc, change);
    debugPrint(
      '-- Bloc: ${bloc.runtimeType}, State Change from ${change.currentState.runtimeType} to ${change.nextState.runtimeType}',
    );
  }

  @override
  void onTransition(
    Bloc<dynamic, dynamic> bloc,
    Transition<dynamic, dynamic> transition,
  ) {
    super.onTransition(bloc, transition);
    debugPrint(
      '-- Bloc ${bloc.runtimeType} on Event ${transition.event.runtimeType} changed from ${transition.currentState.runtimeType} to ${transition.nextState.runtimeType}',
    );
  }
}
