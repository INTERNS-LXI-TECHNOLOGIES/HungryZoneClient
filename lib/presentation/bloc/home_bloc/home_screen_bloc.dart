import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'home_screen_event.dart';
part 'home_screen_state.dart';

class HomeScreenBloc extends Bloc<HomeScreenEvent, HomeScreenState> {
  HomeScreenBloc() : super(HomeScreenInitial()) {
    on<CategoryIndexEvent>((event, emit) {
      if (event.cateIndex == null) {
        emit(CateLoadingState());
      } else {
        emit(CateIndexLoaded(cateIndex: event.cateIndex));
      }
    });
  }
}
