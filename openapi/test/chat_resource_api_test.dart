import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for ChatResourceApi
void main() {
  final instance = Openapi().getChatResourceApi();

  group(ChatResourceApi, () {
    //Future<ChatDTO> createChat(ChatDTO chatDTO) async
    test('test createChat', () async {
      // TODO
    });

    //Future deleteChat(int id) async
    test('test deleteChat', () async {
      // TODO
    });

    //Future<BuiltList<ChatDTO>> getAllChats({ bool eagerload }) async
    test('test getAllChats', () async {
      // TODO
    });

    //Future<ChatDTO> getChat(int id) async
    test('test getChat', () async {
      // TODO
    });

    //Future<ChatDTO> partialUpdateChat(int id, ChatDTO chatDTO) async
    test('test partialUpdateChat', () async {
      // TODO
    });

    //Future<ChatDTO> updateChat(int id, ChatDTO chatDTO) async
    test('test updateChat', () async {
      // TODO
    });

  });
}
