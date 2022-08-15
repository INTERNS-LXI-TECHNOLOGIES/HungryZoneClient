import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for CategoryResourceApi
void main() {
  final instance = Openapi().getCategoryResourceApi();

  group(CategoryResourceApi, () {
    //Future<CategoryDTO> createCategory(CategoryDTO categoryDTO) async
    test('test createCategory', () async {
      // TODO
    });

    //Future deleteCategory(int id) async
    test('test deleteCategory', () async {
      // TODO
    });

    //Future<BuiltList<CategoryDTO>> getAllCategories() async
    test('test getAllCategories', () async {
      // TODO
    });

    //Future<CategoryDTO> getCategory(int id) async
    test('test getCategory', () async {
      // TODO
    });

    //Future<CategoryDTO> partialUpdateCategory(int id, CategoryDTO categoryDTO) async
    test('test partialUpdateCategory', () async {
      // TODO
    });

    //Future<CategoryDTO> updateCategory(int id, CategoryDTO categoryDTO) async
    test('test updateCategory', () async {
      // TODO
    });

  });
}
