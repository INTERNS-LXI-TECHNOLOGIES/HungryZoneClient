import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:openapi/openapi.dart';

part 'home_screen_event.dart';
part 'home_screen_state.dart';

class HomeScreenBloc extends Bloc<HomeScreenEvent, HomeScreenState> {
  HomeScreenBloc() : super(HomeScreenInitial()) {
    on<AllCategoryListEvent>((event, emit) async {
      List<CategoryDTO> allCateList = [];
      //Response<BuiltList<CategoryDTO>> allCateList =
      await Openapi()
          .getCategoryResourceApi()
          .getAllCategories()
          .then((value) => {allCateList.addAll(value.data!.asList())});
      if (allCateList.isNotEmpty) {
        emit(AllCategoryLoaded(allCateList: allCateList));
        debugPrint('category list length' + allCateList.length.toString());
      } else {
        emit(CateLoadingState());
      }
    });
  }
}
