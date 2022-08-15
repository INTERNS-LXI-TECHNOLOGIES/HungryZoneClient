import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for CartItemResourceApi
void main() {
  final instance = Openapi().getCartItemResourceApi();

  group(CartItemResourceApi, () {
    //Future<CartItemDTO> createCartItem(CartItemDTO cartItemDTO) async
    test('test createCartItem', () async {
      // TODO
    });

    //Future deleteCartItem(int id) async
    test('test deleteCartItem', () async {
      // TODO
    });

    //Future<BuiltList<CartItemDTO>> getAllCartItems() async
    test('test getAllCartItems', () async {
      // TODO
    });

    //Future<CartItemDTO> getCartItem(int id) async
    test('test getCartItem', () async {
      // TODO
    });

    //Future<CartItemDTO> partialUpdateCartItem(int id, CartItemDTO cartItemDTO) async
    test('test partialUpdateCartItem', () async {
      // TODO
    });

    //Future<CartItemDTO> updateCartItem(int id, CartItemDTO cartItemDTO) async
    test('test updateCartItem', () async {
      // TODO
    });

  });
}
