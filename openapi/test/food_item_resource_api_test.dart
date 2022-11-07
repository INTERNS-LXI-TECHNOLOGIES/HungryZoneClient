import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for FoodItemResourceApi
void main() {
  final instance = Openapi().getFoodItemResourceApi();

  group(FoodItemResourceApi, () {
    //Future<FoodItemDTO> createFoodItem(FoodItemDTO foodItemDTO) async
    test('test createFoodItem', () async {
      // TODO
    });

    //Future deleteFoodItem(int id) async
    test('test deleteFoodItem', () async {
      // TODO
    });

    //Future<BuiltList<FoodItemDTO>> getAllFoodItems() async
    test('test getAllFoodItems', () async {
      // TODO
    });

    //Future<FoodItemDTO> getFoodItem(int id) async
    test('test getFoodItem', () async {
      // TODO
    });

    //Future<FoodItemDTO> partialUpdateFoodItem(int id, FoodItemDTO foodItemDTO) async
    test('test partialUpdateFoodItem', () async {
      // TODO
    });

    //Future<FoodItemDTO> updateFoodItem(int id, FoodItemDTO foodItemDTO) async
    test('test updateFoodItem', () async {
      // TODO
    });

  });
}
