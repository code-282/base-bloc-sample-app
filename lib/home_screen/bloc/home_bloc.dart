import 'package:base_bloc_sample_app/base/bloc/base_bloc.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends BaseBloc<HomeEvent, HomeState> {
  HomeBloc() {
    on<GetHomeContent>((event, emit) {
      emit(HomeContentRetrievedState());
    });
  }
}
