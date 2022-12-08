import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for OrderResourceApi
void main() {
  final instance = Openapi().getOrderResourceApi();

  group(OrderResourceApi, () {
    //Future<OrderDTO> createOrder(OrderDTO orderDTO) async
    test('test createOrder', () async {
      // TODO
    });

    //Future deleteOrder(int id) async
    test('test deleteOrder', () async {
      // TODO
    });

    //Future<BuiltList<OrderDTO>> getAllOrders() async
    test('test getAllOrders', () async {
      // TODO
    });

    //Future<OrderDTO> getOrder(int id) async
    test('test getOrder', () async {
      // TODO
    });

    //Future<OrderDTO> partialUpdateOrder(int id, OrderDTO orderDTO) async
    test('test partialUpdateOrder', () async {
      // TODO
    });

    //Future<OrderDTO> updateOrder(int id, OrderDTO orderDTO) async
    test('test updateOrder', () async {
      // TODO
    });

  });
}
