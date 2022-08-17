part of 'home_screen_bloc.dart';

abstract class HomeScreenState extends Equatable {
  const HomeScreenState();

  @override
  List<Object> get props => [];
}

class HomeScreenInitial extends HomeScreenState {}

class CateLoadingState extends HomeScreenState {}

// ignore: must_be_immutable
class CateIndexLoaded extends HomeScreenState {
  int? cateIndex;
  CateIndexLoaded({required this.cateIndex});
}
