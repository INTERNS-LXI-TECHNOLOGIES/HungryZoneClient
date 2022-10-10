import 'package:built_collection/built_collection.dart';
import 'package:dio/src/response.dart';
import 'package:openapi/openapi.dart';

Future<List<CategoryDTO>> cateList() async {
  List<CategoryDTO> allCateList = [];
  //Response<BuiltList<CategoryDTO>> allCateList =
  await Openapi()
      .getCategoryResourceApi()
      .getAllCategories()
      .then((value) => {allCateList.addAll(value.data!.asList())});

  return allCateList;
}
