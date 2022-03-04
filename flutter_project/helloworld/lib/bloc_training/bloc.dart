import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:helloworld/bloc_training/event.dart';

import 'state.dart';

class IconBloc extends Bloc<IconEvent, IconState> {
  IconBloc() : super(IconInitial(0));

  Stream<IconState> mapEventToState(
    IconEvent event,
  ) async* {
    if (event is SunnyEvent) {
      yield IconInitial(state.icon + 1);
    } else if (event is RainyEvent) {
      yield IconInitial(state.icon - 1);
    }
  }
}
