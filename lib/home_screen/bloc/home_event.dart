part of 'home_bloc.dart';

abstract class HomeEvent extends BaseEvent {
  const HomeEvent();
}

class GetHomeContent extends HomeEvent {

  @override
  List<Object?> get props => [];

}