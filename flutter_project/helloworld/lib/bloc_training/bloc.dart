import 'package:bloc/bloc.dart';
import 'package:helloworld/bloc_training/event.dart';
import 'package:helloworld/bloc_training/state.dart';

class IconBloc extends Bloc<TapIconEvent, AnswerState> {
  IconBloc() : super(AnswerInit()) {
    on<TapSunnyEvent>(((event, emit) => emit(AnswerChange("Sunny"))));
    on<TapCloudEvent>(((event, emit) => emit(AnswerChange("Cloud"))));
  }
}
