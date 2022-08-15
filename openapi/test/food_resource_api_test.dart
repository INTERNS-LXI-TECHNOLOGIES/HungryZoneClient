import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for FoodResourceApi
void main() {
  final instance = Openapi().getFoodResourceApi();

  group(FoodResourceApi, () {
    //Future<FoodDTO> createFood(FoodDTO foodDTO) async
    test('test createFood', () async {
      // TODO
    });

    //Future deleteFood(int id) async
    test('test deleteFood', () async {
      // TODO
    });

    //Future<BuiltList<FoodDTO>> getAllFoods() async
    test('test getAllFoods', () async {
      // TODO
    });

    //Future<FoodDTO> getFood(int id) async
    test('test getFood', () async {
      // TODO
    });

    //Future<FoodDTO> partialUpdateFood(int id, FoodDTO foodDTO) async
    test('test partialUpdateFood', () async {
      // TODO
    });

    //Future<FoodDTO> updateFood(int id, FoodDTO foodDTO) async
    test('test updateFood', () async {
      // TODO
    });

  });
}
