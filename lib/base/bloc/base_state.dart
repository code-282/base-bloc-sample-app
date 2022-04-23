part of 'base_bloc.dart';

abstract class BaseState extends Equatable {
  const BaseState();
}

class BaseInitial extends BaseState {
  @override
  List<Object> get props => [];
}

class PreprocessedBaseState extends BaseState {
  @override
  List<Object> get props => [];
}

class PostprocessedBaseState extends BaseState {
  @override
  List<Object> get props => [];
}
