part of 'home_screen_bloc.dart';

abstract class HomeScreenState extends Equatable {
  const HomeScreenState();

  @override
  List<Object> get props => [];
}

class HomeScreenInitial extends HomeScreenState {}

class CateLoadingState extends HomeScreenState {}

// ignore: must_be_immutable
class AllCategoryLoaded extends HomeScreenState {
  List<CategoryDTO>? allCateList;
  AllCategoryLoaded({required this.allCateList});
}

class CateErrorState extends HomeScreenState {
  String? error;
  CateErrorState({required this.error});
}

class FoodListLoding extends HomeScreenState {}

class FoodListLoaded extends HomeScreenState {
  List<FoodDTO> foodList = [];

  FoodListLoaded({required this.foodList});
}

class FoodListError extends HomeScreenState {
  late String error;
  FoodListError({required this.error});
}
