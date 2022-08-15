import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for CartResourceApi
void main() {
  final instance = Openapi().getCartResourceApi();

  group(CartResourceApi, () {
    //Future<CartDTO> createCart(CartDTO cartDTO) async
    test('test createCart', () async {
      // TODO
    });

    //Future deleteCart(int id) async
    test('test deleteCart', () async {
      // TODO
    });

    //Future<BuiltList<CartDTO>> getAllCarts() async
    test('test getAllCarts', () async {
      // TODO
    });

    //Future<CartDTO> getCart(int id) async
    test('test getCart', () async {
      // TODO
    });

    //Future<CartDTO> partialUpdateCart(int id, CartDTO cartDTO) async
    test('test partialUpdateCart', () async {
      // TODO
    });

    //Future<CartDTO> updateCart(int id, CartDTO cartDTO) async
    test('test updateCart', () async {
      // TODO
    });

  });
}
