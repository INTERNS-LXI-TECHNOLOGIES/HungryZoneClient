part of 'home_screen_bloc.dart';

abstract class HomeScreenEvent extends Equatable {
  const HomeScreenEvent();

  @override
  List<Object> get props => [];
}

// ignore: must_be_immutable
class AllCategoryListEvent extends HomeScreenEvent {
  int? cateIndex;
  AllCategoryListEvent();
}

class AllFoodListEvent extends HomeScreenEvent {
  int? cateIndex;
  AllFoodListEvent();
}
