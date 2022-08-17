part of 'home_screen_bloc.dart';

abstract class HomeScreenEvent extends Equatable {
  const HomeScreenEvent();

  @override
  List<Object> get props => [];
}

// ignore: must_be_immutable
class CategoryIndexEvent extends HomeScreenEvent {
  int? cateIndex;
  CategoryIndexEvent({required int index}) {
    cateIndex = index;
  }
}
