import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:hungryzone/main.dart';
import 'package:openapi/openapi.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'home_screen_event.dart';
part 'home_screen_state.dart';

class HomeScreenBloc extends Bloc<HomeScreenEvent, HomeScreenState> {
  HomeScreenBloc() : super(HomeScreenInitial()) {
    on<AllCategoryListEvent>(_fetchCategoryList);
    on<AllFoodListEvent>(_fetchFoodList);
  }
}

_fetchFoodList(AllFoodListEvent event, Emitter<HomeScreenState> emit) async {}

_fetchCategoryList(
    AllCategoryListEvent event, Emitter<HomeScreenState> emit) async {
  List<CategoryDTO> allCateList = [];
  final sharedPreference = await SharedPreferences.getInstance();
  // const _token =
  //     "eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJ1c2VyIiwiYXV0aCI6IlJPTEVfVVNFUiIsImV4cCI6MTY3MDI1MDI2NH0.rBn5dwmEVQO8heeTbH1uH7ghWcOJa63dj_LfdFJNjfImi-G0W-LFw7CneTbcYU6xzPx6_d7ShdV5ql_7AwZF8A";

  final String bearerToken =
      sharedPreference.getString(SHARED_PREFERENCES_KEY)!;
  debugPrint('category token length => ${bearerToken.length}');
  debugPrint('token from shared preference: $bearerToken');
  //Response<BuiltList<CategoryDTO>> allCateList =
  await Openapi().getCategoryResourceApi().getAllCategories(headers: {
    'Authorization': 'Bearer $bearerToken}' //you had used _token here before
  }).then((value) => {allCateList.addAll(value.data!.asList())});
  if (allCateList.isNotEmpty) {
    emit(AllCategoryLoaded(allCateList: allCateList));
    debugPrint('category list length =>${allCateList.length}');
  } else {
    emit(CateLoadingState());
  }
}
