import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'base_event.dart';
part 'base_state.dart';

class BaseBloc<Event extends BaseEvent, State extends BaseState> extends Bloc<BaseEvent, BaseState> {
  BaseBloc() : super(BaseInitial()) {
    on<BaseEvent>((event, emit) {
    });

    on<PreprocessingBaseEvent>((event, emit) {
      emit(PreprocessedBaseState());
    });

    on<PostprocessingBaseEvent>((event, emit) {
      emit(PostprocessedBaseState());
    });
  }

  void handleProcessing(Function() codeBlock){
    add(PreprocessingBaseEvent());
    codeBlock();
    add(PostprocessingBaseEvent());
  }
}
