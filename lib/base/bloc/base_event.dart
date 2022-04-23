part of 'base_bloc.dart';

abstract class BaseEvent extends Equatable {
  const BaseEvent();
}


class PreprocessingBaseEvent extends BaseEvent{

  @override
  List<Object?> get props => [];

}

class PostprocessingBaseEvent extends BaseEvent{

  @override
  List<Object?> get props => [];

}